<?php
function index_properties($request) {
    try {
        $properties_all=Property::get();
        return json_encode($properties_all);
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function show_properties($request) {
    $id=$request->getParsedBody();
    try {
        $properties_all=Property::where('id',$id['id'])->get();
        return json_encode($properties_all);
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function index_properties_foreign_key($request) {
    $id=$request->getParsedBody();
    try {
        $Property=Property::where('tag_id',$id['id'])->get();
        return json_encode($Property);
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function store_properties($request) {
    try {
        $ruta= "./public/images/".$_FILES['img']['name'];
        $ruta_msql=$_FILES['img']['name'];
        $propeties_data_form=$request->getParsedBody();
        $move=move_uploaded_file($_FILES['img']['tmp_name'], $ruta);
        $Property=new Property();
        $Property->title=$propeties_data_form['title'];
        $Property->ico=$propeties_data_form['ico'];
        $Property->content=$propeties_data_form['content'];
        $Property->img=$ruta_msql;
        $Property->tag_id=$propeties_data_form['tag_id'];
        $Property->save();
        echo "Registrado con exito";
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function update_properties($request, $response, $args) {
    try {
        $properties_data_form_update=$request->getParsedBody();
        $ruta= "./public/images/".$_FILES['img']['name'];
        $ruta_msql=$_FILES['img']['name'];
        $move=move_uploaded_file($_FILES['img']['tmp_name'], $ruta);
        $Property=Property::find($properties_data_form_update['id']);
        if($Property!=''){
            $Property->title =$properties_data_form_update['title'];
            $Property->content =$properties_data_form_update['content'];
            $Property->img =$ruta_msql;
            $Property->ico =$properties_data_form_update['ico'];
            $Property->save();
            $new_Property=Course::find($properties_data_form_update['id']);
            return json_encode($Property);
        }else{
            echo "No se encuentan coincidencias";
        }
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function delete_properties($request, $response, $args) {
    $properties_data_form_delete=$request->getParsedBody();
    try {
        $Property=Property::find($properties_data_form_delete['id']);
        if($Property!=''){
            $Property->delete();
            echo "Se ha eliminado con exito";
        }else{
            echo "No se encuentan coincidencias";
        }
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}