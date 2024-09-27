<?php
// Conexão com o banco de dados (ajuste as informações)
$servername = "laragon";
$username = "root";
$password = "";
$dbname = "greendump";

$conn = new mysqli($servername,$username,$password,$dbname);

// Verifica se houve algum erro na conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}
/* 
// Verifica   se o arquivo foi enviado
if(isset($_FILES['arquivo'])){
    $arquivo = $_FILES['arquivo'];
    $nome_arquivo = $arquivo['name'];
    $tipo_arquivo = $arquivo['type'];
    $tamanho_arquivo = $arquivo['size'];
    $tmp_nome = $arquivo['tmp_name'];

    // Define o diretório onde o arquivo será salvo
    $diretorio = "uploads/";

    // Move o arquivo para o diretório
    move_uploaded_file($tmp_nome, $diretorio.$nome_arquivo);

    // Insere as informações do arquivo no banco de dados
    $sql = "INSERT INTO arquivos (nome, tipo, tamanho, caminho) VALUES ('$nome_arquivo', '$tipo_arquivo', '$tamanho_arquivo', '$diretorio$nome_arquivo')";

    if ($conn->query($sql) === TRUE) {
        echo "Arquivo enviado com sucesso!";
    } else {
        echo "Erro ao enviar o arquivo: " . $conn->error;
    }
}

$conn->close(); */
?>