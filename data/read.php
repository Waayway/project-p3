<?php 

require('config.php');

$dsn = "mysql:host=$dbHost;dbname=$dbName";

try {
    $pdo = new PDO($dsn, $dbUser, $dbPass);
    if ($pdo) {
        echo "Connected to the $dbName database successfully!";
    }
    else
    {
        echo "Connection failed!";
    }
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

$sql = "SELECT Id,
               vragen,
               antwoorden,
               uitslag
        FROM pro-prak-quiz";

$stmt = $pdo->prepare($sql);
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_OBJ);

$quiz = "";

foreach ($result as $q) {
    $quiz .= "<div class='quiz'>
                <h2 class='quiz__title'>$q->vragen</h2>
                <p class='quiz__answer'>$q->antwoorden</p>
                <p class='quiz__result'>$q->uitslag</p>
            </div>";
}
?>