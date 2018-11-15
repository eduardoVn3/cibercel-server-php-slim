<?php

use Slim\Http\Request;
use Slim\Http\Response;
use Slim\Http\UploadedFile;
// Routes

// $app->get('/[{name}]', function (Request $request, Response $response, array $args) {
//     // Sample log message
//     $this->logger->info("Slim-Skeleton '/' route");

//     // Render index view
//     return $this->renderer->render($response, 'index.phtml', $args);
// });
$app->add(function ($req, $res, $next) use ($app) {
    $response = $next($req, $res);
    return $response
            ->withHeader('Access-Control-Allow-Origin', '*')
            ->withHeader('Access-Control-Allow-Headers', 'X-Requested-With, Content-Type, Accept, Origin, Authorization')
            ->withHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
});
$app->group('/email', function () use ($app) {
	$app->post('/store', 'store_email');
});

$app->group('/users', function () use ($app) {
	$app->post('/login', 'login');
});

$app->group('/tags', function () use ($app) {
	$app->get('/index', 'index_tag');
	$app->post('/find', 'find_tag');
});

$app->group('/properties', function () use ($app) {
	$app->get('/index', 'index_properties');
	$app->post('/show', 'show_properties');
	$app->post('/find', 'index_properties_foreign_key');
	$app->post('/store', 'store_properties');
	$app->post('/update', 'update_properties');
	$app->post('/delete', 'delete_properties');
});

$app->group('/courses', function () use ($app) {
	$app->get('/index', 'index_courses');
	$app->post('/find', 'index_courses_foreign_key');
	$app->post('/store', 'store_courses');
	$app->post('/update', 'update_courses');
	$app->post('/delete', 'delete_courses');
});

$app->group('/modules', function () use ($app) {
	$app->get('/index', 'index_modules');
	$app->post('/find', 'index_modules_foreign_key');
	$app->post('/store', 'store_modules');
	$app->post('/update', 'update_modules');
	$app->post('/delete', 'delete_modules');
});

$app->group('/class', function () use ($app) {
	$app->get('/index', 'index_class');
	$app->post('/find', 'index_class_foreign_key');
	$app->post('/store', 'store_class');
	$app->post('/update', 'update_class');
	$app->post('/delete', 'delete_class');
});