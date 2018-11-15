<?php

// function getConnection() {
//     $dbhost="127.0.0.1";
//     $dbuser="root";
//     $dbpass="";
//     $dbname="cibercel";
//     $dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);
//     $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//     return $dbh;
// }
use Illuminate\Database\Capsule\Manager as Capsule;
	$capsule= new Capsule;
	$capsule->addConnection([
		'driver'=>'mysql',
		'host'=>'localhost',
		'database'=>'cibercel',
		'username'=>'root',
		'password'=>'',
		'charset'=>'utf8',
		'collaction'=>'utf8_unicode_ci',
		'prefix'=>''
	]);
	// $capsule->addConnection([
	// 	'driver'=>'mysql',
	// 	'host'=>'localhost',
	// 	'database'=>'id3382814_cibercel',
	// 	'username'=>'id3382814_cibercel	',
	// 	'password'=>'cibercel',
	// 	'charset'=>'utf8',
	// 	'collaction'=>'utf8_unicode_ci',
	// 	'prefix'=>''
	// ]);
	$capsule->bootEloquent();
	$capsule->setAsGlobal();