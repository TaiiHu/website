<?php 
error_reporting(0); 
include("conn.php");
try {
    $pdo=new PDO($dsn,$dbusername,$dbpassword); 
    }
    catch (PDOException $e) 
    {
    die ('Error'. $e->getMessage());
    }
    $sql=$pdo->prepare("INSERT INTO users (id,username,password) VALUES (:id,:username,:password)");
    if($sql->execute(array(':id'=>$id,':username'=>$_GET["username"],':password'=>$_GET["password"])))
        {
            while($row = $sql->fetchAll())
                print_r($row);
        }

    var_dump($sql);
?>