<?php
use Illuminate\Database\Eloquent\Model;

	class Tag extends Model{
		protected $table='Tags';
		protected $primary_key='id';
		// desactivar create_at apdate_at
		public $timestamps=false;

		public function Couser(){
			return $this->belongsTo('Course');
		}

		public function Property(){
			return $this->belongsTo('Property');
		}
	}