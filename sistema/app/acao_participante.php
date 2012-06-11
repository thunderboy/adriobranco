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
//		 				  	             FIM ACTION - USUARIOS
//************************************************************************************************



//************************************************************************************************
//				  	            INICIO ACTION - CONFIGURACOES DO SISTEMA
//************************************************************************************************
case "updateInstituicao";
updateInstituicao();
break;
case "updateEmpreendedor";
updateEmpreendedor();
break;
case "sair";
sair();
//************************************************************************************************
//	   		                      FIM ACTION - CONFIGURACOES DO SISTEMA
//************************************************************************************************



//************************************************************************************************
//				  	                INICIO ACTION - EMPREENDIMENTO
//************************************************************************************************
case "updateEmpreendimento";
updateEmpreendimento();
break;
case "deleteEmpreendimento";
deleteEmpreendimento();
break;
//************************************************************************************************
//	   		                         FIM ACTION - EMPREENDIMENTO
//************************************************************************************************



//************************************************************************************************
//				  	                INICIO ACTION - UPLOAD DE ARQUIVOS
//************************************************************************************************
case "upload";
upload();
break;
case "upload_update";
upload_update();
break;
case "deleteArquivo";
deleteArquivo();
break;
//************************************************************************************************
//	   		                         FIM ACTION - UPLOAD DE ARQUIVOS
//************************************************************************************************



//************************************************************************************************
//				  	                    INICIO ACTION - DOCUMENTOS
//************************************************************************************************
case "GeraDocumento";
GeraDocumento();
break;
//************************************************************************************************
//	   		                              FIM ACTION - DOCUMENTOS
//************************************************************************************************


//************************************************************************************************
//	   		                              FIM ACTION - DOCUMENTOS
//************************************************************************************************

return $action;
}


//************************************************************************************************
//************************************CADASTRO DE USUARIOS****************************************
//************************************************************************************************

function participante.add(){

$nome			= $_POST['participante.nome'];
$nome_cracha	= $_POST['participante.nome_cracha'];
$nascimento		= convertDataMysql($_POST['participante.nascimento']);
$cidade			= $_POST['participante.cidade'];
$uf				= $_POST['participante.uf'];
$telefone		= $_POST['participante.telefone'];
$celular		= $_POST['participante.celular'];
$email			= $_POST['email'];
$cpf 			= limparMascara("cpf",$_POST['participante.cpf']);
$status			= $_POST['status'];
$perfil			= $_POST['perfil'];
$usuario		= $_POST['usuario'];
$senha			= md5($_POST['senha']);
$instituicao	= $_POST['instituicao'];

$sql = "INSERT INTO usuarios (nome, email, fone, status, perfil, usuario, senha, instituicao) VALUES ('$nome', '$email', '$fone', '$status', '$perfil', '$usuario', '$senha', '$instituicao')";

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

function updateUsuario(){
$pg 			= $_POST['pg'];
$id				= $_POST['id'];
$nome			= $_POST['nome'];
$email			= $_POST['email'];
$fone			= $_POST['fone'];
$status			= $_POST['status'];
$perfil			= $_POST['perfil'];
$usuario		= $_POST['usuario'];
//$senha			= md5($_POST['senha']);
$instituicao	= $_POST['instituicao'];

if ($_POST['senha'] != '') {
$senha			= md5($_POST['senha']);
$resultado= "UPDATE usuarios SET nome='$nome', email='$email', fone='$fone', status='$status', senha='$senha', perfil='$perfil', instituicao='$instituicao' WHERE idusuario=$id";
	} else {
$resultado= "UPDATE usuarios SET nome='$nome', email='$email', fone='$fone', status='$status', perfil='$perfil', instituicao='$instituicao' WHERE idusuario=$id";
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

		if ($_SESSION['perfil'] == 'Administrador') {
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

function DeleteUsuario(){

$id 			= $_GET['id'];
$pg 			= $_GET['pg'];

$resultado= "DELETE FROM usuarios WHERE idusuario=$id"; 
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


//************************************************************************************************
//************************************UPDATE DE EMPREENDEDOR**************************************
//************************************************************************************************


function updateEmpreendedor(){

$id 				= $_POST['id'];
$nome				= $_POST['nome'];
$apelido			= $_POST['apelido'];
$cnpj				= $_POST['cnpj'];
$icms				= $_POST['icms'];
$cpf				= $_POST['cpf'];
$rg					= $_POST['rg'];
$endereco			= $_POST['endereco'];
$localizacao		= $_POST['localizacao'];
$fone				= $_POST['fone'];
$fax				= $_POST['fax'];
$celular			= $_POST['celular'];
$bairro				= $_POST['bairro'];
$uf					= 'AC';
$municipio			= $_POST['municipio'];
$cep				= $_POST['cep'];
$email				= $_POST['email'];
$nome_rep			= $_POST['nome_rep'];
$cargo				= $_POST['cargo'];
$cpf_rep			= $_POST['cpf_rep'];
$rg_rep				= $_POST['rg_rep'];
$endereco_rep		= $_POST['endereco_rep'];
$localizacao_rep	= $_POST['localizacao_rep'];
$bairro_rep			= $_POST['bairro_rep'];
$uf_rep				= 'AC';
$municipio_rep		= $_POST['municipio_rep'];
$fone_rep			= $_POST['fone_rep'];
$fax_rep			= $_POST['fax_rep'];
$email_rep			= $_POST['email_rep'];
$pg 				=  $_POST['pg'];


$resultado= "UPDATE empreendedor SET nome='$nome', apelido='$apelido', cnpj='$cnpj', icms='$icms', cpf='$cpf', rg='$rg', endereco='$endereco', localizacao='$localizacao', fone='$fone', fax='$fax', celular='$celular', bairro='$bairro', cnpj='$cnpj', uf='$uf', municipio='$municipio', cep='$cep', email='$email', nome_rep='$nome_rep', cargo='$cargo', cpf_rep='$cpf_rep', rg_rep='$rg_rep', endereco_rep='$endereco_rep', localizacao_rep='$localizacao_rep', bairro_rep='$bairro_rep', uf_rep='$uf_rep', municipio_rep='$municipio_rep', fone_rep='$fone_rep', fax_rep='$fax_rep', email_rep='$email_rep' WHERE idempreendedor=$id"; 
$query = mysql_query($resultado) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO ATUALIZADO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('ATUALIZADO COM SUCESSO');";
		echo "top.location.href='empreendedor.php?pg=$pg';";
		echo "</SCRIPT>";
}
   }  

//************************************************************************************************
//************************************CADASTRO EMPREENDIMENTO*************************************
//************************************************************************************************

function cadEmpreendimento(){
$atividade			= $_POST['atividade'];
$porte				= $_POST['porte'];
$nome				= $_POST['nome'];
$icms				= $_POST['icms'];
$cnpj				= $_POST['cnpj'];
$endereco			= $_POST['endereco'];
$localizacao		= $_POST['localizacao'];
$uf					= 'AC';
$municipio			= $_POST['municipio'];
$bairro				= $_POST['bairro'];
$fone				= $_POST['fone'];
$fax				= $_POST['fax'];
$celular			= $_POST['celular'];
$email				= $_POST['email'];
$lote				= $_POST['lote'];
$ramal				= $_POST['ramal'];
$area				= $_POST['area'];
$matricula			= $_POST['matricula'];
$sipra  			= $_POST['sipra'];
$status  			= $_POST['status'];
$familias  			= $_POST['familias'];

$sql = "INSERT INTO empreendimento (atividade, porte, nome, icms, cnpj, endereco, localizacao, uf, municipio, bairro, fone, fax, celular, email, lote, ramal, area, matricula, sipra, familias, status) VALUES ('$atividade', '$porte', '$nome', '$icms', '$cnpj', '$endereco', '$localizacao', '$uf', '$municipio', '$bairro', '$fone', '$fax', '$celular', '$email', '$lote', '$ramal', '$area', '$matricula', '$sipra', '$familias', '$status')";
$query = mysql_query($sql) or die(mysql_error());

$sql_id = "SELECT idempreendimento FROM empreendimento WHERE idempreendimento = LAST_INSERT_ID()";
$exec = mysql_query($sql_id) or die(mysql_error());
$res = mysql_fetch_row($exec); 
$ultimo_id = $res[0];

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO CADASTRADO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO INSERIDO COM SUCESSO- $ultimo_id');";
		echo "top.location.href='empreendimento.php';";
		echo "</SCRIPT>";
}
   }   

//************************************************************************************************
//************************************UPDATE EMPREENIMENTO****************************************
//************************************************************************************************

function updateEmpreendimento(){

$id 			= $_POST['id'];
$atividade		= $_POST['atividade'];
$porte			= $_POST['porte'];
$nome			= $_POST['nome'];
$icms			= $_POST['icms'];
$cnpj			= $_POST['cnpj'];
$endereco		= $_POST['endereco'];
$localizacao	= $_POST['localizacao'];
$uf				= 'AC';
$municipio		= $_POST['municipio'];
$bairro			= $_POST['bairro'];
$fone			= $_POST['fone'];
$fax			= $_POST['fax'];
$celular		= $_POST['celular'];
$email			= $_POST['email'];
$lote			= $_POST['lote'];
$ramal			= $_POST['ramal'];
$area			= $_POST['area'];
$matricula		= $_POST['matricula'];
$sipra			= $_POST['sipra'];
$familias		= $_POST['familias'];
$status			= $_POST['status'];
$pg 			=  $_POST['pg'];

$resultado= "UPDATE empreendimento SET atividade='$atividade', porte='$porte', nome='$nome', icms='$icms', cnpj='$cnpj', endereco='$endereco', localizacao='$localizacao', uf='$uf', municipio='$municipio', bairro='$bairro', fone='$fone', fax='$fax', celular='$celular', email='$email', lote='$lote', ramal='$ramal', area='$area', matricula='$matricula', sipra='$sipra', familias='$familias', status='$status' WHERE idempreendimento=$id"; 
$query = mysql_query($resultado) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO ATUALIZADO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('ATUALIZADO COM SUCESSO');";
		echo "top.location.href='convenios/faq.php';";
		echo "top.location.href='empreendimento.php?pg=$pg';";		
		echo "</SCRIPT>";
}
   }  

//************************************************************************************************
//************************************DELETE EMPREENDIMENTO***************************************
//************************************************************************************************

function deleteEmpreendimento(){

$id 			= $_GET['id'];
$pg 			= $_GET['pg'];

$resultado= "DELETE FROM empreendimento WHERE idempreendimento=$id"; 
$query = mysql_query($resultado) or die(mysql_error());

$files= "DELETE FROM arquivos WHERE idempreendimento=$id"; 
$query_files = mysql_query($files); 

$dcumento= "DELETE FROM documentos WHERE idempreendimento=$id"; 
$query_documento = mysql_query($documento); 

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO REMOVIDO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO REMOVIDO COM SUCESSO!');";
		echo "top.location.href='empreendimento.php?pg=$pg';";
		echo "</SCRIPT>";
}
   } 


//************************************************************************************************
//************************************UPLOAD DE ARQUIVOS***************************************
//************************************************************************************************

function upload(){

$idempreendimento	= $_REQUEST['idempreendimento'];
$arquivo = $_REQUEST['arquivo'];

if ($arquivo != "") {

$novo = $idempreendimento.'-'.$arquivo;
$remove_id = substr($novo, strripos($novo,'-')+strlen('-'));

$arquivo = $remove_id;
$novo_nome = $idempreendimento.'-'.$arquivo;

copy ($_SESSION['diretorio'].$arquivo,$_SESSION['diretorio'].$novo_nome);
unlink($_SESSION['diretorio'].$arquivo);
//rename ($_SESSION['diretorio'].$arquivo,$_SESSION['diretorio'].$novo_nome);

$arquivo = $novo_nome;

$_SESSION['nome_arquivo'] = $arquivo;
$_SESSION['tipo_arquivo'] = filetype($_SESSION['diretorio'].$arquivo);
$_SESSION['tamanho_arquivo'] = filesize($_SESSION['diretorio'].$arquivo);
}


if ($_POST["nome"] == "") { 
$nome				= $_SESSION['nome_arquivo']; 
} else { 
$nome				= $_POST["nome"]; 
}

$tipodoc			= $_POST["tipodoc"]; 
$tipolicenca		= $_POST["tipolicenca"]; 
$numero				= $_POST["numero"]; 
$dtemissao			= convertDataMysql($_POST['dtemissao']);
$dtvalidade			= convertDataMysql($_POST['dtvalidade']);
$dtinserido			= date("Y-m-d:H:i:s", time());
$arquivo			= $_SESSION['nome_arquivo']; 
$tipoarquivo		= $_SESSION['tipo_arquivo'];
$tamanho			= $_SESSION['tamanho_arquivo'];
$usuario			= $_POST['usuario'];

$sql = "INSERT INTO arquivos (idempreendimento, nome, tipodoc, tipolicenca, numero, dtemissao, dtvalidade, dtinserido, arquivo, tipoarquivo, tamanho, usuario) VALUES ('$idempreendimento', '$nome', '$tipodoc', '$tipolicenca', '$numero', '$dtemissao', '$dtvalidade', '$dtinserido', '$arquivo', '$tipoarquivo', '$tamanho', '$usuario')";
$query = mysql_query($sql) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('Nao cadastrado');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('Cadastrado com Sucesso');";
		echo "window.location.replace('empreendimentoUpload.php?key=$idempreendimento');";
		echo "</SCRIPT>";
		} 
}

	
//************************************************************************************************
//************************************UPDATE DE ARQUIVOS******************************************
//************************************************************************************************

function upload_update(){

$idempreendimento	= $_REQUEST['idempreendimento'];
$idarquivo 			= $_REQUEST['idarquivo'];
$nome				= $_POST["nome"];
$tipodoc			= $_POST["tipodoc"]; 
$tipolicenca		= $_POST["tipolicenca"]; 
$numero				= $_POST["numero"]; 
$dtemissao			= convertDataMysql($_POST['dtemissao']);
$dtvalidade			= convertDataMysql($_POST['dtvalidade']);

$sql = "UPDATE arquivos SET nome='$nome', tipodoc='$tipodoc', tipolicenca='$tipolicenca', numero='$numero', dtemissao='$dtemissao', dtvalidade='$dtvalidade' WHERE idempreendimento=$idempreendimento and idarquivo=$idarquivo";
$query = mysql_query($sql) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('NAO ATUALIZADO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('ATUALIZADO COM SUCESSO!');";
		echo "window.location.replace('empreendimentoUpload.php?key=$idempreendimento');";
		echo "</SCRIPT>";
		} 
}


//************************************************************************************************
//************************************DELETE ARQUIVOS*********************************************
//************************************************************************************************

function deleteArquivo(){

$key 			= $_GET['key'];
$id 			= $_GET['id'];
$pg 			= $_GET['pg'];
$nome 			= $_GET['nome'];
$grid			= $_GET['grid'];

if($grid == 'arquivo') {
$resultado= "DELETE FROM arquivos WHERE idarquivo=$id"; 
$query = mysql_query($resultado) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO REMOVIDO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO REMOVIDO COM SUCESSO!');";
//		echo "top.location.href='empreendimentoUpload.php?pg=$pg&key=$key';";
		echo "window.location.replace('empreendimentoGeraDocumento.php?pg=$pg&id=$key&#tabs-2');";		
		echo "</SCRIPT>";
}

} elseif ($grid == 'arquivo_view') { 

$resultado= "DELETE FROM arquivos WHERE idarquivo=$id"; 
$query = mysql_query($resultado) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO REMOVIDO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO REMOVIDO COM SUCESSO!');";
//		echo "top.location.href='empreendimentoUpload.php?pg=$pg&key=$key';";
		echo "window.location.replace('empreendimentoForm.php?id=$key&opcao=view&#tabs-2');";		
		echo "</SCRIPT>";
}

} elseif ($grid == 'documento_view') { 

$resultado= "DELETE FROM documentos WHERE iddocumento=$id"; 
$query = mysql_query($resultado) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO REMOVIDO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO REMOVIDO COM SUCESSO!');";
//		echo "top.location.href='empreendimentoUpload.php?pg=$pg&key=$key';";
		echo "window.location.replace('empreendimentoForm.php?id=$key&opcao=view&#tabs-3');";		
		echo "</SCRIPT>";
}

} elseif ($grid == 'documento') { 

$resultado= "DELETE FROM documentos WHERE iddocumento=$id"; 
$query = mysql_query($resultado) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO REMOVIDO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO REMOVIDO COM SUCESSO!');";
//		echo "top.location.href='empreendimentoUpload.php?pg=$pg&key=$key';";
		echo "window.location.replace('empreendimentoGeraDocumento.php?pg=$pg&id=$key&#tabs-3');";		
		echo "</SCRIPT>";
}

} else {

$resultado= "DELETE FROM arquivos WHERE idarquivo=$id"; 
$query = mysql_query($resultado) or die(mysql_error());

if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO REMOVIDO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		unlink ("files/".$nome);
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO REMOVIDO COM SUCESSO!');";
		echo "window.location.replace('empreendimentoUpload.php?pg=$pg&key=$key');";		
		echo "</SCRIPT>";
		}
	}
} 


//************************************************************************************************
//************************************GERACAO DE DOCUMENTOS***************************************
//************************************************************************************************

function GeraDocumento(){

$emissaox			= $_POST['emissao'];
if ($emissaox == Null){
$emissao = 'Null'; 
} else { 
$aData = explode('/', $emissaox);
$iTS = mktime(0, 0, 0, $aData[1], $aData[0], $aData[2]);
//$data = date('Y-m-d', $iTS); 
$emissao = "'".date('Y-m-d', $iTS)."'"; 
}

$validadex		= $_POST['validade'];
if ($validadex == Null){
$validade = 'Null'; 
} else { 
$aData = explode('/', $validadex);
$iTS = mktime(0, 0, 0, $aData[1], $aData[0], $aData[2]);
//$validade = date('Y-m-d', $iTS); 
$validade = "'".date('Y-m-d', $iTS)."'"; 
}


$geracao			= date("Y-m-d:H:i:s", time());
$numero				= $_POST['numero'];
$idempreendimento	= $_POST['idempreendimento'];
$iddoc				= $_POST['doc'];
$usuario			= $_POST['usuario'];
$solicitacao		= $_POST['solicitacao'];
$licenca			= $_POST['licenca'];
$familias			= $_POST['familias'];
$potencial			= $_POST['potencial'];
$tratamento			= $_POST['tratamento'];
$tnome				= $_POST['tnome'];
$tcargo				= $_POST['tcargo'];
$tendereco			= $_POST['tendereco'];
$tassunto			= $_POST['tassunto'];

$sql = "INSERT INTO documentos (dtemissao, dtvalidade, dtgeracao, numero, idempreendimento, iddoc, usuario, solicitacao, licenca, familias, potencial, tratamento, tnome, tcargo, tendereco, tassunto) VALUES ($emissao, $validade, '$geracao', '$numero', '$idempreendimento', '$iddoc', '$usuario', '$solicitacao', '$licenca', '$familias', '$potencial', '$tratamento', '$tnome', '$tcargo', '$tendereco', '$tassunto')";
$query = mysql_query($sql) or die(mysql_error());


if (!$query) {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('REGISTRO NÃO CADASTRADO');";
		echo "history.go(-1);";
		echo "</SCRIPT>";
	} else {
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('Documento Gerado com Sucesso!!!');";
		echo "window.location.replace('empreendimentoGeraDocumento.php?pg=$pg&id=$idempreendimento&#tabs-3');";		
		echo "</SCRIPT>";
}
  }   



function sair(){

session_destroy();
    header("location:index.php");
		/*	
		echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		echo "alert('SESSAO FINALIZADA COM SUCESSO!');";
		echo "window.location.replace('index.php');";
		echo "</SCRIPT>";
   		*/
   
   } 
?>

