<div class="content">
    <div class="container user-content section-page">
        
        <?php if ( isAdmin() ) { ?>
        <div class="row justify-content-end">
            <a class="button button--edit mr-20" href="<?=HOST?>contacts-edit">Редактировать</a>
            <a class="button" href="<?=HOST?>messages">Сообщения</a>
        </div>
        <?php } ?>
        
        <div class="row">
            <div class="col-md-5">
				<div class="contacts__title title-1">Контакты</div>
				<div class="row align-items-start mb-15">
				    <div class="col-md-5">
				        <h6 class="contacts__item-name">Имя</h6>
				    </div>
				    <?php if ( @$contacts['name'] != "") { ?>
				    <div class="col-md-7">
				        <div class="contacts__item-address"><?=$contacts['name']?></div>
				    </div>
				    <?php } ?>
				</div>
				<div class="row align-items-start mb-15">
				    <div class="col-md-5">
				        <h6 class="contacts__item-name">Фамилия</h6>
				    </div>
				    <?php if ( @$contacts['secondname'] != "") { ?>
				    <div class="col-md-7">
				        <div class="contacts__item-address"><?=$contacts['secondname']?></div>
				    </div>
				    <?php } ?>
				</div>
				<div class="row align-items-start mb-15">
				    <div class="col-md-5">
				        <h6 class="contacts__item-name">Email</h6>
				    </div>
				    <div class="col-md-7">
                        <?php if ( @$contacts['email'] != "") { ?>
				        <div class="contacts__item-email">
				            <a href="#!">
				                <?=$contacts['email']?>
				            </a>
				        </div>
				        <?php } ?>
				    </div>
				</div>
				<div class="row align-items-start mb-15">
                    <?php if ( @$contacts['skype'] != "") { ?>
				    <div class="col-md-5">
				        <h6 class="contacts__item-name">Skype</h6>
				    </div>
				    <?php } ?>
				    <div class="col-md-7">
				        <div class="contacts__item-skype">
				            <a href="#!">
				                <?=$contacts['skype']?>
				            </a>
				        </div>
				    </div>
				</div>
				<div class="row align-items-start mb-15">
                    <?php if ( @$contacts['github'] != "") { ?>
				    <div class="col-md-5">
				        <h6 class="contacts__item-name">Github</h6>
				    </div>
				    <?php } ?>
				    <div class="col-md-7">
				        <div class="contacts__item-skype">
				            <a href="#!">
				                <?=$contacts['github']?>
				            </a>
				        </div>
				    </div>
				</div>
				<?php if ( @$contacts['vk'] != "" || @$contacts['fb'] != "" || @$contacts['twitter'] != "" ); ?>
				<div class="row align-items-start mb-15">
				    <div class="col-md-5">
				        <h6 class="contacts__item-name">Социальные сети</h6>
				    </div>
				    <div class="col-md-7">
                   
                    <?php if ( @$contacts['vk'] != "") { ?>
				        <div class="contacts__item-social mb-15">
				            <a href="<?=$contacts['vk']?>" target="_blank">Профиль Вконтакте</a>
				        </div>
				    <?php } ?>
				    
				    <?php if ( @$contacts['fb'] != "") { ?>
				        <div class="contacts__item-social mb-15">
				            <a href="<?=$contacts['fb']?>" target="_blank">Профиль Facebook</a>
				        </div>
				    <?php } ?>
				    
				    <?php if ( @$contacts['twitter'] != "") { ?>
				        <div class="contacts__item-social mb-15">
				            <a href="<?=$contacts['twitter']?>" target="_blank">Профиль Twitter</a>
				        </div>
				    <?php } ?>
				    
				    </div>
				</div>
				<div class="row align-items-start mb-15">
				    <div class="col-md-5">
				        <h6 class="contacts__item-name">Телефон</h6>
				    </div>
				    <?php if ( @$contacts['phone'] != "") { ?>
				    <div class="col-md-7">
				        <div class="contacts__item-phone"><?=$contacts['phone']?></div>
				    </div>
				    <?php } ?>
				</div>
				<div class="row align-items-start">
				    <div class="col-md-5">
				        <h6 class="contacts__item-name">Адрес</h6>
				    </div>
				    <?php if ( @$contacts['address'] != "") { ?>
				    <div class="col-md-7">
				        <div class="contacts__item-address"><?=$contacts['address']?></div>
				    </div>
				    <?php } ?>
				</div>
            </div>
            <div class="offset-md-1 col-md-4">
				<div class="contacts__title title-1">Связаться со мной</div>
				
				<?php include( ROOT . 'templates/_parts/_errors.tpl') ?>
				<?php include( ROOT . 'templates/_parts/_success.tpl') ?>
				
				<form class="form-contacts" action="<?=HOST?>contacts" method="POST" enctype="multipart/form-data">
				    <div class="form-group">
                        <label class="label">
                            <input class="input" name="name" type="text" placeholder="Введите имя" />
                        </label>
                    </div>
				    <div class="form-group">
                        <label class="label">
                            <input class="input" name="email" type="text" placeholder="Email" />
                        </label>
                    </div>
				    <div class="form-group">
                        <label class="label">
                            <textarea class="textarea" name="message" type="type" placeholder="Cообщение"></textarea>
                        </label>
                    </div>
				    <div class="form-contacts__file-upload">
				        <div class="file-upload__title title-6">Прикрепить файл</div>
				        <div class="file-upload__comment">div jpg, png, pdf, doc, весом до 2Мб.</div>
				        <input class="inputfile" type="file" name="file" id="file" />
				        <label class="label-input-file" for="file">Выбрать файл</label>
				        <span>Файл не выбран</span>
				        <input class="button button--save" name="newMessage" type="submit" value="Отправить" />
				    </div>
				</form>
            </div>
        </div>
    </div>
    <div class="map" id="map"></div>
</div>