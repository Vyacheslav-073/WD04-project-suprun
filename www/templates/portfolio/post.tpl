<?php 
    if(isAdmin()){
        include ROOT."templates/_parts/_admin-panel.tpl";
}?>

<div class="content">
    <section class="my-portfolio">
        <div class="my-portfolio__gradient">
            <div class="my-portfolio__logo pt-55 mb-100 ml-50">
                <div class="logo">
                    <div class="logo-icon logo-portfolio-icon"><i class="far fa-paper-plane"></i></div>
                    <div class="logo_description">
                        <a class="header-logo__title" href="#">Digital Lifestyle</a>
                        <a class="header-logo__sub" href="#">Сайт IT специалиста</a>
                    </div>
                </div>
            </div>
            <div class="container user-content">
                <div class="row">
                    <div class="post-row-top col-md-11   offset-md-1 my-portfolio__row">

                        <?php if(isAdmin()){
							$additionalHeaderClass='mr-100';
                        }?>

                        <h1 class='<?=@$additionalHeaderClass?>'>
                            <?=$work['title']?>
                        </h1>

                        <?php  if (isAdmin()) { ?>
                        <div class="button-right-top">
                            <a class="button_position button button--edit mr-25" href="<?=HOST?>portfolio/portfolio-edit?id=<?=$work['id']?>">Редактировать</a>
                            <a class="button button--remove mr-25" href="<?=HOST?>portfolio/portfolio-delete?id=<?=$work['id']?>">Удалить</a>
                        </div>
                        <?php } ?>

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <div class="post mb-0">
                            <div class="post-infom mt-0">
                                <div class="post-info__subtitle mb-55 my-portfolio__row">

                                    <div class="post-info__author">
                                        <?=$work['name']?>
                                            <?=$work['secondname']?>
                                    </div>

                                    <div class="post-info__topic">
                                        <a class="post-info__link" href="#">
                                            <?=$work['cat_title']?>
                                        </a>
                                    </div>

                                    <div class="post-info__date">
                                        <? echo rus_date(" d F Y H:i", strtotime($work['date_time']));?>
                                    </div>

                                </div>
                            </div>

                            <?php if ($work['work_image'] !=''){?>
                            <div class="post-img"><img src="<?=HOST?>usercontent/portfolio/<?=$work['work_image']?>" alt="ausmaids-home" /></div>
                            <?php }?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="my-portfolio__description">
        <div class="container user-content">
            <div class="row">
                <div class="mb-50 col-md-10 my-portfolio__row offset-md-1">
                    <div class="col-md-6 ml-md-0 pl-md-0">

                        <h3>Кратко о проекте</h3>

                            <?=$work['description']?>

                        <h3>Результат</h3>

                            <?=$work['result']?>
                    </div>
                    <div class="col-md-4">

                        <h3>Технологии</h3>

                        <nav class="my-portfolio__nav">
                            <?=$work['technology']?>
                        </nav>

                        <?php if ($work['link_work'] !=''){?>

                        <h3>Ссылка на проект</h3>
                        <a href="<?=$work['link_work']?>" target="_blank">
                            <?=$work['link_work']?>
                        </a>

                        <?php }?>

                        <?php if ($work['link_github'] !=''){?>

                        <h3>Код на github</h3>
                        <a href="<?=$work['link_github']?>" target="_blank">
                            <?=$work['link_github']?>
                        </a>

                        <?php }?>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 my-portfolio__buttons-nav offset-md-1">
                    <a class="button button--icon-left" href="<?=HOST?>portfolio">
                       <i class="fas fa-arrow-left"></i>Все работы
                    </a>
                    <a class="button button--icon-right" href="<?=HOST?>portfolio/post?id=<?=$work['id']?>">Следующая работа
                        <i class="fas fa-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>
</div>