<%-- 
    Document   : Machine
    Created on : Jan 13, 2022, 4:55:12 PM
    Author     : safoi
--%>
<%@page import="beans.Marque"%>
<%@page import="service.MarqueSerice"%>
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
                                    <h4 class="card-title">Nouvelle machine</h4>

                                    <form action="MarqueController" method="POST">
                                        <input type="hidden" name="id"
                                               value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>"
                                               size="id" />
                                        <div >
                                            <label for="reference">code :</label>
                                            <input required="" type="text" name="code" class="form-control p_input" id="code" value="<%=request.getParameter("code") == null ? "" : request.getParameter("code")%>" />




                                        </div>





                                        <div >
                                            <label for="prix">Libelle :</label>
                                            <input required="" type="text" class="form-control p_input" name="libelle" id="libelle"value="<%=request.getParameter("libelle") == null ? "" : request.getParameter("libelle")%>" />




                                        </div>




                                        <button id="send" type="submit" class="btn btn-success btn-fw" value="Envoyer" /> Ajouter</button>

                                        <button  type="reset" class="btn btn-danger btn-fw"/> Annuler</button>
                                    </form>
                                    <div class="table-responsive">
                                        <table class="table align-items-center table-flush table-hover">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>CODE</th>
                                                    <th>LIBELLE</th>
                                                    <th>Supprimer</th>
                                                    <th>Modifier</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    MarqueSerice ms = new MarqueSerice();
                                                    for (Marque m : ms.findAll()) {
                                                %>
                                                <tr>
                                                    <td><%= m.getId()%></td>
                                                    <td><%= m.getCode()%></td>
                                                    <td><%= m.getLibelle()%></td>

                                                    <td><a class="btn btn-outline-warning btn-fw" href="MarqueController?id=<%=m.getId()%>&op=delete" onclick="return confirm('vous voulez vraiment supprimer cette marque')">Supprimer</a></td>
                                                    <td><a class="btn btn-outline-info btn-fw" href="MarqueController?id=<%=m.getId()%>&op=update">Modifier</a></td>
                                                </tr>
                                                <%}%>
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
    </body>
</html>
