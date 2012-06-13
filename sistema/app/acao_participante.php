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
case "participante.add";
participante.add();
break;
case "participante.upd";
participante.upd();
break;
case "participante.del";
participante.del();
break;
//************************************************************************************************
//		 				  	             FIM ACTION - PARTICIPANTES
//************************************************************************************************
return $action;
}


//************************************************************************************************
//	  	  							     CADASTRO DE PARTICIPANTES
//************************************************************************************************

function participante.add(){

$nome			= $_POST['participante.nome'];
$nome_cracha	= $_POST['participante.nome_cracha'];
$nascimento		= convertDataMysql($_POST['participante.nascimento']);
$cidade			= $_POST['participante.cidade'];
$uf				= $_POST['participante.uf'];
$telefone		= $_POST['participante.telefone'];
$celular		= $_POST['participante.celular'];
$email			= $_POST['participante.email'];
$cpf 			= limparMascara("cpf",$_POST['participante.cpf']);
$regional		= $_POST['participante.regional'];
$status			= $_POST['participante.status'];
$evento			= $_POST['evento.id'];

//Inserindo na tabela participantes
$sql = "INSERT INTO participantes
		(nome, nome_cracha, nascimento, cidade, uf, telefone, celular, email, cpf, regional, status) 
		VALUES ('$nome', '$nome_cracha', '$nascimento', '$cidade', '$uf', '$telefone', '$celular', '$email', '$cpf', '$regional', '$status')";
$query = mysql_query($sql) or die(mysql_error());


//************************************TABELA PARTICIPACOES - INICIO*******************************

//Recuperando o ultimo_ID e somando para 1.
$q = "SELECT LAST_INSERT_ID() FROM participantes";
$proximo_id = mysql_query($q) + 1 or die(mysql_error());
//$proximo_id = mysql_query("select last_insert_id()") + 1 or die(mysql_error());

//Inserindo na tabela participacoes
$sql = "INSERT INTO participacoes (id_participante, id_evento) VALUES ('$proximo_id', '$evento')";
$query = mysql_query($sql) or die(mysql_error());

//************************************TABELA PARTICIPACOES - FIM**********************************


if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO CADASTRADO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('$nome - CADASTRADO COM SUCESSO!');";
		echo "top.location.href='participantes.php';";
		echo "</SCRIPT>";
} 
   }

//************************************************************************************************
//	  								   UPDATE PARTICIPANTES
//************************************************************************************************

function participante.upd(){
$pg 			= $_POST['pg'];
$id				= $_POST['participante.id'];
$nome			= $_POST['participante.nome'];
$nome_cracha	= $_POST['participante.nome_cracha'];
$nascimento		= convertDataMysql($_POST['participante.nascimento']);
$cidade			= $_POST['participante.cidade'];
$uf				= $_POST['participante.uf'];
$telefone		= $_POST['participante.telefone'];
$celular		= $_POST['participante.celular'];
$email			= $_POST['participante.email'];
$cpf 			= limparMascara("cpf",$_POST['participante.cpf']);
$regional		= $_POST['participante.regional'];
$status			= $_POST['participante.status'];

$resultado= "UPDATE participantes SET
			 nome='$nome', nome_cracha='$nome_cracha', nascimento='$nascimento', cidade='$cidade', uf='$uf',
			 telefone='$telefone', celular='$celular', email='$email', cpf='$cpf', regional='$regional',
			 status='$status' WHERE id=$id";

$query = mysql_query($resultado) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO ATUALIZADO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('ATUALIZADO COM SUCESSO');";

		if ($_SESSION['perfil'] == 'adm') {
		echo "top.location.href='participantes.php?pg=$pg';";
		} else {
		echo "top.location.href='interno.php';";
		}
		echo "</SCRIPT>";
}
   }  

//************************************************************************************************
//										REMOVER PARTICIPANTES
//************************************************************************************************

function participante.del(){

$id 			= $_GET['id'];
$pg 			= $_GET['pg'];
$evento			= $_GET['evento.id'];

//Recuperando o ID de participação
$qn = mysql_query("SELECT id FROM participacoes WHERE id_participante='".$id."' and id_evento='".$evento."'");
$rw = mysql_fetch_array($qn);
$participacao	= $rw["id"];

//Removendo da tabela de participantes
$resultado = "DELETE FROM participantes WHERE id=$id"; 
$query = mysql_query($resultado) or die(mysql_error());

//Removendo da tabela de pagamentos
$resultado = "DELETE FROM pagamentos WHERE id_participacao=$participacao";
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