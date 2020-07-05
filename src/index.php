<html>
<head>
  <title>Grill</title>
  <link rel="stylesheet" href="./styles/styles.css">
</head>
<body>
  <div class="ui-container">
    <table id="square-container">
    <?php
      require ('./php/functions.php');

      /*
        Descomentar la función para realizar la creación inicial.
        Luego volver a comentar :P
      */
      // createGrill(32, 32, "color-blue");

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
    <div id="commands-container">
        <table id="colors-container">
          <thead>
            <th colspan="4"><h3>Colores</h3></th>
          </thead>
          <tr>
            <td class="color-default"><input type='submit' name='color' value='color-default'/></td>
            <td class="color-dark-green"><input type='submit' name='color' value='color-dark-green'/></td>
            <td class="color-red"><input type='submit' name='color' value='color-red'/></td>
            <td class="color-yellow"><input type='submit' name='color' value='color-yellow'/></td>
          </tr>
          <tr>
            <td class="color-blue"><input type='submit' name='color' value='color-blue'/></td>
            <td class="color-gray"><input type='submit' name='color' value='color-gray'/></td>
            <td class="color-dark-magenta"><input type='submit' name='color' value='color-dark-magenta'/></td>
            <td class="color-coral"><input type='submit' name='color' value='color-coral'/></td>
          </tr>
          <tr>
            <td class="color-aquamarine"><input type='submit' name='color' value='color-aquamarine'/></td>
            <td class="color-deep-pink"><input type='submit' name='color' value='color-deep-pink'/></td>
            <td class="color-gold"><input type='submit' name='color' value='color-gold'/></td>
            <td class="color-indigo"><input type='submit' name='color' value='color-indigo'/></td>
          </tr>
          <tr>
            <td class="color-light-green"><input type='submit' name='color' value='color-light-green'/></td>
            <td class="color-black"><input type='submit' name='color' value='color-black'/></td>
            <td class="color-turquoise"><input type='submit' name='color' value='color-turquoise'/></td>
            <td class="color-brown"><input type='submit' name='color' value='color-brown'/></td>
          </tr>
        </table>
        <form method="post" action="">
          <table id="keys-container">
            <thead>
              <th colspan="3"><h3>Movimientos</h3></th>
            </thead>
            <tr>
              <td></td>
              <td class="key"><input type="submit" name="move" value="W"/></td></td>
              <td></td>
            </tr>
            <tr>
              <td class="key"><input type="submit" name="move" value="A"/></td></td>
              <td class="key"><input type="submit" name="move" value="OK"/></td></td>
              <td class="key"><input type="submit" name="move" value="S"/></td></td>
            </tr>
            <tr>
              <td></td>
              <td class="key"><input type="submit" name="move" value="D"/></td></td>
              <td></td>
            </tr>
          </table>
        </form>
    </div>
  </div>
</body>
</html>
