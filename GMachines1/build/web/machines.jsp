<%-- 
    Document   : Machine
    Created on : Jan 13, 2022, 4:55:12 PM
    Author     : safoi
--%>
<%@page import="beans.Marque"%>
<%@page import="service.MarqueSerice"%>
<%@page import="beans.Machine"%>
<%@page import="service.MachineService"%>
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

                                    <form action="MachineController" method="POST">
                                        <input type="hidden" name="id"
                                               value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>"
                                               size="id" />
                                        <div >
                                            <label for="reference">Référence :</label> 
                                            <input required="" type="text" class="form-control p_input" name="reference" id="reference" value="<%=request.getParameter("reference") == null ? "" : request.getParameter("reference")%>" />


                                        </div>

                                        <div >
                                            <label for="dateAchat">Date Achat :</label> 
                                            <input required=""  type="date"  class="form-control p_input" name="dateAchat" id="dateAchat" alue="<%=request.getParameter("dateAchat") == null ? "" : request.getParameter("dateAchat")%>" />


                                        </div>

                                        <div>
                                            <label for="prix">Prix :</label> 
                                            <input required="" type="text" class="form-control p_input" name="prix" id="prix"value="<%=request.getParameter("prix") == null ? "" : request.getParameter("prix")%>" />


                                        </div>
                                        <div>
                                            <label for="marque">Marque :</label> 
                                            <select name="marque" id="marque"  class="form-control p_input" value="<%=request.getParameter("marque") == null ? "" : request.getParameter("marque")%>">
                                                <%
                                                    MarqueSerice mar = new MarqueSerice();
                                                    for (Marque m : mar.findAll()) {
                                                %>
                                                <option value="<%=m.getId()%>"><%=m.getLibelle()%></option>
                                                <%}%>
                                            </select>
                                        </div>

                                        <br>
                                        <button id="send" type="submit" class="btn btn-success btn-fw" value="Envoyer" /> Ajouter</button>

                                        <button  type="reset"  style="right:0" class="btn btn-danger btn-fw"/> Annuler</button>

                                    </form>
                                    <br>
                                    <div class="table-responsive">
                                        <h4 class="card-title">List machine</h4>
                                        <table  class="table align-items-center table-flush table-hover">
                                            <thead>
                                                <tr>

                                                    <th>Référence</th>
                                                    <th>Date Achat</th>
                                                    <th>Marque</th>
                                                    <th>Prix</th>
                                                    <th>Supprimer</th>
                                                    <th>Modifier</th>
                                                </tr>
                                            </thead>
                                            <tbody id="content">
                                                <%
                                                    MachineService ms = new MachineService();
                                                    for (Machine m : ms.findAll()) {
                                                %>
                                                <tr>

                                                    <td><%= m.getReference()%></td>
                                                    <td><%= m.getDateAchat()%></td>
                                                    <td><%=m.getMarque().getLibelle()%></td>
                                                    <td><%= m.getPrix()%></td>
                                                    <td><a class="btn btn-outline-warning btn-fw" href="MachineController?id=<%=m.getId()%>&op=delete" onclick="return confirm('vous voulez vraiment supprimer cette machine')">Supprimer</a></td>
                                                    <td><a class="btn btn-outline-info btn-fw" href="MachineController?id=<%=m.getId()%>&op=update">Modifier</a></td>
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
