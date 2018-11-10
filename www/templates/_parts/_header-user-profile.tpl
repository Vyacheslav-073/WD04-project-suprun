<div class="header-right__col">
    <div class="avatar avatar--small">

        <?php if ($_SESSION['logged_user']['avatar_small'] !='') {?>
            <img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="<?=$_SESSION['logged_user']['name']?><?=$_SESSION['logged_user']['secondname']?>" />
        <?php } else {?>
            <img src="<?=HOST?>templates/assets/img/avatars/noavatarsmall" alt="no avatar" />
        <?php }?>

        <img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="avatar" />

    </div>

    <div class="header-user">

        <p class="header-user__name">
            <?=$_SESSION['logged_user']['name']?>
            <?=$_SESSION['logged_user']['secondname']?>
        </p>

        <span> пользователь</span>

        <div class="header-user__but">
            <a class="button button--profile" href="<?=HOST?>profile">Профиль</a>
            <a class="button button--profile" href="<?=HOST?>logout">Выход</a>
        </div>

    </div>
</div>