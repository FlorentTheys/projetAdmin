<html lang="fr">
  <head>
    <meta charset="utf-8">
    <title>b2b Woody Toys</title>
  </head>
  <body>
    <h1>Bienvenue sur le site b2b de Woody Toys</h1>
    <?php
        // Create connection
        $conn = mysqli_connect('51.178.40.200', 'admin');

        // Check connection
        if (!$conn) {
          die("Connection failed: " . mysqli_connect_error());
        }
        echo "Connected successfully";


        $sql = "SELECT produits_id, produits_nom, produits_prix FROM produits";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
          // output data of each row
          while($row = $result->fetch_assoc()) {
            echo "id: " . $row["produits_id"]. " - Name: " . $row["produits_nom"]. " " . $row["produits_prix"]. "<br>";
          }
        } else {
          echo "0 results";
        }
        $conn->close();
    ?>
  </body>
</html>
