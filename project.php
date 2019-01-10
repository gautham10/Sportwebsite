 <?php
    $sportid = $_GET["sport"];
    $url = strtok($_SERVER["REQUEST_URI"],'?');
    
    $host = getenv("IP");
    $user = getenv("C9_USER");                     //Your Cloud 9 username
    $pass = "";                                  //Remember, there is NO password by default!
    $db = "sports1";                                  //Your database name you want to connect to
    $port = 3306;                                //The port #. It is always 3306
                                                // And now to perform a simple query to make sure its working
    
    $connection = mysqli_connect($host, $user, $pass, $db, $port) or die("Connection failed " .mysql_error());

    $query = "SELECT * FROM sportsinfo";    
    $rows = mysqli_query($connection, $query);

    $allsports = array();
    while ($row = mysqli_fetch_assoc($rows)) {
        array_push($allsports, $row);
    }
  
    if ($sportid) {
       $query = "SELECT * FROM sportsinfo WHERE id = " . $sportid;
       $rows = mysqli_query($connection, $query);
       $sport = mysqli_fetch_assoc($rows);
       
       $query = "SELECT * FROM aboutplayer WHERE sportsid = " . $sportid . " LIMIT 1";
       $rows = mysqli_query($connection, $query);
       $player = mysqli_fetch_assoc($rows);
       
       if ($player) {
           $query = "SELECT * FROM teamandstats WHERE playerid = " . $player['id'];
           $rows = mysqli_query($connection, $query);
           $teamandstats = array();
           while ($row = mysqli_fetch_assoc($rows)) {
               array_push($teamandstats, $row);
           }
       }
    }
?>

<!DOCTYPE html>
<html>
<head>
    <?php if ($sport) { ?>
    <style>
       body {
         background-image:
            url(<?php echo $sport['background'] ?>);
         background-size: cover;
       }
    </style>
    <?php } else { ?>
    <style> body { background-color:lightseagreen;} </style>
    <?php } ?>
</head>
<body>
   <h1 style="text-align: center;"><span style="color: #3366ff;"><strong>
   <?php if ($sport) {
          echo $sport['name'];
       } else {
           echo "SPORTS WEBSITE";
       }
   ?></strong></span></h1>
   <p style="text-align: center;"><a> </a><strong>BY: GAUTHAM AND ASHWIN</strong></a></p>
   
    <ul>
       <a href="<?php echo $url ?>">Home</a>
       <?php foreach($allsports as $value) { ?>
       <a href="<?php echo $url . '?sport=' . $value['id'] ?>"><?php echo $value['name'] ?></a>
       <?php } ?>
    </ul>
    
    <?php if ($sport) { ?>
    <h2><strong>ABOUT THE SPORT</strong></h2>
    <p><span style="font-weight: 400;background-color:white;"><?php echo $sport['about'] ?></span></p>
    <?php } else { ?>
    <p><span style="color: #3366ff;"><strong><img src="https://d2wkegjj8g6j4.cloudfront.net/images/categories/campaign_images/000/000/015/original/Sports.png" alt="" width="758" height="379" /></strong></span></p>
    <?php } ?>
    
    <?php if ($player) { ?>
    <h2><strong>FAMOUS PLAYER: <?php echo $player['name'] ?></strong></h2>
    <p><span style="font-weight: 400;background-color:white;">(align with "about the sport" and to the right side)</span></p>
    <p><span style="font-weight: 400;background-color:white;">(PLACE PICTURE OF MICHAEL JORDAN HERE)</span></p>
    <h2><strong>ABOUT FAMOUS PLAYER </strong></h2>
    <p><span style="font-weight: 400;">(align with "teams and stats" and to the right side)</span></p>
    <p><span style="font-weight: 400;background-color:white;"><?php echo $player['about'] ?></span></p>
    <p><span style="font-weight: 400;background-color:white;"><?php echo $player['careerstats'] ?></span></p>
       
    <h2><strong>TEAM AND STATS</strong></h2>
    
    <?php foreach($teamandstats as $value) { ?>    
    <p><span style="font-weight: 400;background-color:white;"><?php echo $value['entry'] ?></span></p>
    <?php } ?>
    <?php } ?>
  </body>
</html>
