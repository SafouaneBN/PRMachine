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
                                    <div class="chartjs-size-monitor">
                                        <div class="chartjs-size-monitor-expand">
                                            <div class=""></div>

                                        </div>
                                        <div class="chartjs-size-monitor-shrink">
                                            <div class=""></div>

                                        </div>
                                    </div>
                                    <h4 class="card-title">Bar chart</h4>
                                    <canvas id="barChart" style="height: 158px; display: block; width: 316px;" width="316" height="158" class="chartjs-render-monitor"></canvas>
                                </div>  
                            </div>
                        </div>
                        <div class="main-panel">
                            <%@ include file="/T/F.jsp" %>

                        </div>
                    </div>
                </div>
                <script src="js/filterMPM.js" type="text/javascript"></script>
                <script>
                            const  marque = [];
                            const machine = [];
                            $(document).ready(function(){
                    $.ajax({
                    url: "ChartController",
                            method: 'POST',
                            success: function(data) {
                            for (var i = 0; i < data.length; i++) {

                            marque.push(data[i].marque);
                                    machine.push(data[i].count);
                            }
                            machine.push(0);
                                    const ctx = document.getElementById('barChart').getContext('2d');
                                    const myChart = new Chart(ctx, {
                                    type: 'bar',
                                            data: {
                                            labels: marque,
                                                    datasets: [{
                                                    label: '# of Votes',
                                                            data: machine,
                                                            backgroundColor: [
                                                                    'rgb(60, 179, 113)',
                                                                    'rgb(255, 165, 0)',
                                                                    'rgb(255, 99, 71)',
                                                                    'rgb(75, 152, 192)',
                                                                    'rgba(153, 102, 255)',
                                                                    'rgba(255, 159, 64)'
                                                            ],
                                                            borderColor: [
                                                                    'rgba(255, 99, 132, 1)',
                                                                    'rgba(54, 162, 235, 1)',
                                                                    'rgba(255, 206, 86, 1)',
                                                                    'rgba(75, 192, 192, 1)',
                                                                    'rgba(153, 102, 255, 1)',
                                                                    'rgba(255, 159, 64, 1)'
                                                            ],
                                                            borderWidth: 1
                                                    }]
                                            },
                                            options: {
                                            scales: {
                                            y: {
                                            beginAtZero: true
                                            }
                                            }
                                            }
                                    });
                            }

                    });
                    });

                </script>

                </body>
                </html>
