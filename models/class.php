<?php
use Illuminate\Database\Eloquent\Model;

	class Class_temario extends Model{
		protected $table='Class';
		protected $primary_key='id';
		// desactivar create_at apdate_at
		public $timestamps=false;


		// public function Module(){
		// 	return $this->hasOne('Module');
		// }
	}