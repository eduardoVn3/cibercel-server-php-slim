<?php
if (PHP_SAPI == 'cli-server') {
    // To help the built-in PHP dev server, check if the request was actually for
    // something which should probably be served as a static file
    $url  = parse_url($_SERVER['REQUEST_URI']);
    $file = __DIR__ . $url['path'];
    if (is_file($file)) {
        return false;
    }
}

require __DIR__ . '/../vendor/autoload.php';

session_start();

// Instantiate the app
$settings = require __DIR__ . '/../src/settings.php';
$app = new \Slim\App($settings);

//modelos
require __DIR__ . '/../models/user.php';
require __DIR__ . '/../models/tag.php';
require __DIR__ . '/../models/course.php';
require __DIR__ . '/../models/property.php';
require __DIR__ . '/../models/module.php';
require __DIR__ . '/../models/class.php';
// Set up dependencies
require __DIR__ . '/../src/dependencies.php';

// Register middleware
require __DIR__ . '/../src/middleware.php';
//conexion db
require __DIR__ . '/../src/connection.php';

require __DIR__ . '/../src/users_controllers.php';
//controladores
require __DIR__ . '/../src/tags_controllers.php';
require __DIR__ . '/../src/properties_controllers.php';
require __DIR__ . '/../src/courses_controllers.php';
require __DIR__ . '/../src/modules_controllers.php';
require __DIR__ . '/../src/class_controllers.php';
require __DIR__ . '/../src/email_controllers.php';

// Register routes
require __DIR__ . '/../src/routes.php';


// Run app
$app->run();
