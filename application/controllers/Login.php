<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class login extends CI_Controller
{

     public function __construct()
     {
          parent::__construct();
          //Cargamos el modelo del controlador
          $this->load->model('model_login');
     }
     /*FUNCION QUE CARGA EL LOGIN*/
     function MuestraLogin(){
          $this->load->view('layout/login/header');
          $this->load->view('layout/login/view_login');
          $this->load->view('layout/login/footer');
	 }
      function Muestranada(){
          $this->load->view('layout/entrada');
          
      }
     public function index()
     {
          /*VALIDAMOS SI LA SESION ES ACTIVA REDIRIGIMOS AL HOME, SI NO AL LOGIN*/
          if($this->session->userdata('is_logged_in')){
               $this->load->view('layout/panel/header');
               $this->load->view('layout/panel/menu');
			$this->load->view('layout/panel/PanelAdmi');
			$this->load->view('layout/panel/footer');
          }else{
               $this->MuestraLogin();
          }
     }
     function CerrarSesion(){
          /*destrozamos la sesion activay nos vamos al login de nuevo*/
          if($this->session->userdata('is_logged_in')){
               $this->session->sess_destroy(); 
               //$this->MuestraLogin();
               $this->MuestraLogin();
          }
     }
     public function ValidarAcceso(){
          /*Campos para validar que no esten vacio los campos*/
          $this->form_validation->set_rules("username", "Usuario", "trim|required");
          $this->form_validation->set_rules("password", "Password", "trim|required");   
          /*Campos para validar con la base de datos*/
          $username = $this->input->post('username');
          $password = md5($this->input->post('password'));
          $url      = $this->input->post('url');
           if ($this->form_validation->run() == false)
          {
               /*validamos si trae algun registro la consulta entonces nos logeamos*/
			$user = $this->model_login->LoginBD($username, $password);
               if(count($user) == 1){
                    $session = array(
                         'ID'           => $user->ID,
                         'USUARIO'      => $username,
                         'NOMBRE'       => $user->NOMBRE,
                         'APELLIDOS'    => $user->APELLIDOS,
                         'EMAIL'        => $user->EMAIL,
                         'TIPOUSUARIO'  => $user->TIPO,
                         'is_logged_in' => TRUE,                 
                         );
                    /*Cargamos permisos de usuario y lo guardamos en una sesion*/
                    //$Menu = $this->model_login->PermisosMenu($user->ID);
                    $this->session->set_userdata($session);//Cargamos la sesion de datos del usuario logeado
                    $this->session->set_userdata($Menu);//cargamos la sesion del menu de acuerdo a los permisos
                    redirect($this->index());//nos vamos al index
               }else{
				//en caso contrario mostramos el error de usuario o contraseña invalido
                    $this->session->set_flashdata('msg', '<div class="alert alert-danger text-center">Usuario/Contraseña Invalido</div>');
                    $this->Muestranada();
               }
          }
          else
          {
               $this->Muestranada();
          }
     }
}

/* Archivo login.php */
/* Location: ./application/controllers/login.php */