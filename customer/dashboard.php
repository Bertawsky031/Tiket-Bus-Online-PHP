<!-- Show these admin pages only when the admin is logged in -->
<?php   require '../assets/partials/_admin-check.php';     ?>
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>custumer Dashboard</title>
        <!-- google fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/d8cfbe84b9.js" crossorigin="anonymous"></script>
    <!-- CSS -->
    <?php
        require '../assets/styles/admin.php';
        require '../assets/styles/dashboard.php';
        $page="dashboard";
    ?>
</head>
<body>
    <!-- Requiring the customer header files -->
    <?php require '../assets/partials/_cust-header.php';
        require '../assets/partials/_getJSON.php';

    $routeData = json_decode($routeJson);
    $seatData = json_decode($seatJson);
    $busData = json_decode($busJson);

    ?>

            <section id="dashboard">
                
                <div id="status">
            
                    <div id="Bus" class="info-box status-item">
                        <div class="heading">
                            <h5>Bus</h5>
                            <div class="info">
                                <i class="fas fa-bus"></i>
                            </div>
                        </div>
                        <div class="info-content">
                            <p>Total Bus</p>
                            <p class="num" data-target="<?php 
                                    echo count($busData);
                                ?>">
                                999
                            </p>
                        </div>
                        
                    </div>
                    <div id="Route" class="info-box status-item">
                        <div class="heading">
                            <h5>Rute</h5>
                            <div class="info">
                                <i class="fas fa-road"></i>
                            </div>
                        </div>
                        <div class="info-content">
                            <p>Total Rute</p>
                            <p class="num" data-target="<?php 
                                    echo count($routeData);
                                ?>">
                                999
                            </p>
                        </div>
                        
                    </div>
                    <div id="Seat" class="info-box status-item">
                        <div class="heading">
                            <h5>Kursi</h5>
                            <div class="info">
                                <i class="fas fa-th"></i>
                            </div>
                        </div>
                        <div class="info-content">
                            <p>Total Kursi</p>
                            <p class="num" data-target="<?php 
                                    echo 38 * count($busData);
                                ?>">
                                999
                            </p>
                        </div>
                        
                    </div>
                </div>
               
            </section>
                <footer>
                    <p>
                        <i class="far fa-copyright"></i> <?php echo date('Y');?> System Pemesanan Online Bus Po Haryanto | by Po Haryanto
                        </p>
                </footer>
        </div>
    </main>
    <script src="../assets/scripts/admin_dashboard.js"></script>
</body>
</html>