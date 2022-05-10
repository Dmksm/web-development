<?php 
function getPOSTParameter(string $name): ?string
{
    return isset($_POST[$name]) ? $_POST[$name] : null;
}

function getFileSubstring(?string $fileString): ?string
{
    return (trim(substr($fileString, strpos($fileString, ':') + 1)));
}

$email = getPOSTParameter('email');
if ($email)
{
    $path = './data/' . $email . '.txt';

    if (!file_exists($path))
    {
        echo('No such file or directory');
        return;
    }
    $file = fopen($path, "r");
    $name = getFileSubstring(fgets($file));
    $email = getFileSubstring(fgets($file));
    $activity = getFileSubstring(fgets($file));
    echo "Email:" . $email . '<br />' . "Имя:" . $name . '<br />' . "Деятельность:" . $activity;
    fclose($file);
}
else
{
    echo "Don't got email!";
}