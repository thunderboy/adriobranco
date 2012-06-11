<?php
session_start();
include("includes/conecta.php");
include("includes/util.php");
conexao();

$action = $_GET['action'];
switch ($action) {

//************************************************************************************************
//		 				  	           INICIO ACTION - USUARIOS
//************************************************************************************************
case "usuario.add";
usuario.add();
break;
case "usuario.upd";
usuario.upd();
break;
case "usuario.del";
usuario.del();
break;
//************************************************************************************************
//		 				  	             FIM ACTION - USUARIOS
//************************************************************************************************
return $action;
}

//************************************************************************************************
//************************************CADASTRO DE USUARIOS****************************************
//************************************************************************************************

function usuario.add(){

$nome			= $_POST['usuario.nome'];
$login			= $_POST['usuario.login'];
$senha			= $_POST['usuario.senha'];
//$senha			= md5($_POST['usuario.senha']);
$perfil			= $_POST['usuario.perfil'];
$status			= $_POST['status'];

$sql = "INSERT INTO usuarios ( nome, email, fone, status, perfil, usuario, senha, instituicao ) 
		VALUES ('$nome', '$login', '$senha', '$perfil', '$status')";

$query = mysql_query($sql) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO CADASTRADO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('$nome - CADASTRADO COM SUCESSO!');";
		echo "top.location.href='usuarios.php';";
		echo "</SCRIPT>";
} 
   }   

//************************************************************************************************
//************************************UPDATE USUARIO**********************************************
//************************************************************************************************

function usuario.upd(){
$pg 			= $_POST['pg'];
$id				= $_SESSION['usuario.id'];
$nome			= $_POST['usuario.nome'];
$perfil			= $_POST['usuario.perfil'];
$status			= $_POST['usuario.status'];

if ($_POST['usuario.senha'] != '') {
	$senha			= $_POST['usuario.senha'];
	//$senha			= md5($_POST['usuario.senha']);

	$resultado= "UPDATE usuarios SET nome='$nome', senha='$senha', perfil='$perfil', status='$status' WHERE id=$id"; 
		} else {
	$resultado= "UPDATE usuarios SET nome='$nome', senha='$senha', perfil='$perfil', status='$status' WHERE id=$id";
		} 

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
		echo "top.location.href='usuarios.php?pg=$pg';";
		} else {
		echo "top.location.href='interno.php';";
		}
		echo "</SCRIPT>";
}
   }  

//************************************************************************************************
//************************************REMOVER USUÁRIO*********************************************
//************************************************************************************************

function usuario.del(){

$id 			= $_GET['id'];
$pg 			= $_GET['pg'];

$resultado= "DELETE FROM usuarios WHERE id=$id"; 
$query = mysql_query($resultado) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO REMOVIDO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO REMOVIDO COM SUCESSO!');";
		echo "top.location.href='usuarios.php?pg=$pg';";
		echo "</SCRIPT>";
}
   }  
?>

