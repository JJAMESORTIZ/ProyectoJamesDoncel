<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<br><br>
<?php
    if ($this->session->userdata('is_logged_in')){
      echo '<h4 align="right">';
      echo '<small>';
      echo 'Bienvenido: <strong>'.$this->session->userdata('NOMBRE').' '.$this->session->userdata('APELLIDOS').'</strong>&nbsp;|&nbsp;';
      echo 'Tipo Usuario: <strong>'.$this->session->userdata('TIPOUSUARIO').'</strong>&nbsp;|&nbsp;';
      echo anchor("login/CerrarSesion/", "Salir").'&nbsp;&nbsp;</small></h4>';
      echo '<hr/>';
      echo '<p align="right">';
      echo '<table align="right">';
      echo '<tr>';


     
                                  
            echo '</tr>';
      echo '</table>';   

      php?>
         <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">

      <?php
      echo '</p>';
      echo '<hr/>'; 
      

      foreach($this->session->userdata('Permisos') as $CrearMenu1){
                            
                            if($CrearMenu1["ID"]=="Error"){
                                echo '<td><font color="red">Sin Permisos para el Ver Menu. Solicita los Permisos con un Administrador</font></td>';
                             }else{ 


<<<<<<< HEAD
<<<<<<< HEAD
                                  echo '<div class="col-lg-3 col-xs-6"> <div class="'.$CrearMenu1["COLOR"].'"><div class="inner"> <h1>'.$CrearMenu1["DESCRIPCION"].'</h1></div><div class="icon"><i class="'.$CrearMenu1["ICON"].'"></i></div></td>';
=======
                                   echo '<div class="col-lg-3 col-xs-6"> <div class="'.$CrearMenu1["COLOR"].'"><div class="inner"> <h3>'.$CrearMenu1["DESCRIPCION"].'</h3><p>'.$CrearMenu1["DESCRIPCION"].'</p></div><div class="icon"><i class="'.$CrearMenu1["ICON"].'"></i></div></td>';
>>>>>>> d4bd2a1f0d22575d8dd712ca67b6104d8d8e6713
=======
                                   echo '<div class="col-lg-3 col-xs-6"> <div class="'.$CrearMenu1["COLOR"].'"><div class="inner"> <h3>#</h3><p>'.$CrearMenu1["DESCRIPCION"].'</p></div><div class="icon"><i class="'.$CrearMenu1["ICON"].'"></i></div></td>';
>>>>>>> 1409ca77e36705194d9fe7236fc9858fcea2f9b1
                                  echo ' <a href="http://localhost/ProyectoJamesDoncel/index.php'.$CrearMenu1["URL"].'" class="small-box-footer">
            Acceder <i class="fa fa-arrow-circle-right"></i></a></div></div>';
      
                            }
      }
    
    }else{
      echo '<hr/>';
    }
  
    
   ?>
   </div>
   </section>

  
<<<<<<< HEAD
<<<<<<< HEAD
      <!--<section class="content">
        <!-- Small boxes (Stat box) --
        <div class="row">

              

        <!-- Small boxes (Stat box) --
        <div class="row">
          <div class="col-lg-3 col-xs-6">
            <!-- small box --
            <div class="small-box bg-orange">
              <div class="inner">
                <h3>#</h3>

                <p>Gestionar Tecnicos</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="http://localhost/ProyectoDocfis/index.php/tecnicos" class="small-box-footer">Acceder<i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
        </div></section>-->
=======
      
>>>>>>> d4bd2a1f0d22575d8dd712ca67b6104d8d8e6713
=======
      
>>>>>>> 1409ca77e36705194d9fe7236fc9858fcea2f9b1
      
    
  



 