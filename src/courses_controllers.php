<?php

function index_courses($request, $response, $args) {
    try {
        $courses_all=Course::get();
        return json_encode($courses_all);
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function index_courses_foreign_key($request) {
    $id=$request->getParsedBody();
    try {
        $Course=Course::where('tag_id',$id['id'])->get();
        return json_encode($Course);
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}
function store_courses($request, $response, $args) {
	$courses_data_form=$request->getParsedBody();
    try {
        $ruta= "./public/images/".$_FILES['img']['name'];
        $ruta_msql=$_FILES['img']['name'];
        $move=move_uploaded_file($_FILES['img']['tmp_name'], $ruta);
        $Course=new Course();
        $Course->title=$courses_data_form['title'];
        $Course->subtitle=$courses_data_form['subtitle'];
        $Course->content=$courses_data_form['content'];
        $Course->ico=$courses_data_form['ico'];
        $Course->img=$ruta_msql;
        $Course->tag_id=$courses_data_form['tag_id'];
        $Course->save();
        echo $uploadedFiles;
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function update_courses($request, $response, $args) {
	$courses_data_form_update=$request->getParsedBody();
	if(!empty($courses_data_form_update['title']) || !is_null($courses_data_form_update['title'])){
		try {
            $ruta= "./public/images/".$_FILES['img']['name'];
            $ruta_msql=$_FILES['img']['name'];
            $move=move_uploaded_file($_FILES['img']['tmp_name'], $ruta);
	        $course=Course::find($courses_data_form_update['id']);
	        if($course!=''){
	        	$course->title =$courses_data_form_update['title'];
                $course->subtitle =$courses_data_form_update['subtitle'];
                $course->content=$courses_data_form_update['content'];
                $course->ico=$courses_data_form_update['ico'];
                $course->img =$ruta_msql;
	        	$course->save();
	        	$new_course=Course::find($courses_data_form_update['id']);
	        	return json_encode($course);
	        }else{
	        	echo "No se encuentan coincidencias";
	        }
	    } catch(PDOException $e) {
	        echo '{"error":{"text":'. $e->getMessage() .'}}';
	    }
	}else{
		echo "El campo es nulo no se ha podido guardar";
	}
}

function delete_courses($request, $response, $args) {
	$courses_data_form_delete=$request->getParsedBody();
    try {
        $course=Course::find($courses_data_form_delete['id']);
        if($course!=''){
        	$course->delete();
        	echo "Se ha eliminado con exito";
        }else{
        	echo "No se encuentan coincidencias";
        }
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}