<?php

require_once ('connection.php');

/*
  A través de la variable $_POST de PHP vamos a tomar la información que se esté
  enviando desde el formulario (ver index.php, donde se configura method="post").
  Dado que los controles y los colores seleccionables son input type="submit",
  cuando se presiona cada uno de ellos se genera un request de tipo POST y PHP
  obtiene el valor que contiene el atributo 'value' del input presionado y el 'name'.
  Con el name, sabremos si se presionó una tecla de movimiento, o un color.
  Y con el value, obtenemos el valor que nos interesa, ya sea A, W, S, D, u OK,
  o cualquiera de los 16 colores disponibles.
  Dentro de $_POST['name'], está el 'value'.
  Con isset validamos que contenga información esa variable, porque si tiene,
  queremos saber qué botón presionaron, y sino, simplemente dejamos que el flujo
  siga.
*/

if(isset($_POST['move'])) {
  updatePosition($_POST['move']);
} else if(isset($_POST['color'])){
  updateFutureColor($_POST['color']);
}

function createGrill($xCount, $yCount, $defaultColor) {

  $conn = new GrillDB();
  $grill = array();

  for($x = 0; $x < $xCount; $x++) {
    for($y = 0; $y < $yCount; $y++) {
      $grill[] = '(' . $x . ',' . $y . ',"' . $defaultColor . '")';
    }
  }

  $truncateGrillInfo = 'TRUNCATE TABLE grillinfo;';
  $truncateCurrentPosition = 'TRUNCATE TABLE current_position;';

  $conn->getConnection()->query($truncateGrillInfo);
  $conn->getConnection()->query($truncateCurrentPosition);

  /*
    Seteamos todo el tablero en un mismo color, el que llegue por parámetro.
  */
  $initializationQuery = 'INSERT INTO grillinfo (x_axis, y_axis, color_class) VALUES ' . implode(',', $grill) . ';';
  $conn->getConnection()->query($initializationQuery);

  /*
    Seteamos la posición inicial del cuadrado seleccionado justo en el medio de tablero.
  */
  $initializePositionQuery = "INSERT INTO current_position (id, x_axis, y_axis, selected_color) VALUES (1, 15, 15, '$defaultColor');";
  $conn->getConnection()->query($initializePositionQuery);

}

function getAllSquares() {

  $conn = new GrillDB();

  /*
    Obtenemos todos los datos de la grilla, ordenados, ya que nos va a servir
    para procesarlos más fácilmente luego en el foreach.
    En este caso, está ordenado DESCendentemente para que el (0,0) nos quede
    abajo a la izquierda, y el (31,31) arriba a la derecha, en la tabla que
    estaremos generando, sino me mareo jaja.
  */

  $aQuery = 'SELECT x_axis, y_axis, color_class FROM grillinfo ORDER BY y_axis DESC;';
  $rows = $conn->getConnection()->query($aQuery);
  $results = array();

  while($aRow = $rows->fetch_assoc()) {
    $results[] = $aRow;
  }

  return $results;
}

function getCurrentPosition() {

  $conn = new GrillDB();

  $getCurrentPositionQuery = 'SELECT x_axis, y_axis, selected_color FROM current_position LIMIT 1;';

  return $conn->getConnection()->query($getCurrentPositionQuery)->fetch_assoc();

}

function updatePosition($key) {

  $conn = new GrillDB();

  /*
    Primero obtenemos la posición actual del primer (y único) registro de la tabla
    current_position, para movernos en base a eso.
    En el array futurePosition vamos a almacenar la información con la cual
    vamos a actualizar la posición actual en la tabla.
  */
  $futurePosition = $currentPosition = getCurrentPosition();

  if($key == 'OK'){
    $updateColorQuery = "UPDATE grillinfo SET color_class = '" . $futurePosition['selected_color'] . "' WHERE x_axis = " . $futurePosition['x_axis'] . " AND y_axis = " . $futurePosition['y_axis'] . ";";
    $conn->getConnection()->query($updateColorQuery);
    return;
  }

  switch ($key) {

    /*
      En base a la tecla que se presione para realizar el movimiento, vamos a
      realizar los cálculos para actualizar la posición actual, con la posición
      futura del cursor.
    */

    case 'W':

      if($currentPosition['y_axis'] == 31){
        $futurePosition['y_axis'] = 0;
        $futurePosition['x_axis'] = $currentPosition['x_axis'];
      } else {
        $futurePosition['y_axis']++;
        $futurePosition['x_axis'] = $currentPosition['x_axis'];
      }
      break;

    case 'A':

      if($currentPosition['x_axis'] == 0){
        $futurePosition['x_axis'] = 31;
        $futurePosition['y_axis'] = $currentPosition['y_axis'];
      } else {
        $futurePosition['x_axis']--;
        $futurePosition['y_axis'] = $currentPosition['y_axis'];
      }
      break;

    case 'S':

      if($currentPosition['x_axis'] == 0){
        $futurePosition['x_axis'] = 31;
        $futurePosition['y_axis'] = $currentPosition['y_axis'];
      } else {
        $futurePosition['x_axis']++;
        $futurePosition['y_axis'] = $currentPosition['y_axis'];
      }
      break;

    case 'D':
      if($currentPosition['y_axis'] == 31){
        $futurePosition['y_axis'] = 0;
        $futurePosition['x_axis'] = $currentPosition['x_axis'];
      } else {
        $futurePosition['y_axis']--;
        $futurePosition['x_axis'] = $currentPosition['x_axis'];
      }
      break;

    default:
      // Do nothing.
      break;
  }

  $updatePositionQuery = "UPDATE current_position SET x_axis = " . $futurePosition['x_axis'] . ", y_axis = " . $futurePosition['y_axis'] . ";";
  $conn->getConnection()->query($updatePositionQuery);

}

function updateFutureColor($color) {

  $conn = new GrillDB();
  $futurePosition = array();

  $updateFutureColor = "UPDATE current_position SET selected_color = '$color';";
  $conn->getConnection()->query($updateFutureColor);

}
?>
