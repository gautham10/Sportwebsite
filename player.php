 <?php
    $playerid = $_GET["player"];

    $host = "127.0.0.1";
    $user = "gautham2002";                     //Your Cloud 9 username
    $pass = "";                                  //Remember, there is NO password by default!
    $db = "sports1";                                  //Your database name you want to connect to
    $port = 3306;                                //The port #. It is always 3306
                                                // And now to perform a simple query to make sure its working
    
    $connection = mysqli_connect($host, $user, $pass, $db, $port) or die("Connection failed " .mysql_error());

    $query = "SELECT * FROM sportsinfo";    
    $allsports = mysqli_query($connection, $query);

    if ($playerid) {
       $query = "SELECT * FROM aboutplayer WHERE id = " . $playerid;
       $rows = mysqli_query($connection, $query);
       $player = mysqli_fetch_assoc($rows);
    }
?>

<!DOCTYPE html>
<html>
<head>
    <style>
body {
  background-color: lightblue;
}
</style>
</head>
<body>
    <ul>
       <a href="index.html">Home</a>
       <?php while ($value = mysqli_fetch_assoc($allsports)) { ?>
       <a href="/project.php?sport=<?php echo $value['id'] ?>"><?php echo $value['name'] ?></a>
       <?php } ?>
    </ul>
    
    <?php if ($player) { ?>
    
    <h2><strong>FAMOUS PLAYER: <?php echo $player['name'] ?></strong></h2>
    <table>
        <tr>
            <td>
                <img src="<?php echo $player['picture'] ?>" height=500 width=400/>
            </td>
            <td>
                <p><span style="font-weight:700;font-size: 30px;background-color:lightblue;"><?php echo $player['about'] ?></span></p>
                <p><span style="font-weight:700;font-size: 30px;background-color:lightblue;"><?php echo $player['careerstats'] ?></span></p>
                <?php } ?>
            </td>
        </tr>
    </table>
  </body>
</html>
