<?php foreach($jobs as $job){?>
	<li class="about-me__definition-list__item pb-30">
		<div class="about-me__definition-list__def"><?=$job->period?></div>
		<div class="title-4 about-me__definition-list__title"><?=$job->title?></div>
		<div class="about-me__definition-list__description">
			<?=$job->description?>
		</div>
	</li>
<?php }?>