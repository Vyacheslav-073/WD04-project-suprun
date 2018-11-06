<div class="content">

    <div class="container user-content section-page">

        <div class="row align-items-center">

            <div class="col">
                <div class="title-1">Профиль</div>
            </div>

            <div class="col text-right">
                <a class="button button--edit" href="<?=HOST?>profile-edit">Редактировать</a>
            </div>

        </div>

        <div class="row">

            <div class="col-md-auto">

                <div class="avatar">

                    <?php 

						if ($_SESSION['logged_user']['avatar'] !='') {?>
                   
                            <img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar']?>" alt="avatar" />
                    
                    <?php } else {?>
                    
                            <img src="<?=HOST?>templates/assets/img/avatars/noavatar.png" alt="no avatar" />
                    
                    <?php }?>

                </div>

            </div>

            <div class="col ml-35">

                <div class="user-description mb-20">

                    <div class="user-description__title">Имя и фамилия</div>

                    <div class="user-description__desc">
                        <?=$currentUser->name?>
                        <?=$currentUser->secondname?>
                    </div>

                </div>

                <div class="user-description mb-20">

                    <div class="user-description__title">Email</div>

                    <div class="user-description__desc">
                        <?=$currentUser->email?>
                    </div>

                </div>

                <div class="user-description mb-20">

                    <div class="user-description__title">Страна, Город</div>

                    <div class="user-description__desc">
                        <?=$currentUser->country?>,
                        <?=$currentUser->city?>
                    </div>

                </div>

            </div>

        </div>

    </div>

</div>