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

import com.aeroport.project.model.Transport;
import com.aeroport.project.model.chauffeur;
import com.aeroport.project.service.TransportService;



@Controller
public class TransportController {

	private static org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger(ChauffeurController.class);
	public static String uploadDircetory = System.getProperty("user.dir")+"/src/main/resources/static/uploads/";
	
	@Autowired
	TransportService TranService;
	
	@PostMapping("/saveTransport")
	public String createChauffeur(@Valid Transport trans,
			@RequestParam("matricule") final String matricule,@RequestParam("marque") final String marque,@RequestParam("categorie") final String categorie,
			@RequestParam("etat") final String etat,@RequestParam("file") MultipartFile file){
		
		try {
			
			String fileName = file.getOriginalFilename();
			String filePath = Paths.get(uploadDircetory,fileName).toString();
			String fileType = file.getContentType();
			long size = file.getSize();
			String fileSize = String.valueOf(size);
			
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
			
			stream.write(file.getBytes());
			stream.close();
			trans.setMatricule(matricule);
			trans.setMarque(marque);
			trans.setCategorie(categorie);
			trans.setEtat(etat);
			trans.setImage(fileName);
			trans.setFile_type(fileType);
			trans.setFile_size(fileSize);
			
			
			boolean status = TranService.addTransport(trans);

			if(!status) {
				
				return "redirect:/transports";
			}
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "redirect:/transports";
		
	}
	
	@GetMapping("transports")
	public ModelAndView showAllTransport() {
		ModelAndView mod = new ModelAndView("transports");
		java.util.List<Transport> listTransport =TranService.getTransport();
		mod.addObject("listTransport",listTransport);
		return mod;
	}
	
	@RequestMapping(value = "/delete-transport", method = RequestMethod.GET)
	public String deleteTransport(@RequestParam String matricule) {
		TranService.deleteTransport(matricule);
		
		return "redirect:/transports";
	}
	
	@RequestMapping(value = "/addTransport", method = RequestMethod.GET)
	public String showAddTransportPage(ModelMap model) {
		model.addAttribute("transport", new Transport());
		return "AddTransport";
	}
	
	@RequestMapping(value = "/update-transport", method = RequestMethod.GET)
	public String showUpdateTransportPage(@RequestParam String matricule, ModelMap model) {
		
		Transport trans = TranService.getTransport(matricule).get();
		model.put("transport", trans);
		return "UpdateTransport";
	}

	@RequestMapping(value = "/update-transport", method = RequestMethod.POST)
	public String updateTransport(ModelMap model, @Valid Transport transport, BindingResult result) {

		if (result.hasErrors()) {
			
			return "UpdateTransport";
		}

		TranService.updateTransport(transport);
		return "redirect:/transports";
	}

	
	
}
