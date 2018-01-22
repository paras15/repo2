<?php
/* @var $this PostController */
/* @var $data Post */
?>

<div class="view">

	<?php echo "<b style = 'font-size:20px'>".CHtml::encode($data->title)."</b>"; ?>
	<br />
	<hr style='margin-bottom:0px'>
	<?php echo "Posted on ".CHtml::encode($data->create_time); ?>
	<br />
	<br>

	<?php echo CHtml::encode($data->content); ?>
	<br />
	<br>

	<b><?php echo CHtml::encode($data->getAttributeLabel('tags')); ?>:</b>
	<?php $tags=CHtml::encode($data->tags);

		$myArray = explode(',', $tags);
		$count=sizeof($myArray);

		$actual_link = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
		//echo $actual_link;

		for($j=0;$j<$count;$j++)
		{	
			if("$actual_link"=="http://localhost:81/YiiRoot/myblog/index.php")
			{
				$index="index.php/posts/".trim($myArray[$j]);
    			echo "<a href=$index>".$myArray[$j]."</a>"; 
    			echo "  ";
    		}

    		elseif("$actual_link"=="http://localhost:81/YiiRoot/myblog/index.php/post/index")
			{
				$index="http://localhost:81/YiiRoot/myblog/index.php/posts/".trim($myArray[$j]);
    			echo "<a href=$index>".$myArray[$j]."</a>"; 
    			echo "  ";
    		}

    		else
    		{
    			$index=trim($myArray[$j]);
    			echo "<a href=$index>".$myArray[$j]."</a>"; 
    			echo "  ";

    		}
		}
		$id=CHtml::encode($data->id);

		if("$actual_link"=="http://localhost:81/YiiRoot/myblog/index.php")
		{	
			$address="index.php/post/view/id/".$id;
			echo "<br><a href=$address>Comments</a>";
		}

		else
		{
			$address="../post/view/id/".$id;
			echo "<br><a href=$address>Comments</a>";
		}
		echo "<br><br>";

	?>
	<br />


</div>