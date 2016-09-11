<div id="slide_container-bg">
        <div id="slide_container">
        
            <div class="banner">

              
            <ul>
              <?php //print_r($banners); ?>
              <?php foreach ($banners as $banner) { ?>
                <li style="background-image: url('<?php echo $banner['image']?>');"></li>
              <?php } ?>
                <!-- <li style="background-image: url('images/slide/1.jpg'); margin-left: -40px;"></li>
                <li style="background-image: url('images/slide/2.jpg');"></li>
                <li style="background-image: url('images/slide/3.jpg');"></li>
                <li style="background-image: url('images/slide/4.jpg');"></li>
                <li style="background-image: url('images/slide/5.jpg');"></li>
                <li style="background-image: url('images/slide/6.jpg');"></li> -->
            </ul>
            </div>
            
            <script>
                if(window.chrome) {
                    $('.banner li').css('background-size', '100% 100%');
                }
            
                $('.banner').unslider({
                    arrows: false,
                    fluid: true,
                    dots: true
                });
                $('a[href^="#"]').click(function() {
                    var target = $($(this).attr('href'));
                    var pos = target.offset(); 
                    if(pos) {
                        $('html, body').animate({
                            scrollTop: pos.top,
                            scrollLeft: pos.left
                        }, 1000);
                    }
                    return false;
                });
            
                var GoSquared = {acct: 'GSN-396664-U'};
            </script>
        
        </div>
  </div>