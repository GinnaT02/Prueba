
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visualización de Datos</title>
</head>
<body>
    <h1>Usuarios:</h1>
    <?php
    $conn = new mysqli("localhost", "root", "", "gema");
    
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

 
    $tablas = [
        "activos" => "Usuarios Activos",
        "inactivos" => "Usuarios Inactivos",
        "espera" => "En Proceso de Espera"
    ];

  
    foreach ($tablas as $tabla => $titulo) {
        echo "<h2>$titulo</h2>";
        $sql = "SELECT * FROM $tabla";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<table>";
            echo "<tr><th>Email</th><th>Nombre</th><th>Apellido</th></tr>";
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['email']}</td>
                        <td>{$row['nombre']}</td>
                        <td>{$row['apellido']}</td>
                      </tr>";
            }
            echo "</table>";
        } else {
            echo "<p>No hay datos en esta categoría.</p>";
        }
    }

    $conn->close();
    ?>
</body>
</html>
<style>
        body { font-family: Arial, sans-serif; margin: 20px; background-color: rgba(168, 162, 155, 0.634); }
        table { width: 100%; border-collapse: collapse; margin-bottom: 30px; }
        th, td { border: 1px solid #ccc; padding: 10px; text-align: left; background-color:rgb(230, 188, 91); }
        h2 { color: #333; margin-bottom: 10px; }
    </style>




<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['archivo'])) {
    $archivo = $_FILES['archivo'];


    if ($archivo['type'] !== 'text/plain') {
        die("Error: El archivo debe ser de tipo .txt.");
    }


    $contenido = file_get_contents($archivo['tmp_name']);
    $lineas = explode("\n", $contenido);


    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "gema";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }



    foreach ($lineas as $linea) {
        $datos = explode(",", trim($linea));
        if (count($datos) !== 4) {
            die("Error: El archivo no tiene el formato correcto.");
        }

        $email = trim($datos[0]);
        $nombre = trim($datos[1]);
        $apellido = trim($datos[2]);
        $codigo = trim($datos[3]);

        if (!filter_var($email, FILTER_VALIDATE_EMAIL) || !in_array($codigo, [1, 2, 3])) {
            die("Error: Datos inválidos en el archivo.");
        }




        // Insertar en la tabla correspondiente
        $tabla = $codigo == 1 ? "activos" : ($codigo == 2 ? "inactivos" : "espera");
        $sql = "INSERT INTO $tabla (email, nombre, apellido) VALUES ('$email', '$nombre', '$apellido')";
        $conn->query($sql);
    }

    $conn->close();

   
}
?>
