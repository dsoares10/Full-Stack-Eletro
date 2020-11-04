<?php 
$servername = "localhost";
$username = "root";
$password = "";
$database = "fseletro";


$conn = mysqli_connect($servername , $username , $password , $database);

if (!$conn){
    die("A conexão falhou".mysqli_connect_error());
};


?>



<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produtos - Full Stack Eletro</title>
    <link rel="stylesheet" href="./style.css">
    <script src="./js/funcoes.js "></script>
</head>
<body>
    <!-- Menu-->
    <?php
        include('menu.html')
    ?>    

    <!-- Fim do Menu-->
    <header>
        <h2>Produtos</h2>
    </header>
    
    <hr>

    <section class="categorias">
        <h3>Categorias</h3>
                <ul>
                    <li class="linha-produtos" onclick="exibir_todos('geladeira')">todos (12)</li>
                    <li class="linha-produtos" onclick="exibir_categoria('geladeira')">Geladeiras (3)</li>
                    <li class="linha-produtos" onclick="exibir_categoria('fogão')">Fogões (2)</li>
                    <li class="linha-produtos" onclick="exibir_categoria('microondas')">Microondas (3)</li>
                    <li class="linha-produtos" onclick="exibir_categoria('lava roupas')">Lavadora de roupas (2)</li>
                    <li class="linha-produtos" onclick="exibir_categoria('lava louças')">Lava louças (2)</li>
                    
                </ul>
    </section>



    <div class="produtos">

    <?php

    $sql = "select * from tb_produtos";
    $result = $conn->query($sql);

    if($result->num_rows > 0){

    while($rows = $result->fetch_assoc()){

    ?>

<div class="box-produtos" id="<?php echo $rows["categoria"] ?>" style="display: inline-block">
        <img class="imagem_produtos"  src="<?php echo $rows["imagem"] ?>" width="120px" onclick="destaque(this)">
        <br>
        <p class="descrição"><?php echo $rows["descricao"] ?></p>
        <hr>
        <p class="descrição"><strike>R$<?php echo $rows["preco"] ?></strike></p>
        <p class="preço">R$<?php echo $rows["precofinal"] ?></p>
        </div>

<?php
    }

    }else{
    echo "Nenhum produto cadastrado";
    }

    ?>



</div>
   

    <br><br><br><br><br>
    
    <footer id="rodapé">
        <p id="formas-pagamento">Formas de pagamento</p>
        <img src="./imagens/formas-pagamento.png" alt="Formas de pagamento">
        <p>&copy;Recode Pro</p>
    </footer>
</body>
</html>