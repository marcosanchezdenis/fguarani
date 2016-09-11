<?php echo $header; ?>
<div id="slide_container-bg">

<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>



  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>


    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
     



      



     





      <!-- End Locations -->

      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <legend><?php echo $text_contact; ?></legend>



          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-8">
              <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>

         <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-last"><?php echo $entry_last; ?></label>
            <div class="col-sm-8">
              <input type="text" name="last" value="<?php echo $last; ?>" id="input-last" class="form-control" />
              <?php if ($error_last) { ?>
              <div class="text-danger"><?php echo $error_last; ?></div>
              <?php } ?>
            </div>
          </div>

          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-phone"><?php echo $entry_phone; ?></label>
            <div class="col-sm-8">
              <input type="text" name="phone" value="<?php echo $phone; ?>" id="input-phone" class="form-control" />
              <?php if ($error_phone) { ?>
              <div class="text-danger"><?php echo $error_phone; ?></div>
              <?php } ?>
            </div>
          </div>

          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-8">
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
            </div>
          </div>


        

        <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_country; ?></label>
            <div class="col-sm-8">
            <select name="country_id" id="input-country" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($countries as $country) { ?>
                <?php if ($country['country_id'] == $country_id) { ?>
                <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
              <?php if ($error_country) { ?>
              <div class="text-danger"><?php echo $error_country; ?></div>
              <?php } ?>
            </div>
          </div>

          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-zone"><?php echo $entry_zone; ?></label>
            <div class="col-sm-8">
              <select name="zone_id" id="input-zone" class="form-control">
              </select>
              <?php if ($error_zone) { ?>
              <div class="text-danger"><?php echo $error_zone; ?></div>
              <?php } ?>
            </div>
          </div>


        <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-formacion"><?php echo $entry_formacion; ?></label>
            <div class="col-sm-8">
              <select name="formacion_id" id="input-formacion" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($formaciones as $formacion) { ?>
                <option value="<?php echo $formacion['f_id']; ?>"><?php echo $formacion['f_value']; ?></option>
                <?php } ?>
              </select>
              <?php if ($error_formacion) { ?>
              <div class="text-danger"><?php echo $error_formacion; ?></div>
              <?php } ?>
            </div>
          </div>


          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-puesto"><?php echo $text_puesto; ?></label>
            <div class="col-sm-8">
              <select name="puesto_id" id="input-puesto" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($puestos as $formacion) { ?>
                <option value="<?php echo $formacion['f_id']; ?>"><?php echo $formacion['f_value']; ?></option>
                <?php } ?>
              </select>
              <?php if ($error_puesto) { ?>
              <div class="text-danger"><?php echo $error_puesto; ?></div>
              <?php } ?>
            </div>
          </div>


         <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-intereses"><?php echo $text_intereses; ?></label>
            <div class="col-sm-8">
            
        
                <?php foreach ($intereses as $formacion) { ?>
                <div class="col-sm-3">
                  <input type="checkbox" name="interes_id[]" value="<?php echo $formacion['f_id']; ?>"  /> <?php echo $formacion['f_value']; ?>
                </div>
                <?php } ?>
        

              <?php if ($error_intereses) { ?>
              <div class="text-danger"><?php echo $error_intereses; ?></div>
              <?php } ?>
            </div>
          </div>

        <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-file"><?php echo $entry_file; ?></label>
            <div class="col-sm-8">
                <button type="button" id="button-upload" data-loading-text="Uploading.." class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $text_file; ?></button>
                <input type="hidden" name="file" value="" id="file"/>
            </div>
        </div>

          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
            <div class="col-sm-8">
              <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
              <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
            </div>
          </div>



          <?php echo $captcha; ?>


        </fieldset>
        <div class="buttons">
          <div class="pull-right">
            <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
        </div>
      </form>
      </div>
    <?php echo $column_right; ?></div>
</div>
</div>
<?php echo $content_bottom; ?>
<script>
    $('button[id^=\'button-upload\']').on('click', function() {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        timer = setInterval(function() {
            if ($('#form-upload input[name=\'file\']').val() != '') {
                clearInterval(timer);

                $.ajax({
                    url: 'index.php?route=tool/upload',
                    type: 'post',
                    dataType: 'json',
                    data: new FormData($('#form-upload')[0]),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function() {
                        $(node).button('loading');
                    },
                    complete: function() {
                        $(node).button('reset');
                    },
                    success: function(json) {
                        $('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            alert(json['success']);

                            $(node).parent().find('input').attr('value', json['code']);
                        }
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
    });
</script>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {
  $.ajax({
    url: 'index.php?route=account/account/country&country_id=' + this.value,
    dataType: 'json',
    beforeSend: function() {
      $('select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
    },
    complete: function() {
      $('.fa-spin').remove();
    },
    success: function(json) {
      if (json['postcode_required'] == '1') {
        $('input[name=\'postcode\']').parent().parent().addClass('required');
      } else {
        $('input[name=\'postcode\']').parent().parent().removeClass('required');
      }

      html = '<option value=""><?php echo $text_select; ?></option>';

      if (json['zone'] && json['zone'] != '') {
        for (i = 0; i < json['zone'].length; i++) {
          html += '<option value="' + json['zone'][i]['zone_id'] + '"';

          if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
            html += ' selected="selected"';
          }

          html += '>' + json['zone'][i]['name'] + '</option>';
        }
      } else {
        html += '<option value="0" selected="selected"><?php echo $text_select; ?></option>';
      }

      $('select[name=\'zone_id\']').html(html);
    },
    error: function(xhr, ajaxOptions, thrownError) {
      alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    }
  });
});

$('select[name=\'country_id\']').trigger('change');
//--></script>



<!---------------------------------------------------------------------- CARR -------------------------------------------------------------------------->
  
<!--<div id="carrousel_container-bg">
  <div id="carrousel_container">
    
      <div id="disclaimer_container-title" style="color: #00539e;"> <p> ¿Dónde nos encontramos? </p> </div>
      <div id="carrousel_container-item">
          <div id="carrousel_container-item-img"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7208.629008591005!2d-57.342142!3d-25.394281!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd93bd95a36c854e1!2sFrigorifico+Guarani!5e0!3m2!1ses!2sus!4v1446594431390" width="250" height="200" frameborder="0" style="border:0" allowfullscreen></iframe> </div>
          <div id="carrousel_container-item-ico"> <img src="/images/misc/icon-meat-10.png"></div>
          <div id="carrousel_container-item-title"> ITAUGUÁ </div>
          <div id="carrousel_container-item-title-descr"> Planta de Alimentos y Sub-Productos</div>
          <div id="carrousel_container-item-descr" style="padding: 4% 0%;">
          
                <strong>Procesadora de Sub-Productos.</strong><br>
                <strong>Dirección:</strong> Ruta 2. Mcal. Estigarribia Km. 30,5. Itauguá, Paraguay.<br>
                <strong>Teléfono:</strong> (0294) 221 353<br>
                <strong style="float: left; margin-right: 2px;">Correo:</strong></br> <a href="mailto:itaugua@fguarani.com.py" style="float: left; color: #fff;">itaugua@fguarani.com.py</a></br><a href="mailto:Info@fguarani.com.py" style="float: left; color: #fff;"> Info@fguarani.com.py</a>
          
          </div>
        </div>
        
      <div id="carrousel_container-item">
          <div id="carrousel_container-item-img"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14428.277752931246!2d-57.544085!3d-25.301871!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9a27a4be438080a1!2zRnJpZ29yw61maWNvIEd1YXJhbsOt!5e0!3m2!1ses!2sus!4v1446594483800" width="250" height="200" frameborder="0" style="border:0" allowfullscreen></iframe></div>
            <div id="carrousel_container-item-ico"> <img src="/images/misc/icon-meat-10.png"></div>
          <div id="carrousel_container-item-title"> ASUNCIÓN </div>
          <div id="carrousel_container-item-title-descr"> Planta procesadora de <br> Carne Vacuna <br></div>
          <div id="carrousel_container-item-descr" style="padding: 4% 0%;"> 
          
            <strong>Dirección:</strong> Avda. Santa Teresa y Chaco Boreal. Fernando de la Mora, Paraguay.<br>
            <strong>Teléfono:</strong> (021) 670 796 / (021) 670 800<br>
            <strong style="float: left; margin-right: 2px;">Correo:  </strong></br> <a href="mailto:fg@fguarani.com.py" style="float: left; color: #fff;">fg@fguarani.com.py </a></br><a href="mailto:Info@fguarani.com.py" style="float: left; color: #fff;"> Info@fguarani.com.py</a></br></br></div>
          
        </div>
        
        <div id="carrousel_container-item">
          <div id="carrousel_container-item-img" ><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d115255.62618392258!2d-54.627233!3d-25.480412!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb3f130f8db384342!2zRnJpZ29yw61maWNvIEd1YXJhbsOt!5e0!3m2!1ses!2sus!4v1446594524909" width="250" height="200" frameborder="0" style="border:0" allowfullscreen></iframe></div>
            <div id="carrousel_container-item-ico" > <img src="/images/misc/icon-meat-10.png"></div>
          <div id="carrousel_container-item-title"> Centro de Distribuición CDE </div>
          <div id="carrousel_container-item-title-descr"> Planta de distribuición de<br>  productos <br></div>
          <div id="carrousel_container-item-descr" style="padding: 4% 0%;">
          
            <strong>Dirección:</strong> Bº Félix Azara. Súper carretera camino a Itaipú, frente al Paraná Country Club, dentro de la Cantera Acaray.<br>
            <strong>Teléfono:</strong> (061) 574 534<br>
            <strong style="float: left; margin-right: 2px;">Correo:</strong></br> <a href="mailto:guaranicde@fguarani.com.py" style="float: left; color: #fff;">guaranicde@fguarani.com.py</a></br><a href="mailto:Info@fguarani.com.py" style="float: left; color: #fff;"> Info@fguarani.com.py</a> </div>
        </div>
        
        <div id="carrousel_container-item">
          <div id="carrousel_container-item-img"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3607.9131315273216!2d-57.608706103427124!3d-25.273507496358018!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x945da7c9ad4ae1a9%3A0xab21ca78c52c9781!2sAvenida+General+Jos%C3%A9+Gervasio+Artigas+1921%2C+Asunci%C3%B3n%2C+Paraguay!5e0!3m2!1ses-419!2ses!4v1447361909713" width="250" height="200" frameborder="0" style="border:0" allowfullscreen></iframe></div>
            <div id="carrousel_container-item-ico" > <img src="/images/misc/icon-meat-10.png"></div>
          <div id="carrousel_container-item-title">  Corporativo Asunción </div>
          <div id="carrousel_container-item-title-descr"> Operaciones<br><br></div>
          <div id="carrousel_container-item-descr" style="padding: 4% 0%;">
          
            <strong>Dirección:</strong>Avda. Artigas 1921 1er piso.<br>
            <strong>Teléfono:</strong> (021) 293 448<br>
            <strong style="float: left; margin-right: 2px;">Correo:</strong></br>  <a href="mailto:fg@fguarani.com.py" style="float: left; color: #fff;">fg@fguarani.com.py</a><br><a href="mailto:fgburguer@fguarani.com.py" style="float: left; color: #fff;">fgburguer@fguarani.com.py</a><a href="mailto:fgembutidos@fguarani.com.py" style="float: left; color: #fff;">fgembutidos@fguarani.com.py</a></br><a href="mailto:Info@fguarani.com.py" style="float: left; color: #fff;"> Info@fguarani.com.py</a> </div>
        </div>
        
  </div>
</div>  -->
      
<!---------------------------------------------------------------------- CARR -------------------------------------------------------------------------->
<?php echo $footer; ?>
