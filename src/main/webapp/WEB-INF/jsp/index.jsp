<%@ include file="common/SiteClient/header.jspf"%>
<%@ include file="common/SiteClient/navigation.jspf"%>
  <div class="hero-wrap js-fullheight" style="background-image: url('img/testtest22.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate mb-5 pb-5 text-center text-md-left" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Découvrir <br></h1>
            <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Vous emmène du point de départ souhaité jusquÃ  l'aéroport</p>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section justify-content-end ftco-search">
    	<div class="container-wrap ml-auto">
    		<div class="row no-gutters">
          <div class="col-md-12 nav-link-wrap">
            <div class="nav nav-pills justify-content-center text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
              <a class="nav-link active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Réservation</a>

              <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Hotel</a>

              <a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Car Rent</a>
            </div>
          </div>
          <div class="col-md-12 tab-wrap">
            
            <div class="tab-content p-4 px-5" id="v-pills-tabContent">

              <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
              	<form action="#" class="search-destination">
              		<div class="row">
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Lieu de départ:</label>
	              				<div class="form-field">
	              					<div class="icon"><span class="icon-my_location"></span></div>
					                <input type="text" class="form-control" placeholder="From">
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Lieu d'arrivée:</label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <input type="text" class="form-control" placeholder="Where">
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Date de départ:</label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <input type="text" class="form-control checkin_date" placeholder="Check In">
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Transport:</label>
              					<div class="form-field">
	              					<div class="select-wrap">
			                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                      <select name="" id="" class="form-control">
			                      	<option value="">1</option>
			                        <option value="">2</option>
			                        <option value="">3</option>
			                        <option value="">4</option>
			                        <option value="">5</option>
			                      </select>
			                    </div>
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Distance </label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <input type="text" class="form-control checkout_date" placeholder="a calculée" disabled>
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Prix </label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <input type="text" class="form-control checkout_date" placeholder="a determinée" disabled>
					              </div>
				              </div>
              			</div>
              		
              			<div class="col-md align-self-end">
              				<div class="form-group">
              					<div class="form-field">
					                <input type="submit" value="Réserver" class="form-control btn btn-primary">
					              </div>
				              </div>  
              			</div>
              		</div>
Étapes à suivre : <br> 
<button type="button" class="btn btn-warning">1.</button> INDIQUEZ VOTRE ITINÃ‰RAIRE 
<button type="button" class="btn btn-warning">2.</button> CONSULTEZ LE PRIX ET LA DISTANCE 
<button type="button" class="btn btn-warning">3.</button> CONFIRMEZ VOTRE RÃ‰SERVATION

              	</form>
              </div>

              <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-performance-tab">
              	<form action="#" class="search-destination">
              		<div class="row">
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Check In</label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <input type="text" class="form-control checkin_date" placeholder="Check In">
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Check Out</label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <input type="text" class="form-control checkout_date" placeholder="From">
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Guest</label>
              					<div class="form-field">
	              					<div class="select-wrap">
			                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                      <select name="" id="" class="form-control">
			                      	<option value="">1</option>
			                        <option value="">2</option>
			                        <option value="">3</option>
			                        <option value="">4</option>
			                        <option value="">5</option>
			                      </select>
			                    </div>
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-self-end">
              				<div class="form-group">
              					<div class="form-field">
					                <input type="submit" value="Réserver" class="form-control btn btn-primary">
					              </div>
				              </div>
              			</div>
              		</div>
              	</form>
              </div>

              <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-effect-tab">
              	<form action="#" class="search-destination">
              		<div class="row">
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Where</label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <input type="text" class="form-control" placeholder="Where">
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Check In</label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <input type="text" class="form-control checkin_date" placeholder="Check In">
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-items-end">
              				<div class="form-group">
              					<label for="#">Check Out</label>
              					<div class="form-field">
	              					<div class="icon"><span class="icon-map-marker"></span></div>
					                <input type="text" class="form-control checkout_date" placeholder="From">
					              </div>
				              </div>
              			</div>
              			<div class="col-md align-self-end">
              				<div class="form-group">
              					<div class="form-field">
					                <input type="submit" value="Réserver" class="form-control btn btn-primary">
					              </div>
				              </div>
              			</div>
              			
              		</div>
              		
              	</form>
              </div>
            </div>
          </div>
        </div>
    	</div>
    </section>

    <section class="ftco-section bg-light">
    	<div class="container">
    	 <h2 class="mb-4">AVANTAGES</h2>
    	 <br/>
    		<div class="row">  
    			<div class="col-md-4">
    				<div class="intro ftco-animate">
    					<h3><span>01</span> Reservation Rapide</h3>
    					<p>A la place d'aller chercher un moyen de transport pour aller vers l'aeroport, le client peut facilement reserver un moyen de transport utilisant quelques cliques.</p>
    				</div>
    			</div>
    			<div class="col-md-4">
    				<div class="intro ftco-animate">
    					<h3><span>02</span> Prix raisonnables</h3>
    					<p>Les prix de la reservation sont très raisonnables, le client peut choisir le véhiculé souhaité selon ses contraintes financières et celles de confort. </p>
    				</div>
    			</div>
    			<div class="col-md-4">
    				<div class="intro ftco-animate">
    					<h3><span>03</span> Securité et Relaxation</h3>
    					<p>En plus de ça, les services sont associés Ã  la sécurité du client et au confort complet lors de son transfert de point de depart souhaité jusqu'Ã  l'aeroport. </p>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>

  
		
		<section class="ftco-about d-md-flex">
    	<div class="one-half img" style="background-image: url(img/backgrofficiel.jpg);"></div>
    	<div class="one-half ftco-animate">
        <div class="heading-section ftco-animate ">
          <h2 class="mb-4">SERVICES</h2>
           <p>En vue de simplifier l€'utilisation de nos services Ã  nos clients, nous avons mis en place un guide avec toutes les informations nécessaires pour comprendre les services proposés par notre site web. </p>
        
        </div>
        <div>
  				<p>
  				
<div class="icon"><span class="icon-map-marker"></span> Localiser les aeroports du Marrakech et Casablanca.</div>	 <br/>
<div class="icon"><span class="icon-male"></span> Donner la possibilité au client de choisir le véhicule souhaité pour le mener vers lâ€™aéroport Ã  partir dâ€™une liste des véhicules disponibles. </div>	  <br/>
<div class="icon"><span class="icon-road"></span> Donner plus de détails sur le temps dâ€™arrivé et la durée entre l'aeroport et le point de départ choisi par notre client.</div>	<br/>
<div class="icon"><span class="icon-usd"></span> Informer le client sur les prix du voyage de chaque type de véhicule pour quâ€™il puisse décider le véhicule souhaité selon les contraintes financières et celle de la comfort.</div>	
  				
  				</p>
  					</div>
    	</div>
    </section>

    
    <section class="ftco-section services-section bg-light">
    	<div class="container">
				<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h2 class="mb-4">NOS PARTENAIRES</h2>
          </div>
        </div>    		
    	</div>
    	<div class="container">
    		<div class="row">
    			<div class="col-sm col-md-6 col-lg">
    				<div class="destination">
    					<a href="#" class="img img-2" style="background-image: url(img/partenaire1.png);"></a>
    				
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2" style="background-image: url(img/partenaire2.png);"></a>
    				
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2" style="background-image: url(img/partenaire3.png);"></a>
    				
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2" style="background-image: url(img/partenaire4.png);"></a>
    				
    				</div>
    			</div>
    				<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2" style="background-image: url(img/partenaire5.jpg);"></a>
    				
    				</div>
    			</div>
    				<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2" style="background-image: url(img/partenaire6.png);"></a>
    				
    				</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(site/images/bg_1.jpg);" data-stellar-background-ratio="0.5">
    	<div class="container">
    		<div class="row justify-content-center">
    			<div class="col-md-10">
		    		<div class="row">
		    		 <div class="col-lg-1 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                
		              </div>
		            </div>
		          </div>
		          <div class="col-lg-2 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="2900">0</strong>
		                <span>Réservations</span>
		              </div>
		            </div>
		          </div>
		            <div class="col-lg-2 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="2300">0</strong>
		                <span>Nombre de clients</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-lg-2 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="2000">0</strong>
		                <span>Clients satisfés par service</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-lg-2 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="1900">0</strong>
		                <span>Clients satisfés par prix</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-lg-2 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="2300">0</strong>
		                <span>Clients satisfés par sécurité et relaxation</span>
		              </div>
		            </div>
		          </div>
		           <div class="col-lg-1 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                
		              </div>
		            </div>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>


    <section class="ftco-section services-section bg-light"> 
     <div class="text-center">
     <h2 class="mb-4"> VOS QUESTIONS & NOS REPONSES</h2>
              </div>
         
            
      <div class="col-md-7 text-center">
    	<div class="dropdown">
    		 <button class="btn btn-primary dropdown-toggle " style="width: 170% !important" type="button" data-toggle="dropdown">Question 1
  				<p> Très bonne initiative, par contre je souhaite savoir si en fin de course le chauffeur remet la facture au client ?  </p>   
			  <span class="caret"></span></button>
  				<textarea class="dropdown-menu" style="resize: none;" rows="4" cols="100%" disabled > Vous recevrez automatiquement votre facture par email après votre course.   </textarea>
		</div>
	</div>
	
    <br/>
     <div class="col-md-7 text-center">
    	<div class="dropdown">
    		 <button class="btn btn-primary dropdown-toggle" style="width: 170% !important" type="button" data-toggle="dropdown">Question 2
  				<p> Est ce qu'il y a des chauffeurs "femmes" ? Je préfère Ãªtre accompagnée par une femme   </p>   
			  <span class="caret"></span></button>
  				<textarea class="dropdown-menu" style="resize: none;" rows="4" cols="100%" disabled > Merci pour votre intérÃªt pour KechCasaAeroport "KCA". Pour l'instant, tous les chauffeurs sont des hommes, mais nous allons y réfléchir sérieusement. Nous vous tenons au courant dans les plus brefs délais.  </textarea>
		</div>
	</div>
    
    <br/>
     <div class="col-md-7 text-center">
    	<div class="dropdown"> 
    		 <button class="btn btn-primary dropdown-toggle" style="width: 170% !important" type="button" data-toggle="dropdown">Question 3
  				<p> Quelle est la gamme de voiture de luxe disponible </p>   
			  <span class="caret"></span></button>
  				<textarea class="dropdown-menu" style="resize: none;" rows="4" cols="100%" disabled >  Pour l'instant nous n'avons que des mini vans, nous aurons bientÃ´t des voitures de luxe de type Berlines.   </textarea>
		</div>
	</div>
    
    <br/>
     <div class="col-md-7 text-center">
    	<div class="dropdown">
    		 <button class="btn btn-primary dropdown-toggle" style="width: 170% !important" type="button" data-toggle="dropdown">Question 4
  				<p>  Comment devenir un chauffeur agrée?  </p>   
			  <span class="caret"></span></button>
  				<textarea class="dropdown-menu" style="resize: none;" rows="4" cols="100%" disabled > envoyer votre CV a  recrutement@KechCasaAeroport.com ,Notre équipe vous contactera en cas de nouvelles opportunités. </textarea>
		</div>
	</div>
    
    <br/>
     <div class="col-md-7 text-center">
    	<div class="dropdown">
    		 <button class="btn btn-primary dropdown-toggle" style="width: 170% !important" type="button" data-toggle="dropdown">Question 5
  				<p>  L'offre que vous proposez sur XX a 199 dh pour une navette one way : est-ce le prix par personne ou pour l'ensemble des voyageurs (nous serions 2) ? </p>   
			  <span class="caret"></span></button>
  				<textarea class="dropdown-menu" style="resize: none;" rows="4" cols="100%" disabled >  le prix est par voiture. Les mini vans peuvent prendre jusqu'Ã  6 passagers. </textarea>
		</div>
	</div>
    
    <br/>
     <div class="col-md-7 text-center">
    	<div class="dropdown">
    		 <button class="btn btn-primary dropdown-toggle" style="width: 170% !important" type="button" data-toggle="dropdown">Question 6
  				<p> J'aimerais bien me renseigner a propos des tarifs de transfert de Ain chok vers l'aéroport International Mohammed V de Casablanca </p>   
			  <span class="caret"></span></button>
  				<textarea class="dropdown-menu" style="resize: none;" rows="4" cols="100%" disabled > Vous pouvez connaitre le tarifs du transfert directement Ã  partir de notre site internet. Une fois que vous aurez indiqué votre itinéraire, le prix de la course s'affichera automatiquement. </textarea>
		</div>
	</div>
    
    <br/>
     <div class="col-md-7 text-center">
    	<div class="dropdown">
    		 <button class="btn btn-primary dropdown-toggle" style="width: 170% !important" type="button" data-toggle="dropdown">Question 7
  				<p>  Quel est le prix pour la mise Ã  disposition d'un chauffeur pour me conduire avec 2 autres Ã  marrakech le 10/01 et un retour le 13/01 ? </p>   
			  <span class="caret"></span></button>
  				<textarea class="dropdown-menu" style="resize: none;" rows="4" cols="100%" disabled > Nous vous informons que le transfert Casablanca/Marrakech (aller/retour) est de 750,00Dh par transfert.  </textarea>
		</div>
	</div>
    
    <br/>
     <div class="col-md-7 text-center">
    	<div class="dropdown">
    		 <button class="btn btn-primary dropdown-toggle" style="width: 170% !important" type="button" data-toggle="dropdown">Question 8
  				<p> J'ai seulement euros Pour payer. C'est possible?  </p>   
			  <span class="caret"></span></button>
  				<textarea class="dropdown-menu" style="resize: none;" rows="4" cols="100%" disabled > Nous acceptons les devises en règlement des courses "cash". Par ailleurs, vous pouvez régler par carte bancaire internationale si vous en disposez. </textarea>
		</div>
	</div>
    
      <br/>
     <div class="col-md-7 text-center">
    	<div class="dropdown">
    		 <button class="btn btn-primary dropdown-toggle" style="width: 170% !important" type="button" data-toggle="dropdown">Question 9
  				<p>  le service a Agadir est disponible?  </p>   
			  <span class="caret"></span></button>
  				<textarea class="dropdown-menu" style="resize: none;" rows="4" cols="100%" disabled >  Notre service est disponible sur Casablanca et Marrakech, par contre vous pouvez bien nous contacter sur reservation@KechCasaAeroport.com pour traiter au près votre besoin . </textarea>
		</div>
	</div>
    
      <br/>
     <div class="col-md-7 text-center">
    	<div class="dropdown">
    		 <button class="btn btn-primary dropdown-toggle" style="width: 170% !important" type="button" data-toggle="dropdown">Question 10
  				<p> Avez-vous des voitures pour 7 passagers ? ou plus  </p>   
			  <span class="caret"></span></button>
  				<textarea class="dropdown-menu" style="resize: none;" rows="4" cols="100%" disabled > Nous possédons des véhicules pour 6 personnes + chauffeur mais nous pouvons mettre 2 véhicules pour plus de 6 personnes. Pour plus d'informations n'hésitez pas de contacter sur notre site web KechCasaAeroport.com </textarea>
		</div>
	</div>
    
    
    
    
    </section>

    <section class="ftco-section testimony-section">  
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
            <h2 class="mb-4">Notre client satisfait dit:</h2>
              </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(SiteClient/images/person_1.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-5">Meilleur services surtout au niveau de la relaxation.</p>
                    <p class="name">Youssef Idbraim</p>
                    
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(SiteClient/images/person_2.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-5">J'ai testé les services offert par KechCasaAeroport, c'était magnifique.</p>
                    <p class="name">Adil Elmane</p>
                   
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(SiteClient/images/person_3.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-5">Moyens de transport confortables</p>
                    <p class="name">Anas Jakane</p>
                   
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(SiteClient/images/person_4.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-5">J'espère que groupe KechCasaAeroport développera le projet pour inclure le reste des villes du Maroc</p>
                    <p class="name">Hassan Hassani</p>
                    
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(SiteClient/images/person_2.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-5">Le service est impeccable</p>
                    <p class="name">Adil Elmane</p>
                   
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
<%@ include file="common/SiteClient/footer.jspf"%>