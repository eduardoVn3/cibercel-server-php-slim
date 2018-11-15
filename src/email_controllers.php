<?php
function store_email($request) {
    $get_body=$request->getParsedBody();
    try {
        $detino='info@cibercel.com';
        $asunto='suscripcion';
        $body ="Nombre del usuario:"+$get_body['name']+"\n";
        $body .="Correo del usuario:"+$get_body['email']+"\n";
        // $body .="Numero del usuario:"+$get_body['numero']+" \n";
        $body .="mensaje del usuario:"+$get_body['commentary']+" \n";
        mail($detino,$asunto,$body);
        echo "Mensaje enviado";
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}