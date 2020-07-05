<html>
<head>
  <title>Grill</title>
  <link rel="stylesheet" href="./styles/styles.css">
</head>
<body>
  <div class="table-container">
    <div class="color-amarillo"><span>hola!</span></div>
    <div class="color-rojo"><span>hola!</span></div>
    <div class="color-verde"><span>hola!</span></div>
    <div class="color-azul"><span>hola!</span></div>

    <?php
      require ('./php/functions.php');
      createGrill(32, 32, "color-default");
    ?>
  </div>
</body>
</html>
