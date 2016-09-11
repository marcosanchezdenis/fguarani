<!------------------------------------------------------------------------ BRAN -------------------------------------------------------------------------->

      <div id="disclaimer_container-title"> <p> <?php echo $text_titulo; ?> </p> </div>
    <div id="carrousel_container">
          <div class="row">
            <div class="span12">

              <div id="owl-demo" class="owl-carousel">
                <!--<div class="item"><a href="productos#otros"> <img src="images/Brand/2.jpg" alt="2"> </a></div>
                <div class="item"><a href="productos#vacuna"> <img src="images/Brand/3.jpg" alt="3"> </a></div>
                <div class="item"><a href="productos#hamburguesas"> <img src="images/Brand/4.jpg" alt="4"> </a></div>
                <div class="item"><a href="productos#fiambres"> <img src="images/Brand/5.jpg" alt="5"> </a></div>
                <div class="item"><a href="productos#papas"> <img src="images/Brand/1.jpg" alt="1"> </a></div>-->
                <?php foreach ($banners as $key => $value) { ?>
                  <div class="item"><a href="<?php echo $value['link']?>"> <img src="<?php echo $value['image']?>" alt="1"> </a></div>
                <?php }?>
               
              </div>
              
            </div>
          </div>
      </div>
        <script>
    $(document).ready(function() {
      $("#owl-demo").owlCarousel({
        autoPlay: 3000,
        items : 4,
        itemsDesktop : [1199,3],
        itemsDesktopSmall : [979,3]
      });

    });
    </script>
 
<!---------------------------------------------------------------------- BRAN ------------------------------------------------------------------------->



