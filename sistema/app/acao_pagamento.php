<?php
session_start();
include("includes/conecta.php");
include("includes/util.php");
conexao();

$action = $_GET['action'];
switch ($action) {

//************************************************************************************************
//		 				  	           INICIO ACTION - PARTICIPANTES
//************************************************************************************************
case "pagamento.add";
pagamento.add();
break;
case "pagamento.upd";
pagamento.upd();
break;
case "pagamento.del";
pagamento.del();
break;
//************************************************************************************************
//		 				  	             FIM ACTION - PARTICIPANTES
//************************************************************************************************
return $action;
}


//************************************************************************************************
//	  	  							     CADASTRO DE PARTICIPANTES
//************************************************************************************************

function pagamento.add(){

$id				= $_POST['participante.id'];
$evento			= $_POST['evento.id'];
$valor			= $_POST['pagamento.valor'];
$forma			= $_POST['pagamento.forma_pagamento'];
$parcela		= $_POST['pagamento.parcela'];
$obs			= $_POST['obs.parcela'];

//Recuperando o ID de participação
$qn = mysql_query("SELECT id FROM participacoes WHERE id_participante='".$id."' and id_evento='".$evento."'");
$rw = mysql_fetch_array($qn);
$participacao	= $rw["id"];

//Registrando o pagamento
$sql = "INSERT INTO pagamentos (id_participacao, valor_pago, forma_pagamento, parcela, obs, data_pagamento) VALUES ($participacao, $valor, '$forma', '$parcela', '$obs', NOW())";
$query = mysql_query($sql) or die(mysql_error());


if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO CADASTRADO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('PAGAMENTO REGISTRADO COM SUCESSO!');";
		echo "top.location.href='pagamentos.php';";
		echo "</SCRIPT>";
} 
   }

//************************************************************************************************
//	  								   UPDATE PARTICIPANTES
//************************************************************************************************

function pagamento.upd(){
$pg 			= $_POST['pg'];
$id				= $_POST['pagamento.id'];
$valor			= $_POST['pagamento.valor'];
$forma			= $_POST['pagamento.forma_pagamento'];
$parcela		= $_POST['pagamento.parcela'];
$obs			= $_POST['pagamento.obs'];

$resultado= "UPDATE pagamentos SET valor_pago=$valor, forma_pagamento='$forma', parcela='$parcela', obs='$obs' WHERE id=$id";
$query = mysql_query($resultado) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO ATUALIZADO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('PAGAMENTO ATUALIZADO COM SUCESSO');";
		echo "top.location.href='pagamentos.php?pg=$pg';";
		echo "top.location.href='interno.php';";
		echo "</SCRIPT>";
}
   }  

//************************************************************************************************
//										REMOVER PARTICIPANTES
//************************************************************************************************

function pagamento.del(){

$id 			= $_GET['id'];
$pg 			= $_GET['pg'];

//Removendo da tabela de participantes
$resultado = "DELETE FROM participantes WHERE id=$id"; 
$query = mysql_query($resultado) or die(mysql_error());

//Removendo da tabela de participações
$resultado = "DELETE FROM participacoes WHERE id_participante=$id";
$query = mysql_query($resultado) or die(mysql_error());


if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO REMOVIDO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO REMOVIDO COM SUCESSO!');";
		echo "top.location.href='participantes.php?pg=$pg';";
		echo "</SCRIPT>";
}
   }  
?>