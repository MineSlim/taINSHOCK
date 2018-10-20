<?php
include '../conexao/conexao.php';
$titulo = $_POST['titulo'];
$email = $_POST['suspeito'];
$data = $_POST['data'];
$descricao = $_POST['descricao'];
$email = $_POST['email'];

// Criar código sql

$sql = "INSERT INTO denuncia (titulo_den, suspeito_den, data_den, descricao_den,email_den, assunto_den) values (:titulo, :suspeito, :datad, :descricao, :email, :assunto)";

$inserir = $conn->prepare($sql);
$inserir-> bindParam (':titulo', $titulo);
$inserir-> bindParam (':email', $email);
$inserir-> bindParam (':descricao', $descricao);
$inserir-> bindParam (':assunto', $assunto);

$resultado = $inserir->execute();

if( ! $resultado)
{
  var_dump( $inserir->errorInfo() );
  exit;
}

echo $inserir->rowCount(). "linhas";


 ?>
 <a href="cadastrar.php"class="btn btn-success">Cadastrar Nova Pessoa</a>
  <a href="consulta.php"class="btn btn-primary">HOME</a>

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
