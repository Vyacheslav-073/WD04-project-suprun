<div class="content">
    <div class="container user-content section-page">
        <div class="row">
            <div class="col-md-10 offset-md-1">
				<div class="post">
				    <div class="post-row-top">
                    
				        <h1><?=$post['title']?></h1>
				        
				        <?PHP  if (isAdmin()) { ?>
				            <div class="button-right-top">                            
				                <a class="button_position button button--edit mt-25" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>">Редактировать</a>				            
								<a class="button button--remove mt-25" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>">Удалить</a>
				            </div>
				        <?PHP } ?>
				    </div>
				    <div class="post-info">
				        <div class="post-info__author"><?=$post['name']?> <?=$post['secondname']?></div>
				        <div class="post-info__topic">
				            <a class="post-info__link" href="#"><?=$post['cat_title']?></a>
				        </div>
				        <div class="post-info__date"><?php echo rus_date("j F Y H:i", strtotime($post['date_time'])); ?></div>
				        <div class="post-info__comments">
				            <a class="post-info__link" href="#">2 комментария</a>
				        </div>
				    </div>
				    <div class="post-img">
				        
				        <?php if ($post['post_img'] !='') { ?>
				            <img src="<?=HOST?>usercontent/blog/<?=$post['post_img']?>" alt="<?=$post['title']?>" />
				        <?php } ?>
				    
				    </div>
				    
				    <div class="post-text">
				        <?=$post['text']?>
				    </div>
				    
				</div>
								
				<div class="post-buttons-navigation">
				    <a class="button button--icon-left" href="#"><i class="fas fa-arrow-left"></i>Назад</a>
				    <a class="button button--icon-right button-blog-next" href="#">Вперёд<i class="fas fa-arrow-right"></i></a>
				</div>

				<h2> 2 комментария</h2>

				    <div class="comments-item">
                    
				        <div class="avatar-block">
				            <div class="avatar avatar--small">
				                <img src="../img/avatars/avatar-2.jpg" alt="avatar" />
				            </div>
				        </div>

				        <div class="comment-item__content">
                        
				            <div class="comment-item__top">
								<div class="user-name"> Джон До</div>
								<div class="comment-item__date">
                                    <span><i class="far fa-clock"></i></span>
                                    <span>05 мая 2017 года в 15:45</span>
                                </div>
				            </div>

				            <div class="comment-item__text">Замечательный парк, обязательно отправлюсь туда этим летом. </div>

				        </div>
				    </div>
				    
				    <div class="comments-item">
                    
				        <div class="avatar-block">
				            <div class="avatar avatar--small">
				                <img src="../img/avatars/avatar-3.jpg" alt="avatar" />
				            </div>
				        </div>

				        <div class="comment-item__content">
                        
				            <div class="comment-item__top">
								<div class="user-name"> Джон До</div>
								<div class="comment-item__date">
								    <span><i class="far fa-clock"></i></span>
								    <span>05 мая 2017 года в 15:45</span>
								</div>
				            </div>

				            <div class="comment-item__text">Замечательный парк, обязательно отправлюсь туда этим летом.</div>

				        </div>
				    </div>
				    
                    <!-- Добавление комментария -->
				    <h2> Оставить комментарий</h2>

				    <form class="comment-add-block" id="commentForm" method="POST" action="<?=HOST?>blog/post?id=<?=$post['id']?>">
                    
				        <div class="comment-add-block__left">
				            <div class="avatar avatar--small">
				                <?php if ( $_SESSION['logged_user']['avatar'] != "" ) { ?>
				                <img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar']?>" alt="<?=$_SESSION['logged_user']['name']?><?=$_SESSION['logged_user']['secondname']?>" />
				                <?php } ?>
				            </div>
				        </div>

				        <div class="comment-add-block__right">
				            <div class="comment-add-block__right-title">
				                <?=$_SESSION['logged_user']['name']?>
				                <?=$_SESSION['logged_user']['secondname']?>
				            </div>
				            <div class="notify notify--error" style="display: none;" data-error-comment-empty >Комментарий не может быть пустым</div>
				            <textarea class="textarea textarea--comment-add" name="textComment" placeholder="Присоединиться к обсуждению..."></textarea>
				            <input type="hidden" value="newComment" name="addComment">
				            <input type="submit" class="button" value="Опубликовать" data-add-comment >
				        </div>

				    </form>
                    <!-- // Добавление комментария -->    
           
            </div>
        </div>
    </div>
</div>