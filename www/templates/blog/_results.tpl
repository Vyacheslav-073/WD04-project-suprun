<?php if($_GET['result']=='postDeleted'){?>

	<div class="notify no-radius-bottom notify--error mt-10 " data-notify-hide>
		Пост успешно удален!
	</div>

<?php } ?>

<?php if($_GET['result']=='postCreated'){?>

	<div class="notify no-radius-bottom notify--success mt-10 success-error" data-notify-hide>
		Новый пост добавлен!
	</div>

<?php } ?>

<?php if($_GET['result']=='postUpdated'){?>

	<div class="notify no-radius-bottom notify--success mt-10 success-error" data-notify-hide>
		Пост успешно отредактирован!
	</div>

<?php } ?>