<?php

    require '_functions.php';
    $conn = db_connect();

    // Getting user details
    $user_id = $_SESSION['user_id'];
    $sql = "SELECT * FROM users WHERE user_id = $user_id";
    $result = mysqli_query($conn, $sql);
    if($row = mysqli_fetch_assoc($result))
    {
        $user_fullname = $row["user_fullname"];
        $user_name = $row["user_name"];
    }
?>


                    <?php 
                        echo $user_name;
                    ?>
    <main id="container">
        <div id="sidebar">
            <h4><i class="fas fa-bus"></i> PO Haryanto </h4>
            <div>
                <img class="adminDp" src="../assets/img/userav-min.png" height="125px" alt="Admin Profile Pic">
                <p>
                    <?php  echo '@'.$user_name;  ?>
                </p>
                <p>Pelanggan</p>
                
            </div>
            <ul id="options">
                <li class="option <?php if($page=='route'){ echo 'active';}?>">
                    <a href="./route.php">
                    <i class="fas fa-road"></i> Rute    
                    </a>
                </li>
                
                <li class="option <?php if($page=='booking'){ echo 'active';}?>">
                    <a href="./booking.php">
                    <i class="fas fa-ticket-alt"></i> Booking
                    </a>
                </li>
                <li class="option <?php if($page=='bus'){ echo 'active';}?>">
                    <a href="./bus.php">
                    <i class="fas fa-bus"></i> Bus
                    </a>
                </li>
                <li class="option <?php if($page=='seat'){ echo 'active';}?>">
                    <a href="./seat.php">
                    <i class="fas fa-th"></i> Kursi
                    </a>
                </li>
                <li class="option <?php if($page=='seat'){ echo 'active';}?>">
                    <a href="./kode_tiket.php">
                    <i class="fas fa-th"></i> Tiket
                    </a>
                </li>
                
            </ul>
        </div>
        <div id="main-content">
            <section id="welcome">
                <ul>
                    <li class="welcome-item">Welcome, 
                        <span id="USER">
                            <?php 
                                echo $user_fullname;
                            ?>
                        </span>
                    </li>
                    <li class="welcome-item">
                        <button id="logout" class="btn-sm">
                            <a href="../assets/partials/_logout.php">LOGOUT</a>
                        </button>
                    </li>
                </ul>
            </section>