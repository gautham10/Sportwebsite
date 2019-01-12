 <?php
    $sportid = $_GET["sport"];

    $host = "127.0.0.1";
    $user = "gautham2002";                     //Your Cloud 9 username
    $pass = "";                                  //Remember, there is NO password by default!
    $db = "sports1";                                  //Your database name you want to connect to
    $port = 3306;                                //The port #. It is always 3306
                                                // And now to perform a simple query to make sure its working
    
    $connection = mysqli_connect($host, $user, $pass, $db, $port) or die("Connection failed " .mysql_error());

    $query = "SELECT * FROM sportsinfo";    
    $allsports = mysqli_query($connection, $query);

    if ($sportid) {
       $query = "SELECT * FROM sportsinfo WHERE id = " . $sportid;
       $rows = mysqli_query($connection, $query);
       $sport = mysqli_fetch_assoc($rows);
       
       if ($sport) {
           $query = "SELECT * FROM aboutplayer WHERE sportsid = " . $sportid;
           $players = mysqli_query($connection, $query);
           
           $query = "SELECT * FROM teamandstats WHERE sportsid = " . $sportid;
           $teamandstats = mysqli_query($connection, $query);
       }
    }
?>

<!DOCTYPE html>
<html>
<head>
    <style>
       body {
         background-image:
            url(<?php echo $sport['background'] ?>);
         background-size: cover;
       }
    </style>
</head>
<body>
   <h1 style="text-align: center;"><span style="color: #3366ff;"><strong>
   <?php if ($sport) {
          echo $sport['name'];
       }
   ?></strong></span></h1>
   <p style="text-align: center;"><a> </a><strong>BY: GAUTHAM AND ASHWIN</strong></a></p>
   
    <ul>
       <a href="index.html">Home</a>
       <?php while ($value = mysqli_fetch_assoc($allsports)) { ?>
       <a href="/project.php?sport=<?php echo $value['id'] ?>"><?php echo $value['name'] ?></a>
       <?php } ?>
    </ul>
    
    <?php if ($sport) { ?>
    <h2><strong>ABOUT THE SPORT</strong></h2>
    <p><span style="font-weight:700;font-size:25px;background-color:DodgerBlue;color:white"><?php echo $sport['about'] ?></span></p>
    <?php } else { ?>
    <p><span style="color: #3366ff;"><strong><img src="https://d2wkegjj8g6j4.cloudfront.net/images/categories/campaign_images/000/000/015/original/Sports.png" alt="" width="758" height="379" /></strong></span></p>
    <?php } ?>
    
    <h2><strong>TEAMS AND STATS</strong></h2>
    
    <?php while($value = mysqli_fetch_assoc($teamandstats)) { ?>    
    <p><span style="font-weight:700;font-size:20px;background-color:yellow;"><?php echo $value['entry'] ?></span></p>
    <?php } ?>

    <h2><strong>FAMOUS PLAYERS</strong></h2>
    
    <table>
    <?php while ($value = mysqli_fetch_assoc($players)) { ?>
    <tr>
        <td><a style="font-weight:700;font-size:20px;background-color:tomato;color:white;" href="/player.php?player=<?php echo $value['id'] ?>"><?php echo $value['name'] ?></a></td>
    </tr>
    <?php } ?>
  </body>
</html>
