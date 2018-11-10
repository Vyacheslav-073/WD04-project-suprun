<div class="content">
    <div class="container user-content section-page feedback-page">
        <div class="row">
            <div class="col-md-10 offset-md-1">

                <?PHP
                    if( isset ($_GET['result'])){
	                    include ROOT ."templates/contacts/_results.tpl";
                    }
                ?>

                <div class="title mb-10">Сообщения от пользователей</div>

                <?php
                    foreach ($messages as $message) {
                        include ROOT . "/templates/contacts/_message-card.tpl";
                    }
                ?>

            </div>
        </div>
    </div>
</div>