<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
    private $id = '';
    private $role = '';

    public function __construct()
    {
        parent::__construct();
        $this->output->enable_profiler(FALSE);
        $this->id = (int)user('id');
        $this->role = (int)user('role_id');
    }

    public function index()
    {
        $this->ballot_form();
    }

    public function ballot_form()
    {
        if (logged_in() && $this->role === 2) {
            $view_data = [
                'page_title' => 'Ballot Form',
                'page_header' => 'EVS'
            ];

            $this->load->view('_shared/header', $view_data);
            $this->load->view('user/ballot-form');
        } else {
            redirect('auth', 'refresh');
        }
    }

    public function submit_form()
    {
        if (logged_in() && $this->role === 2) {
            $this->form_validation
                ->set_rules('candidate_id[]', 'Candidate', 'required', array('required' => 'Please select a %s.'))
                ->set_error_delimiters('<li>', '</li>');

            if ($this->form_validation->run()) {
                $this->tally_model->_create();
                redirect('auth/signout', 'refresh');
            } else {
                $view_data = [
                    'page_title' => 'Ballot Form',
                    'page_header' => 'EVS'
                ];
                $this->load->view('_shared/header', $view_data);
                $this->load->view('user/ballot-form');
            }
        } else {
            redirect('auth', 'refresh');
        }
    }
}

/* End of file: User.php */
/* Location: application/controller/User.php */
