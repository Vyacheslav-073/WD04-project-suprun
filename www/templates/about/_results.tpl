<?php if($_GET['result'] == 'messageCreated'){?>

    <div class="notify no-radius-bottom notify--error mt-10 success-error" data-notify-hide>
        Место работы успешно добавлено!
    </div>

<?php } ?>

<?php if($_GET['result'] == 'messageUpdate'){?>

    <div class="notify no-radius-bottom notify--error mt-10 success-error" data-notify-hide>
        Место работы успешно отредактировано!
    </div>

<?php } ?>

<?php if($_GET['result'] == 'messageDeleted'){?>

    <div class="notify no-radius-bottom notify--error mt-10 " data-notify-hide>
        Место работы успешно удалено!
    </div>

<?php } ?>