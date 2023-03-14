<?php

$to = $_POST["email"];
$subject = "Uw uitslag uit de vragenlijst.";

$message = "U had de uitslag, " . $_POST["score"] . " op de quiz.";

$headers = "MIME-Version: 1.0\r\n";
$headers .=  "Content-type: text/html; charset=UTF-8\r\n";
$headers .= "From: admin@AMG.nl\r\n";


if (mail($to, $subject, $message, $headers)) {
    echo "E-mail is verzonden.";
} else {
    echo "Er is een fout opgetreden bij het verzenden van de e-mail.";
}

header("Refresh:5; url=../../index.html");
