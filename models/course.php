<?php
use Illuminate\Database\Eloquent\Model;

	class Course extends Model{
		protected $table='Courses';
		protected $primary_key='id';
		// desactivar create_at apdate_at
		public $timestamps=false;


		public function Tag(){
			return $this->hasOne('Tag');
		}
	}