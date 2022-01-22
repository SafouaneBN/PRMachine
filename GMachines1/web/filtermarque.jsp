<%-- 
    Document   : filtermarque
    Created on : Jan 20, 2022, 4:02:10 PM
    Author     : safoi
--%>
<%@page import="beans.*"%>
<%@page import="service.*"%>
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
                                    <div class="form">
                                        <h3>Filter Par Marque</h3>
                                        <div class="line"></div>
                                        <div>
                                            
                                            <select name="marque" class="form-control p_input" id="marque">
                                                <%                                        MarqueSerice ms = new MarqueSerice();
                                                    for (Marque m : ms.findAll()) {
                                                %>
                                                <option value="<%=m.getId()%>"><%=m.getLibelle()%></option>
                                                <%}%>
                                            </select>
                                        </div>
                                    </div>



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
