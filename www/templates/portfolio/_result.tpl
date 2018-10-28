<?php if($_GET['result']=='workDelete'){?>
	<div class="notify no-radius-bottom notify--error mt-20 mb-10 " data-notify-hide>
		Описание работы успешно удалено!
	</div>
<?php } ?>

<?php if($_GET['result']=='workCreated'){?>
	<div class="notify no-radius-bottom notify--error mt-20 mb-10 success-error " data-notify-hide>
		Новая работа успешно добавлена!
	</div>
<?php } ?>

<?php if($_GET['result']=='workUpdated'){?>
	<div class="notify no-radius-bottom notify--error mt-20 mb-10 success-error " data-notify-hide>
		Описание работы успешно отредактировано!
	</div>
<?php } ?>