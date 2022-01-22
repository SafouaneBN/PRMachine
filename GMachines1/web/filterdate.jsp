<%-- 
    Document   : filterdate
    Created on : Jan 20, 2022, 3:25:05 PM
    Author     : safoi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <div class="container-scroller">
            <%@ include file="/T/M.jsp" %>

            <div class="container-fluid page-body-wrapper">
                <%@ include file="/T/H.jsp" %>

                <div class="content-wrapper">
                    <div class="page-header">
                        <h3 class="page-title"> Form elements </h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Forms</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Ajouter machine</li>
                            </ol>
                        </nav>
                    </div>  
                    <div class="row">
                        <div class="col-12 grid-margin stretch-card">
                            <div class="card">         

                                <div class="card-body">

                                    <h3>Filterage par date</h3>
                                    <div class="line"></div>
                                    <div>
                                        <label for="dateAchat1">Premier date :</label> 
                                        <input type="date"  class="form-control p_input" name="date1" id="dateAchat1"/>
                                    </div>
                                    <div>
                                        <label for="dateAchat2">Deuxième date:</label> 
                                        <input type="date" class="form-control p_input" name="date2" id="dateAchat2"/>
                                    </div>

                                    <button id="chercher" type="button" class="btn btn-outline-warning btn-icon-text">Afficher</button>




                                    <div class="col-12 col-lg-12">
                                        <div class="table-responsive">
                                            <table  class="table align-items-center table-flush table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Référence</th>
                                                        <th>Date Achat</th>
                                                        <th>Prix</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="content">

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>  
                            </div>
                        </div>
                        <div class="main-panel">
                            <%@ include file="/T/F.jsp" %>

                        </div>
                    </div>
                </div>
                <script src="js/filterMPM.js" type="text/javascript"></script>

                </body>
                </html>
