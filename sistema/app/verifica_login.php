<?
session_start();
include("include/conecta.php");
$login		= $_POST['login'];
$senha		= $_POST['senha'];
conexao();

// Obter senha cifrada do usuário
$query = mysql_query("SELECT id, nome, login, senha, status FROM usuarios WHERE login='$login' AND senha='$senha'");
if (!$query) {
    die("Erro ao select da tabela login. Técnico:" . mysql_error());
} 

// verificando se encontrou registros do login e senha no banco de dados.
if (mysql_num_rows($query) > 0) { 
    $dados = mysql_fetch_array($query); // pegando dados do banco.
	if ($dados["status"] == 'inativo') {
		   echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
		   echo "alert('SUA SESSÃO ESTA INATIVA - Consulte o Administrador');";
		   echo "window.location.replace('index.php');";
		   echo "</SCRIPT>";
	} else {
	
	// registrando a session.
    $_SESSION['usuario.id'] = $dados["id"];
    $_SESSION['usuario.nome'] = $dados["nome"];
	$_SESSION['usuario.login'] = $dados["login"];
	$_SESSION['usuario.perfil'] = $dados["perfil"];
    // redirecionando para a pagina registrada.
    header("location:interno.php");
	}
} else { 
    // redirecionando para o formulario de login com o erro.
   echo "<SCRIPT LANGUAGE='JAVASCRIPT'>";
   echo "alert('Usuário ou Senha incorretos.');";
   echo "window.location.replace('index.php');";
   echo "</SCRIPT>";
}
?>