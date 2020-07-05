<html>
<head>
  <title>Grill</title>
  <link rel="stylesheet" href="./styles/styles.css">
</head>
<body>
  <div class="table-container">
    <table>
    <?php
      require ('./php/functions.php');

      /*
        Descomentar la función para realizar la creación inicial.
        Luego volver a comentar :P
      */
      // createGrill(32, 32, "color-default");

      // Nos traemos todas las filas de la DB que dio por resultado nuestra query.
      $squares = getAllSquares();

      /*
        Esta variable nos va a indicar en qué eje Y estamos actualmente.
        Por supuesto, la inicializamos en 0, luego la vamos a ir incrementando
        a medida que vayamos recorriendo las filas.
      */
      $currentYAxis = 0;

      /*
        Abrimos la primera etiqueta que va a crear una table row (fila).
        La vamos a cerrar a medida que vayamos completando la creación de los TD
        de cada fila.
      */
      echo '<tr>';

      /*
        Vamos a recorrer cada row de la tabla de la DB que hayamos recibido
        de la query. Tenemos tres campos: x_axis, y_axis y color_class, que nos
        define qué clase va a tomar cada cuadrado.
      */
      foreach ($squares as $aSquare) {

        /*
          Si el registro sobre el que estamos iterando ahora, pertenece al mismo
          eje Y (es decir, considerando (X, Y) => (0,0) (1,0), (2,0)... (31,0)),
          entonces lo vamos a querer sumar a la fila (TR) en la que estemos ahora.
          Sino, si a continuación de (31,0) leemos (0,1), entonces quiere decir
          que este registro ya pertenece a la fila siguiente y debemos cerrar el
          table row (TR) actual para crear uno nuevo y hacer lo mismo.
        */
        if ($aSquare['y_axis'] == $currentYAxis){
          // El cuadrado pertenece al eje de Y actual, entonces creamos otro TD.
          echo '<td class="' . $aSquare['color_class'] . '"></td>';
        } else {
          // El cuadrado pertenece al próximo eje de Y, entonces cerramos el TR
          // actual, abrimos un nuevo TR, y finalmente agregamos el cuadrado (el TD).
          $currentYAxis = $aSquare['y_axis'];
          echo '</tr><tr><td class="' . $aSquare['color_class'] . '"></td>';
        }
      }

      /*
        Una vez que recorrimos todos los resultados, cerramos la última TR que
        abrimos dentro del foreach.
      */
      echo '</tr>';
    ?>
    </table>
  </div>
</body>
</html>
