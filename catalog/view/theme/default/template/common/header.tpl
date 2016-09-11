<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>


<link href='http://fonts.googleapis.com/css?family=Playfair+Display:900,400|Lato:300,400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/fonts/font-awesome-4.3.0/css/font-awesome.min.css" />

<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<link href="catalog/view/theme/default/stylesheet/index.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/menu.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">


 


<script src="/catalog/view/theme/default/script/menu.js"></script>
<script src="/catalog/view/theme/default/script/respond.min.js"></script>
<script type="text/javascript">
  function MM_swapImgRestore() { //v3.0
    var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
  }
  function MM_preloadImages() { //v3.0
    var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
  }
  
  function MM_findObj(n, d) { //v4.01
    var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
    if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
    for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
    if(!x && d.getElementById) x=d.getElementById(n); return x;
  }
  
  function MM_swapImage() { //v3.0
    var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
     if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
  }
</script>

<script src="/catalog/view/theme/default/script/slide/unslider.js"></script>
<script src="/catalog/view/theme/default/script/slide/unslider.min.js"></script>
<script src="/catalog/view/theme/default/script/modernizr.custom.js"></script>
<script src="/catalog/view/theme/default/script/carrousel.js"></script>

<!--------------------------------------------------------------------- FANCY ------------------------------------------------------------------------>

  <script type="text/javascript" src="/catalog/view/theme/default/script/fancybox/jquery.mousewheel-3.0.6.pack.js"></script>
  <script type="text/javascript" src="/catalog/view/theme/default/script/fancybox/jquery.fancybox.js?v=2.1.5"></script>
  
    <link rel="stylesheet" type="text/css" href="/catalog/view/theme/default/script/fancybox/jquery.fancybox.css?v=2.1.5" media="screen" />

  <script type="text/javascript">
    $(document).ready(function() {
      $('.fancybox').fancybox();
      
      $(".fancybox-effects-a").fancybox({
        helpers: {
          title : {
            type : 'outside'
          },
          overlay : {
            speedOut : 0
          }
        }
      });

      $(".fancybox-effects-b").fancybox({
        openEffect  : 'none',
        closeEffect : 'none',
        helpers : {
          title : {
            type : 'over'
          }
        }
      });

      $(".fancybox-effects-c").fancybox({
        wrapCSS    : 'fancybox-custom',
        closeClick : true,

        openEffect : 'none',

        helpers : {
          title : {
            type : 'inside'
          },
          overlay : {
            css : {
              'background' : 'rgba(238,238,238,0.85)'
            }
          }
        }
      });

      $(".fancybox-effects-d").fancybox({
        padding: 0,

        openEffect : 'elastic',
        openSpeed  : 150,

        closeEffect : 'elastic',
        closeSpeed  : 150,

        closeClick : true,

        helpers : {
          overlay : null
        }
      });

      $('.fancybox-buttons').fancybox({
        openEffect  : 'none',
        closeEffect : 'none',
        prevEffect : 'none',
        nextEffect : 'none',
        closeBtn  : false,
        helpers : {
          title : {
            type : 'inside'
          },
          buttons : {}
        },
        afterLoad : function() {
          this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
        }
      });

      $('.fancybox-thumbs').fancybox({
        prevEffect : 'none',
        nextEffect : 'none',
        closeBtn  : false,
        arrows    : false,
        nextClick : true,
        helpers : {
          thumbs : {
            width  : 50,
            height : 50
          }
        }
      });

      $('.fancybox-media')
        .attr('rel', 'media-gallery')
        .fancybox({
          openEffect : 'none',
          closeEffect : 'none',
          prevEffect : 'none',
          nextEffect : 'none',
          arrows : false,
          helpers : {
            media : {},
            buttons : {}
          }
        });

      $("#fancybox-manual-a").click(function() {
        $.fancybox.open('1_b.jpg');
      });

      $("#fancybox-manual-b").click(function() {
        $.fancybox.open({
          href : 'iframe.html',
          type : 'iframe',
          padding : 5
        });
      });

      $("#fancybox-manual-c").click(function() {
        $.fancybox.open([
          {
            href : '1_b.jpg',
            title : 'My title'
          }, {
            href : '2_b.jpg',
            title : '2nd title'
          }, {
            href : '3_b.jpg'
          }
        ], {
          helpers : {
            thumbs : {
              width: 75,
              height: 50
            }
          }
        });
      });


    });
  </script>

<!--------------------------------------------------------------------- FANCY ------------------------------------------------------------------------>




<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>




<body>
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <!--<li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>-->

        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <!--<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>-->
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
         <!--<li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>-->
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>

<!--        <div id="top_container">
    
        <div id="logo_container"> 
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
        </div>
        <div id="location_container-info"> <p><strong>Dirección:</strong> </p> <p> Avda. Artigas 1921 1er piso </p> <p> Asunción, Paraguay </p> </div>
        <div id="location_container"> </div>
        <div id="phone_container-number"><p><strong>Teléfono:</strong></p><p> +59521 293 448 / +59521 293 449</p>  </div>
        <div id="phone_container"> </div>-->

    <div id="top_container">
    
        <div id="logo_container"> 
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"  /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?> </div>
        <div id="location_container-info"> <p><strong>Dirección:</strong> </p> <p> Avda. Artigas 1921 1er piso </p> <p> Asunción, Paraguay </p> </div>
        <div id="location_container"> </div>
        <div id="phone_container-number"><p><strong>Teléfono:</strong></p><p> +59521 293 448 / +59521 293 449</p>  </div>
        <div id="phone_container"> </div>
    
    </div>
    
 
       
  
      <!--<div class="col-sm-3">--><?php echo $cart; ?><!--</div>-->

<?php if ($categories) { ?>
<!-- <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>-->
<?php } ?>
<div id="menu_container">
  <div id="cssmenu"><div id="menu-button"><?php echo $text_menu; ?></div>
  <ul>
    <li class="active"><a href="/"><span><?php echo $text_inicio; ?></span></a></li>
    <li class="has-sub"><a href="#"><span><?php echo $text_empresa; ?></span></a>
      <ul>
       <li><a href="/vision-y-mision"><span><?php echo $text_mision; ?></span></a></li>
       <li><a href="/valores"><span><?php echo $text_valores; ?></span></a></li>
       <li><a href="/politica"><span><?php echo $text_politica; ?></span></a></li>
     </ul>
   </li>
   <li class="has-sub"><a href="#"><span><?php echo $text_producto; ?></span></a>
    <ul>
     <li><a href="/hamburguesas"><span><?php echo $text_alimentos; ?></span></a></li>
     <li><a href="/subproductos"><span><?php echo $text_subproductos; ?></span></a></li>
   </ul>
 </li>
 <li><a href="/clientes"><span><?php echo $text_clientes; ?></span></a></li>
 <li><a href="/rse"><span><?php echo $text_rse; ?></span></a></li>
  <li class="has-sub"><a href="#"><span><?php echo $text_contacto; ?></span></a>
      <ul>
       <li><a href="/index.php?route=information/trabaja"><span><?php echo $text_trabajo; ?></span></a></li>
       <li><a href="/index.php?route=information/contact"><span><?php echo $text_contacto_mensaje; ?></span></a></li>
       
     </ul>
   </li>
  
  
 <div id="social_container"> 
  <a href="https://mail.google.com/mail/u/0/" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','/catalog/view/theme/default/images/social/em-1.png',1)" target="_blank"><img src="/catalog/view/theme/default/images/social/em.png" width="30" height="40" id="Image4"></a>

</div>
 <div id="social_container">
  <a href="https://instagram.com/guarani_f/" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image3','','/catalog/view/theme/default/images/social/tw-1.png',1)" target="_blank"><img src="/catalog/view/theme/default/images/social/tw.png" width="30" height="40" id="Image3"></a>
</div>
 <div id="social_container"> <a href="https://www.facebook.com/guaranihamburguesasyembutidos/" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image2','','/catalog/view/theme/default/images/social/fb-1.PNG',1)" target="_blank"><img src="/catalog/view/theme/default/images/social/fb.png" width="30" height="40" id="Image2"></a></div>
</ul>

</div>
</div>

