<?php 
$servername = "localhost";
$username = "root";
$password = "";
$database = "fseletro";


$conn = mysqli_connect($servername , $username , $password , $database);

if (!$conn){
    die("A conexão Falhou".mysqli_connect_error());
};

if(isset($_POST['nome']) && isset($_POST['msg'])){
    $nome = $_POST['nome'];
    $msg = $_POST['msg'];
    
    $sql = "insert into comentarios (nome, msg) values ('$nome' , '$msg')";
    $result = $conn->query($sql);
    
}

?>  

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contato</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
    <!-- Menu-->
    <?php
        include('menu.html')
    ?>    

    <!-- Fim do Menu-->
    <header><h2>Contato</h2></header>
    <hr>

    <div class="formas-contatos">
        <img src="./imagens/email.png" width="40px">
                contato@fullstackeletro.com
    </div>
    <div class="formas-contatos">
        <img src="./imagens/whatsapp.png" width="40px">
                (11)99999-9999
    </div>
   

    <form action="" method="post">
        Nome: <br>
        <input type="text" name="nome" style="width:500px"><br>
        Mensagem: <br>
        <input type="text" name="msg" style="width:500px"><br>
        <input type="submit" name="submit" value="Enviar"><br>

    </form>

    <?php
            $sql = "select * from comentarios";
            $result = $conn->query($sql);

            if($result->num_rows > 0){
                while($rows = $result->fetch_assoc()){
                    echo "Data: ", $rows['data'], "<br>";
                    echo "Nome: ", $rows['nome'], "<br>";
                    echo "Mensagem: ", $rows['msg'], "<br>";
                    echo "<hr>";
                }
            }else{
                echo "Ainda não há comentários";
            }
    
    ?>

        
    

    <footer id="rodapé">
        <p id="formas-pagamento">Formas de pagamento</p>
        <img src="./imagens/formas-pagamento.png" alt="Formas de pagamento">
        <p>&copy;Recode Pro</p>
    </footer>
    
</body>
</html>