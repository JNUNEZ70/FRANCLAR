
<?php
echo gethostname()."<br>";
$host = gethostbyaddr($_SERVER["REMOTE_ADDR"]);
echo $host."<br>";
$ip = gethostbyname("www.w3schools.com");
echo $ip."<br>";
$hostlist = gethostbynamel("www.w3schools.com");
print_r($hostlist);
echo "<br>";
$protocolnum = getprotobyname("tcp");
echo $protocolnum."<br>";
?>

