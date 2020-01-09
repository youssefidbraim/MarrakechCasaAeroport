package com.aeroport.project.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.aeroport.project.model.Todo;
import com.aeroport.project.model.chauffeur;
import com.aeroport.project.service.ChauffeurService;

import antlr.collections.List;

@Controller
public class ChauffeurController {

	private static org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger(ChauffeurController.class);
	public static String uploadDircetory = System.getProperty("user.dir")+"/src/main/resources/static/uploads/";
	
	@Autowired
	ChauffeurService chauffService;
	
	@PostMapping("/saveChauffeur")
	public String createChauffeur(@Valid chauffeur chauff,
			@RequestParam("cin") final String CIN,@RequestParam("nom") final String nom,@RequestParam("prenom") final String prenom,
			@RequestParam("telephone") final String telephone,@RequestParam("etat") final String etat,@RequestParam("file") MultipartFile file,
			@RequestParam("login") final String login,@RequestParam("password") final String password){
		
		try {
			
			String fileName = file.getOriginalFilename();
			String filePath = Paths.get(uploadDircetory,fileName).toString();
			String fileType = file.getContentType();
			long size = file.getSize();
			String fileSize = String.valueOf(size);
			
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
			
			stream.write(file.getBytes());
			stream.close();
			chauff.setCIN(CIN);
			chauff.setNom(nom);
			chauff.setPrenom(prenom);
			chauff.setTelephone(telephone);
			chauff.setEtat(etat);
			chauff.setImage(fileName);
			chauff.setFile_type(fileType);
			chauff.setFile_size(fileSize);
			chauff.setLogin(login);
			chauff.setPassword(password);
			
			boolean status = chauffService.addChauffeur(chauff);
			
		
			
			if(!status) {
				
				return "redirect:/chauffeurs";
			}
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "redirect:/chauffeurs";
		
	}
	
	@GetMapping("chauffeurs")
	public ModelAndView showAllChauffeurs() {
		ModelAndView mod = new ModelAndView("chauffeurs");
		java.util.List<chauffeur> listChauffeur = chauffService.getChauffeurs();
		mod.addObject("listChauffeur",listChauffeur);
		return mod;
	}
	
	@RequestMapping(value = "/delete-chauffeur", method = RequestMethod.GET)
	public String deleteChauffeur(@RequestParam String cin) {
		chauffService.deleteChauffeur(cin);
		
		return "redirect:/chauffeurs";
	}
	
	@RequestMapping(value = "/addChauffeur", method = RequestMethod.GET)
	public String showWelcomePage(ModelMap model) {
		model.addAttribute("chauffeur", new chauffeur());
		return "AddChauffeur";
	}
	
	@RequestMapping(value = "/update-chauffeur", method = RequestMethod.GET)
	public String showUpdateChauffeurPage(@RequestParam String cin, ModelMap model) {
		
		chauffeur ch = chauffService.getChauffeur(cin).get();
		model.put("chauffeur", ch);
		return "UpdateChauffeur";
	}

	@RequestMapping(value = "/update-chauffeur", method = RequestMethod.POST)
	public String updateChauffeur(ModelMap model, @Valid chauffeur chauffeur, BindingResult result) {

		if (result.hasErrors()) {
			
			return "UpdateChauffeur";
		}

		chauffService.updateChauffeur(chauffeur);
		return "redirect:/chauffeurs";
	}

	
	
	private String getLoggedinUserName() {
		Object principal = SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();
		
		if (principal instanceof UserDetails) {
			return ((UserDetails) principal).getUsername();
		}
		
		return principal.toString();
	}
}
