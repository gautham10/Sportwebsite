 <?php
    $name = $_POST["sportname"];

    $host = "127.0.0.1";
    $user = "gautham2002";                     //Your Cloud 9 username
    $pass = "";                                  //Remember, there is NO password by default!
    $db = "sports1";                                  //Your database name you want to connect to
    $port = 3306;                                //The port #. It is always 3306
                                                // And now to perform a simple query to make sure its working
    
    $connection = mysqli_connect($host, $user, $pass, $db, $port) or die("Connection failed " .mysql_error());

    $query = "SELECT * FROM sportsinfo WHERE name LIKE UPPER('%" . $name . "%') LIMIT 1";    
    $rows = mysqli_query($connection, $query);

    $sport = mysqli_fetch_assoc($rows);
    
    if ($sport) {
        header('Location: ' . '/project.php?sport=' . $sport['id']);
    } else {
        echo "Not able to find anything related";
        echo "<a href='/index.html'>Home</a>";
    }
?>
