<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller
{
    private $id = '';

    public function __construct()
    {
        parent::__construct();
        $this->output->enable_profiler(FALSE);
        $this->id = (int)user('id');
    }

    public function index()
    {
        $this->signin();
    }

    public function signin()
    {
        if (logged_in()) {
            $this->_user_role();
        } else {
            $view_data = array(
                'page_title' => 'Login',
                'page_header' => 'NU-NS'
            );

            $this->load->view('_shared/header', $view_data);
            $this->load->view('_shared/signin-form');
        }
    }

    public function signin_ajax()
    {
        if (!$this->input->is_ajax_request()) {
            redirect('auth', 'refresh');
        }

        $this->form_validation
            ->set_rules('password', 'Access Code', 'trim|required|xss_clean')
            ->set_error_delimiters('<li>', '</li>');

        if ($this->form_validation->run()) {
            if ($this->authme->signin(set_value('password'))) {
                $view_data = array(
                    'status' => true
                );
                echo json_encode($view_data);
            } else {
                $view_data = array(
                    'status' => false,
                    'msg' => '<div class="alert alert-danger">Unable to login, Please double check your Access Code</div>',
                );
                echo json_encode($view_data);
            }
        } else {
            $view_data = array(
                'status' => false,
                'msg' => '<div class="alert alert-danger"><ul class="validation-errors">' . validation_errors() . '</ul></div>',
                'password' => form_error('password')
            );
            echo json_encode($view_data);
        }
    }

    public function signout()
    {
        $this->authme->signout('auth');
    }

    #helper
    private function _user_role()
    {
        switch (user('role_id')) {
            case 1:
                redirect('admin/persons', 'refresh');
                break;
            case 2:
                redirect('user/dashboard', 'refresh');
                break;
        }
    }
    #end helper
}

/* End of file: Auth.php */
/* Location: application/controller/Auth.php */