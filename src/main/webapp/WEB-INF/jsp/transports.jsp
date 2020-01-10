<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="breadcome-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list single-page-breadcome">
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
                                            <li><a href="#">Home</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">Transports</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <div class="product-status mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-status-wrap drp-lst">
                            <h4>Transport List</h4>
                            <div class="add-product">
                                <a href="addTransport">Add Transport</a>
                            </div>
                            <div class="asset-inner">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th>Matricule</th>
                                        <th>Etat</th>
                                        <th>Image</th>
                                        <th>Marque</th>
                                        <th>Categorie</th>
                                        
                                        <th>Action</th>
                                    </tr>
                                     <c:forEach items="${listTransport}" var="trans">
                                    <tr>
                                        <td>${trans.matricule}</td>
                                        
                                        
                                        <td>
                                            <button class="pd-setting">${trans.etat}	</button>
                                        </td>
                                        
                                        <td> <img src="uploads/${trans.image}" alt="" width="80px" height="80px"></td>
                                        <td>${trans.marque}</td>
                                       
                                        <td>${trans.categorie}</td>
                                        <td>
                                            <a href="/update-transport?matricule=${trans.matricule}" data-toggle="tooltip" title="" class="pd-setting-ed" data-original-title="Edit"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                            <a href="/delete-transport?matricule=${trans.matricule}" data-toggle="tooltip" title="" class="pd-setting-ed" data-original-title="Trash" onclick="return confirm('Are you sure you want to Remove ${trans.matricule} ?');"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                        </td>
                                    </tr>
                               </c:forEach>
                                </tbody></table>
                            </div>
                            <div class="custom-pagination">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination">
                                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<%@ include file="common/footer.jspf"%>