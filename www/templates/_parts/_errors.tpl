<?php
        
    foreach ($errors as $error) {
        if (count($error) == 1) { ?>
    <!-- Однострочная ошибка -->
    <div class="mt-20 notify notify--error">
        <?=$error['title']?>
    </div>

    <?php   } else if ( count($error) == 2 ) { ?>
    <!-- Ошибка с описанием -->
    <div class="notify no-paddings">
        <div class="notify no-radius-bottom notify--error"><?=$error['title']?></div>
        <div class="notify notify--text no-radius-top">

            <?=$error['desc']?>
        
        </div>
    </div>
    <?php        
        }
    }    
?>