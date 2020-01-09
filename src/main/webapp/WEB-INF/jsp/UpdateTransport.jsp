<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="product-payment-inner-st">
                            <ul id="myTabedu1" class="tab-review-design">
                                <li class="active"><a href="#description">Transport Details</a></li>
                                
                            </ul>
                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div id="dropzone1" class="pro-ad addcoursepro">
                                                <form:form method="post" modelAttribute="transport" action="update-chauffeur"  class="dropzone dropzone-custom needsclick addcourse dz-clickable" id="demo1-upload" novalidate="novalidate">
                                                     
                                                        <div class="row">
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                <form:input path="Matricule" type="text" class="form-control" required="required"  />
                                                                    
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                    <form:input path="marque" type="text" class="form-control"  />
                                                                </div>
                                                                <div class="form-group">
                                                                   <form:input path="categorie" type="text" class="form-control"  />
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                   <form:input path="etat" type="text" class="form-control"  />
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
                               
                              
                            </div>
                        </div>
                        <!-- jquery
		============================================ -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>

		
	
<%@ include file="common/footer.jspf"%>