<?php
function getPOSTParameter(string $name): ?string
{
    return isset($_POST[$name]) ? $_POST[$name] : null;
}
$email = getPOSTParameter('email');
$name = getPOSTParameter('name');
$agreement = getPOSTParameter('agreement');
$activity = getPOSTParameter('activity');
if ($email)
{
    $path = './data/' . $email . '.txt';
    $myFile = fopen($path, "w");
    $somecontent = "Name:" . $name . PHP_EOL . "Email:" . $email . PHP_EOL . "Activity:" . $activity . PHP_EOL;
    fwrite($myFile, $somecontent);
    fclose($myFile);
}
else
{
    echo "Don't got email!";
}