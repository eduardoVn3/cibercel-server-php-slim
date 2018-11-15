<?php
function index_class($request) {
    try {
        $class_all=Class_temario::get();
        return json_encode($class_all);
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function index_class_foreign_key($request) {
    $id=$request->getParsedBody();
    try {
        $Class_temario=Class_temario::where('module_id',$id['id'])->get();
        return json_encode($Class_temario);
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function store_class($request) {
	$class_data_form=$request->getParsedBody();
    try {
        $ruta= "./public/images/".$_FILES['img']['name'];
        $ruta_msql=$_FILES['img']['name'];
        $propeties_data_form=$request->getParsedBody();
        $move=move_uploaded_file($_FILES['img']['tmp_name'], $ruta);
        $Class_temario=new Class_temario();
        $Class_temario->title=$class_data_form['title'];
        $Class_temario->subtitle=$class_data_form['subtitle'];
        $Class_temario->quantity=$class_data_form['quantity'];
        $Class_temario->date_one=$class_data_form['date_one'];
        $Class_temario->date_two=$class_data_form['date_two'];
        $Class_temario->module_id=$class_data_form['module_id'];
        $Class_temario->img=$ruta_msql;
        $Class_temario->save();
        echo "Registrado con exito";
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function update_class($request, $response, $args) {
    $class_data_form_update=$request->getParsedBody();
    try {
        $Class_temario=Class_temario::find($class_data_form_update['id']);
        if($Class_temario!=''){
            $ruta= "./public/images/".$_FILES['img']['name'];
            $ruta_msql=$_FILES['img']['name'];
            $move=move_uploaded_file($_FILES['img']['tmp_name'], $ruta);
            $Class_temario->title=$class_data_form_update['title'];
	        $Class_temario->subtitle=$class_data_form_update['subtitle'];
	        $Class_temario->quantity=$class_data_form_update['quantity'];
	        $Class_temario->date_one=$class_data_form_update['date_one'];
	        $Class_temario->date_two=$class_data_form_update['date_two'];
            $Class_temario->img=$ruta_msql;
	        $Class_temario->save();
            $new_Class_temario=Class_temario::find($class_data_form_update['id']);
            return json_encode($Class_temario);
        }else{
            echo "No se encuentan coincidencias";
        }
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function delete_class($request, $response, $args) {
    $class_data_form_delete=$request->getParsedBody();
    try {
        $Class_temario=Class_temario::find($class_data_form_delete['id']);
        if($Class_temario!=''){
            $Class_temario->delete();
            echo "Se ha eliminado con exito";
        }else{
            echo "No se encuentan coincidencias";
        }
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}