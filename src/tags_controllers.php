<?php
function index_tag($request,$response) {
    try {
        $tags = Tag::get();
        return json_encode($tags);
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

function find_tag($request,$response) {
	$title=$request->getParsedBody();
    try {
        $tags = Tag::where('title',$title['title'])->get();
        return json_encode($tags);
    } catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}