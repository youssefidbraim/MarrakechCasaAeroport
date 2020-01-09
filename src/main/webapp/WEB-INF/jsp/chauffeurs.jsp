<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="breadcome-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcome-heading">
                                            <form role="search" class="sr-input-func">
                                                <input type="text" placeholder="Search..." class="search-int form-control">
                                                <a href="#"><i class="fa fa-search"></i></a>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <ul class="breadcome-menu">
                                            <li><a href="addChauffeur" type="button" class="btn btn-primary">
                                            <i class="fa fa-check edu-checked-pro" aria-hidden="true"></i> Add </a>
                                            </li>
                                           
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<div class="contacts-area mg-b-15">
            <div class="container-fluid">
                <div class="row">
               
                <c:forEach items="${listChauffeur}" var="chauff">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="student-inner-std res-mg-b-30">
                            <div class="student-img">
                                <img src="uploads/${chauff.image}" alt="" width="80px" height="80px">
                            </div>
                            <div class="student-dtl">
                                <h2>${chauff.nom}</h2>
                                <h3>${chauff.prenom}</h3>
                                <p class="dp">${chauff.telephone}</p>
                                <p class="dp-ag"><b>Etat :</b> ${chauff.etat}</p>
                            </div>
                            
                              <div class="btn-group btn-custom-groups btn-custom-groups-one">
                                  
                                    <a href="/update-chauffeur?cin=${chauff.CIN}" type="button" class="btn btn-primary"><i class="fa fa-check edu-checked-pro" aria-hidden="true"></i></a>
                                    
                                    <a href="/delete-chauffeur?cin=${chauff.CIN}" type="button" class="btn btn-primary" onclick="return confirm('Are you sure you want to Remove ${chauff.nom} ?');"><i class="fa fa-times edu-danger-error" aria-hidden="true"></i></a>
                                
                            </div>
                        </div>
                    </div>
                   </c:forEach>
                </div>
                
            </div>
        </div>
<%@ include file="common/footer.jspf"%>