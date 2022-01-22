<%-- 
    Document   : Machine
    Created on : Jan 13, 2022, 4:55:12 PM
    Author     : safoi
--%>
<%@page import="java.util.List"%>
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
                                    <h4 class="card-title">Filter machine</h4>

                                    <section>
                                        <form action="referFilterController" method="POST">
                                            <label>Marque :</label>
                                            <select name="reference" >
                                                <%    MachineService ms = new MachineService();
                                                    for (String r : ms.findReference()) {
                                                %>
                                                <option value="<%= r%>"><%= r%></option>
                                                <%}%>
                                            </select>
                                            <button type="submit">Load</button>
                                        </form>
                                    </section>
                                    <section>
                                        <div class="col-12 col-lg-12">
                                            <div class="table-responsive">
                                                <table class="table align-items-center table-flush table-hover">
                                                    <thead>


                                                        <tr>
                                                            <th>ID</th>
                                                            <th>Reference</th>
                                                            <th>Date Achat</th>
                                                            <th>Prix</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="content">

                                                        <%
                                                            for (Machine m : ms.findMachineByReference(request.getParameter("reference"))) {
                                                        %>
                                                        <tr>
                                                            <td><%= m.getId()%></td>
                                                            <td><%= m.getReference()%></td>
                                                            <td><%= m.getDateAchat()%></td>
                                                            <td><%= m.getPrix()%></td>
                                                        </tr>
                                                        <%}%>

                                                </table>



                                                </section>
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

