<?php

function login($request, $response, $args) {
	$user_data_form=$request->getParsedBody();
	$err='Error';
    try {
        $users_data_base = User::where('nickname',$user_data_form['nickname'])->where('password',$user_data_form['password'])->get();
        if($users_data_base){
        	return json_encode($users_data_base);
        }else{
        	echo 'Error';
        }
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}