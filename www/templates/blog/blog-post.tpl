<div class="content">
    <div class="container user-content section-page">
        <div class="row">
            <div class="col-md-10 offset-md-1">
				<div class="post">
				    <div class="post-row-top">
						<?php
                            if (isAdmin()) {
				                $additionalHeaderClass = 'mr-200';
				            }
						?>
                        <h1 class="<?=$additionalHeaderClass?>"><?=$post['title']?></h1>

				        <?php  if (isAdmin()) {?>
				        <div class="button-right-top">
				            <a class="button_position button button--edit mt-25" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>">Редактировать</a>
				            <a class="button button--remove mt-25" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>">Удалить</a>
				        </div>
				        <?php } ?>

				    </div>
				    <div class="post-info">
				        <div class="post-info__author"><?=$post['name']?> <?=$post['secondname']?></div>
				        <div class="post-info__topic"><a class="post-info__link" href="#"><?=$post['cat_title']?></a></div>
				        <div class="post-info__date"><? echo rus_date(" d F Y H:i", strtotime($post['date_time']));?></div>

				        <?php if (count($comments) > 0) {?>
				            <div class="post-info__comments"><a class="post-info__link" href="#comment"><?php commentNumber(count($comments));?></a></div>
				        <?php }?>
				    </div>
				        <?php if ($post['post_img'] !=''){?>
				    <div class="post-img">
				        <img src="<?=HOST?>usercontent/blog/<?=$post['post_img']?>" alt="<?=$post['title']?>" />
				    </div>
				        <?php }?>

				    <div class="post-text">
				        <p><?=$post['text']?></p>
				    </div>
				</div>
				<div class="post-buttons-navigation">
                    <?php if ($nextId != ''): ?>
                    <a class="button button--icon-left" href="<?=HOST?>blog/post?id=<?=$nextId?>">
                        <i class="fas fa-arrow-left"></i>Назад
                    </a>
                    <?php endif ?>
                    <?php if ($prevId != ''): ?>
                    <a class="button button--icon-right button-blog-next" href="<?=HOST?>blog/post?id=<?=$prevId?>">
                        <i class="fas fa-arrow-right"></i>Вперёд
                    </a>
                    <?php endif ?>
                </div>
				<?php if (count($comments) > 0) {?>
				<h2 id='comment'> <?php commentNumber(count($comments));?></h2>
				    <?php foreach ($comments as $comment){?>
				        <?php include ROOT. "templates/blog/_comment-card.tpl" ?>
				    <?php }?>
				<?php }?>

				<h2>Оставить комментарий</h2>

				<?php include ROOT. "templates/blog/_add-comment-form.tpl"?>

            </div>
        </div>
    </div>
</div>