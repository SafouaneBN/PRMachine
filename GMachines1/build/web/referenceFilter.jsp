<%-- 
    Document   : Machine
    Created on : Jan 13, 2022, 4:55:12 PM
    Author     : safoi
--%>
<%@page import="beans.*"%>
<%@page import="service.*"%>
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
                    
   <div>
                                <label for="marque">Marque :</label> 
                                <select name="marque" id="marque">
                                    <%
                                        MarqueSerice ms = new MarqueSerice();
                                        for (Marque m : ms.findAll()) {
                                    %>
                                    <option value="<%=m.getId()%>"><%=m.getLibelle()%></option>
                                    <%}%>
                                </select>
                            </div>
                                    <div class="table-responsive">
 <section>
           <table border="0">
               
                   <tr>
                       <th>ID</th>
                       <th>Reference</th>
                       <th>Date Achat</th>
                       <th>Prix</th>
                   </tr>
                   
                   <%--  <%
                        for (Machine m : ms.findMachineByReference(request.getParameter("reference"))) {
                    %>
                    <tr>
                        <td><%= m.getId()%></td>
                        <td><%= m.getReference()%></td>
                        <td><%= m.getDateAchat()%></td>
                        <td><%= m.getPrix()%></td>
                    </tr>
                    <%}%>--%>
               
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
