<?php

/**
 * This is the model class for table "{{lookup}}".
 *
 * The followings are the available columns in table '{{lookup}}':
 * @property integer $id
 * @property string $name
 * @property string $code
 * @property string $type
 * @property string $position
 */
class Lookup extends CActiveRecord
{
	private static $_items=array();

	public static function items($type) 
	{ 
		if(!isset(self::$_items[$type])) 
			self::loadItems($type); 
		return self::$_items[$type]; 
	}

	public static function item($type,$code)
	{
		if(!isset(self::$_items[$type])) 
			self::loadItems($type); 
		return isset(self::$_items[$type][$code]) ? self::$_items[$type][$code] : false; 
	}

	private static function loadItems($type) 
	{ 
		self::$_items[$type]=array(); 
		$models=self::model()->findAll(array( 
			'condition'=>'type=:type', 
			'params'=>array(':type'=>$type), 
			'order'=>'position', 
		));
		foreach($models as $model) 
			self::$_items[$type][$model->code]=$model->name; 
	}

}
