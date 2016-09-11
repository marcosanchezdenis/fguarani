<!---------------------------------------------------------------------- CARR -------------------------------------------------------------------------->
  <div id="carrousel_container">


<?php foreach ($content as $k => $i) { ?>
    <div id="carrousel_container-item-white">
            <div id="carrousel_container-item-img"><? echo $i['comp_imagen'] ?></div>
            <div id="carrousel_container-item-ico"> <? echo $i['comp_imagen_ico'] ?></div>
            <div id="carrousel_container-item-title"><? echo $i['comp_titulo_link'] ?> </div>     
            <div id="carrousel_container-item-title-descr"> <? echo $i['comp_desc'] ?> </div>
    </div>
<?php  } ?>
</div> 
     
<!---------------------------------------------------------------------- CARR ------------------------------------------------------------------------->
