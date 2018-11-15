<?php
function index_modules($request) {
    try {
        $modules_all=Module::get();
        return json_encode($modules_all);
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function index_modules_foreign_key($request) {
    $id=$request->getParsedBody();
    try {
        $Module=Module::where('course_id',$id['id'])->get();
        return json_encode($Module);
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function store_modules($request) {
	$modules_data_form=$request->getParsedBody();
    try {
    	$ruta= "./public/images/".$_FILES['img']['name'];
        $ruta_msql=$_FILES['img']['name'];
        $propeties_data_form=$request->getParsedBody();
        $move=move_uploaded_file($_FILES['img']['tmp_name'], $ruta);
        $Module=new Module();
        $Module->title=$modules_data_form['title'];
        $Module->date_one=$modules_data_form['date_one'];
        $Module->date_two=$modules_data_form['date_two'];
        $Module->img=$ruta_msql;
        $Module->course_id=$modules_data_form['course_id'];
        $Module->save();
        echo "Registrado con exito";
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function update_modules($request, $response, $args) {
    $modules_data_form_update=$request->getParsedBody();
    try {
        $Module=Module::find($modules_data_form_update['id']);
        if($Module!=''){
        	$ruta= "./public/images/".$_FILES['img']['name'];
        	$ruta_msql=$_FILES['img']['name'];
        	$move=move_uploaded_file($_FILES['img']['tmp_name'], $ruta);
            $Module->title=$modules_data_form_update['title'];
        	$Module->date_one=$modules_data_form_update['date_one'];
        	$Module->date_two=$modules_data_form_update['date_two'];
        	$Module->img=$ruta_msql;
            $Module->save();
            $new_Module=Course::find($modules_data_form_update['id']);
            return json_encode($Module);
        }else{
            echo "No se encuentan coincidencias";
        }
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function delete_modules($request, $response, $args) {
    $modules_data_form_delete=$request->getParsedBody();
    try {
        $Module=Module::find($modules_data_form_delete['id']);
        if($Module!=''){
            $Module->delete();
            echo "Se ha eliminado con exito";
        }else{
            echo "No se encuentan coincidencias";
        }
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}