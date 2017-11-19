
<center>


    
<?php 
           $usuario = array(
              'name'        => "username",
              'id'          => "username",
              'size'        => "50",
              'value'       => set_value("username"),
              'placeholder' => "Teclea tu Email",
             );
           $password = array(
              'name'        => "password",
              'id'          => "password",
              'size'        => "50",
              'value'       => set_value("password"),
              'type'        => "password",
             );
          $attributes = array("class" => "form-horizontal", "id" => "loginform", "name" => "loginform");
          echo form_open("login/ValidarAcceso", $attributes);
?>



<form id="loginform"  name="loginform" class="form_horizontal" action="login/ValidarAcceso" method="post"><div class="container">
  <div class="row"> <!--Esta sera la fila para el formulario-->
                  <div class="col-sm-4 col-sm-offset-4 myform-cont" > <!--Esta classe offset dezplaza columnas a la derecha y myform-control-->
                      <div class="myform-top"> <!--clases perzonalizadas-->
                          <div class="myform-top-left">
                            <img src="<?php echo base_url();?>assets/img/Logo_fiscalia.jpg" class="img-responsive">
                              <p>Digita tu usuario y contraseña:</p>
                          </div>
                          <div class="myform-top-right">  <!--clases perzonalizadas-->
                            <i class="fa fa-key"></i>
                          </div>
                      </div>
                      <div class="myform-bottom">  <!--clases perzonalizadas-->
                        
                          <div class="form-group">
                              <input type="text" name="username" placeholder="Usuario..." class="form-control" id="username",>
                          </div>
                          <div class="form-group">
                              <input type="password" name="password" placeholder="Contraseña..." class="form-control" id="password">
                          </div>
                          <div class="row">
                      
                    </div>
                    <div class="col-md-6 col-md-offset-3">
                      <button input type="submit"  id="btn_login" value="Login" name="btn_login" class="mybtne">Entrar</button><br>
                          <button input type="reset" id="btn_cancel" value="Limpiar" name="btn_cancel" class="mybtne">Limpiar</button>
                    </div>
                          <br>
                          <br>
                          <?php echo $this->session->flashdata('msg'); ?>
                           <?php echo form_close(); ?>
                    
</div>
            
                   


<script src="/assets/js/vendor/popper.min.js"></script>
  <script src="<?php echo base_url();?>/assets/js/bootstrap.min.js"></script>

</center></div></div></div></form></center>
          

