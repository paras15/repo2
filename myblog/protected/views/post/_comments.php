<?php foreach($comments as $comment): ?>
<div class="comment" id="c<?php echo $comment->id; ?>">

	<?php echo CHtml::link("#{$comment->id}", $comment->getUrl($post), array(
		'class'=>'cid',
		'title'=>'Permalink to this comment',
	)); ?>

	<div class="author">
		<?php echo $comment->authorLink; ?> says:
	</div>

	<div class="time">
		<?php
		$sql="select create_time from tbl_comment where id=$comment->id";
		$command=Yii::app()->db->createCommand($sql)->queryRow();
		echo $command['create_time'];
		?>
	</div>

	<div class="content">
		<?php echo nl2br(CHtml::encode($comment->content)); ?>
	</div>

</div><!-- comment -->
<?php endforeach; ?>