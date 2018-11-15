<?php
use Illuminate\Database\Eloquent\Model;

	class User extends Model{
		protected $table='Users';
		protected $primary_key='id';

		// desactivar create_at apdate_at
		public $timestamps=false;
	}