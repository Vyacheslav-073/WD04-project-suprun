<?php foreach($jobs as $job){?>
	<div class="user-message mb-20">	
		<div class="user-message__top">
			<div class="user-message__date"><?=$job->period?></div>
			<a class="button button--removesmall" href="<?=HOST?>about/jobs-delete?id=<?=$job['id']?>">Удалить</a>
		</div>		
		<div class="user-message__header">
			<div class="user-message__name"><?=$job->title?></div>
		</div>		
		<div class="user-message__text">
			<?=$job->description?>
		</div>		
	</div>
<?php }?>