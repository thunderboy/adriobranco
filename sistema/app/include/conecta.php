<?
function conexao() {
$host = "localhost";
$user = "root";
$pwd = "vertrigo"; 
$db = "eventos";

$link = mysql_connect($host,$user,$pwd);
if ($link && mysql_select_db($db))
	return($link) && error_reporting(E_ALL & ~ E_NOTICE & ~ E_WARNING);;
}
?>