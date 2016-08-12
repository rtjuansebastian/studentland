<?php
function authorize()
{
  //normally this info would be pulled from a database.
  //build JSON array
  $status = array("status" => "success"); 
 
  return $status;
}
 
$possible_params = array("authorization", "test");
 
$value = "An error has occurred";
 
if (isset($_POST["action"]) && in_array($_POST["action"], $possible_params))
{
  switch ($_POST["action"])
    {
      case "authorization":
        $value = authorize();
        break;
    }
}
 
//return JSON array
exit(json_encode($value));
?>