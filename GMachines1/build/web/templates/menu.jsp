<%-- 
    Document   : menu
    Created on : 24 déc. 2021, 23:50:25
    Author     : OTHMANE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="wrapper">
 
    <!--Start sidebar-wrapper-->
     <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
       <div class="brand-logo">
        <a href="index.html">
         <img src="assetss/images/logo-icon.png" class="logo-icon" alt="logo icon">
         <h5 class="logo-text">Dashtreme Admin</h5>
       </a>
     </div>
     <ul class="sidebar-menu do-nicescrol">
        <li class="sidebar-header">MAIN NAVIGATION</li>
        <li>
          <a href="index.html">
            <i class="zmdi zmdi-view-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
  
        <li>
          <a href="machines.jsp">
            <i class="zmdi zmdi-invert-colors"></i> <span>Gestion des Machines</span>
          </a>
        </li>
  
        <li>
          <a href="marques.jsp">
            <i class="zmdi zmdi-format-list-bulleted"></i> <span>Gestion des Marques</span>
          </a>
        </li>
  
        <li>
            
          <a href="referenceFilter.jsp">
            <i class="zmdi zmdi-grid"></i> <span>Filter</span>
          </a>
        </li>
  
       
      </ul>
     
     </div>

