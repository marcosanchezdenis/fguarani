
<!---------------------------------------------------------------------- CARR -------------------------------------------------------------------------->
  
<div id="carrousel_container-bg">
  <div id="carrousel_container">
      <div id="carrousel_container-title"> <?php echo $text_titulo ?></div>
      
<?php foreach ($content as $k => $i) {?>
      <div id="carrousel_container-item">
          <div id="carrousel_container-item-img"><?php echo $i['comp_imagen'] ?></div>
            <div id="carrousel_container-item-ico"> <?php echo $i['comp_imagen_ico'] ?></div>
          <div id="carrousel_container-item-title"> <?php echo $i['comp_titulo_link'] ?></div>
          <div id="carrousel_container-item-title-descr"> <?php echo $i['comp_titulo_desc'] ?></div>
          <div id="carrousel_container-item-descr"> <?php echo $i['comp_desc'] ?></div>
        </div>
<?php } ?>      
  </div>
</div>  
      
<!---------------------------------------------------------------------- CARR ------------------------------------------------------------------------->
  