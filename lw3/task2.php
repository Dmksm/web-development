<?php
header("Content-Type: text/plain");
function getQueryStringParameter(string $name): ?string
{
    return isset($_GET[$name]) ? $_GET[$name] : null;
}
$string = getQueryStringParameter('identifier');
if ($string !== null) 
{
    $firstchar = substr($string, 0, 1);
    if (ctype_alnum($string) and !(is_numeric($firstchar))) 
    {
        echo 'Yes, string:' . $string . ' is identifier';  
    }
    else 
    {
        echo 'No, string:' . $string . ' is not identifier';
    }
}
else 
{
    echo 'No information';
}
