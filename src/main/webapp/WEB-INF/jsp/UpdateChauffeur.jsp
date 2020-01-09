<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="product-payment-inner-st">
                            <ul id="myTabedu1" class="tab-review-design">
                                <li class="active"><a href="#description">Courses Details</a></li>
                                <li class=""><a href="#reviews"> Acount Information</a></li>
                                <li class=""><a href="#INFORMATION">Social Information</a></li>
                            </ul>
                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div id="dropzone1" class="pro-ad addcoursepro">
                                                <form:form method="post" modelAttribute="chauffeur" action="update-chauffeur"  class="dropzone dropzone-custom needsclick addcourse dz-clickable" id="demo1-upload" novalidate="novalidate">
                                                     
                                                        <div class="row">
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                <form:input path="CIN" type="text" class="form-control" required="required" placeholder="CIN" />
                                                                    
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                    <form:input path="nom" type="text" class="form-control" placeholder="Nom" />
                                                                </div>
                                                                <div class="form-group">
                                                                   <form:input path="prenom" type="text" class="form-control" placeholder="prenom" />
                                                                </div>
                                                                
                                                            </div>
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                            <div class="form-group res-mg-t-15">
                                                                    <form:input path="telephone" type="text" class="form-control" placeholder="telephone" />
                                                                </div>
                                                                <div class="form-group res-mg-t-15">
                                                                    <form:input path="login" type="text" class="form-control" placeholder="login" />
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                    <form:input path="etat" type="hidden"  />
                                                                </div>
                                                                <div class="sparkline12-list responsive-mg-b-30">
                            
                            <div class="sparkline12-graph">
                                <div id="pwd-container1">
                                    <div class="form-group">
                                        <label for="password1">Password</label>
                                        <form:input path="password" class="form-control example1" id="password1" placeholder="Password" />
                                    </div>
                                    <div class="form-group mg-b-pass">
                                        <div class="pwstrength_viewport_progress"><div class="progress "><div class="progress-bar progress-bar-danger" style="width: 1%;"><span class="password-verdict"></span></div></div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                                               
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="payment-adress">
                                                                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    
                                                    </form:form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-tab-list tab-pane fade" id="reviews">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="devit-card-custom">
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" placeholder="Email">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="number" class="form-control" placeholder="Phone">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="password" class="form-control" placeholder="Password">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="password" class="form-control" placeholder="Confirm Password">
                                                            </div>
                                                            <a href="#" class="btn btn-primary waves-effect waves-light">Submit</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-tab-list tab-pane fade" id="INFORMATION">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
												<div class="row">
													<div class="col-lg-12">
														<div class="devit-card-custom">
															<div class="form-group">
																<input type="url" class="form-control" placeholder="Facebook URL">
															</div>
															<div class="form-group">
																<input type="url" class="form-control" placeholder="Twitter URL">
															</div>
															<div class="form-group">
																<input type="url" class="form-control" placeholder="Google Plus">
															</div>
															<div class="form-group">
																<input type="url" class="form-control" placeholder="Linkedin URL">
															</div>
															<button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
														</div>
													</div>
												</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- jquery
		============================================ -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>

		
	
<%@ include file="common/footer.jspf"%>