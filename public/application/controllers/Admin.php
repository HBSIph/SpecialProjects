<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{
    private $role = '';

    public function __construct()
    {
        parent::__construct();
        $this->output->enable_profiler(FALSE);
        $this->role = (int)user('role_id');
    }

    public function index()
    {
        $this->persons();
    }

    // Dashboard
    public function dashboard()
    {
        if (logged_in() && $this->role === 1) {
            $view_data = array(
                'page_title' => 'Overview',
                'page_header' => 'Dashboard'
            );

            $this->load->view('_shared/header', $view_data);
            $this->load->view('admin/dashboard');
        } else {
            redirect('auth', 'refresh');
        }
    }

    // Person
    public function persons()
    {
        if (logged_in() && $this->role === 1) {
            $view_data = array(
                'page_title' => 'Persons',
                'page_header' => 'List of Persons'
            );

            $this->load->view('_shared/header', $view_data);
            $this->load->view('admin/persons');
        } else {
            redirect('auth', 'refresh');
        }
    }

    public function persons_data()
    {
        if (logged_in() && $this->role === 1) {
            $this->datatables
                ->select('id, CONCAT(first_name, " ", middle_name, " ", last_name, " ", suffix) AS full_name, is_validated, is_voted, is_candidate, dt_updated', FALSE)
                ->from('tbl_person')
                ->where('role_id', 2)
                ->where('is_deleted', 0);
            echo $this->datatables->generate();
        } else {
            redirect('auth', 'refresh');
        }
    }

    public function person_details()
    {
        if (!$this->input->is_ajax_request()) {
            redirect('auth', 'refresh');
        }

        foreach ($this->person_model->_get_by_id($this->uri->segment(3)) as $row) {
            $qrcode = $this->_alpha_numeric_randomizer();
            $view_data = [
                'id' => (int)$row->id,
                'prefix' => $row->prefix,
                'first_name' => $row->first_name,
                'middle_name' => $row->middle_name,
                'last_name' => $row->last_name,
                'suffix' => $row->suffix,
                'is_candidate' => (int)$row->is_candidate,
                'position_id' => (int)$row->p_id,
                'position_name' => $row->position_name,
                'group_id' => (int)$row->g_id,
                'group_name' => $row->group_name,
                'access_code' => $qrcode,
                'qrcode' => $this->_qrcode_generator($qrcode)
            ];
            echo json_encode($view_data);
        }
    }

    public function add_person()
    {
        if (!$this->input->is_ajax_request()) {
            redirect('auth', 'refresh');
        }

        $this->form_validation
            ->set_rules('prefix', 'Prefix', 'trim|xss_clean')
            ->set_rules('first_name', 'First Name', 'trim|required|xss_clean')
            ->set_rules('middle_name', 'Middle Name', 'trim|xss_clean')
            ->set_rules('last_name', 'Last Name', 'trim|required|xss_clean')
            ->set_rules('suffix', 'Suffix', 'trim|xss_clean')
            ->set_rules('gender', 'Gender', 'trim|required|xss_clean')
            ->set_error_delimiters('<li>', '</li>');

        if ($this->form_validation->run()) {

            $this->person_model->_create();

            $view_data = [
                'status' => true,
                'msg' => '<div class="alert alert-success">New person added.</div>',
            ];
            echo json_encode($view_data);
        } else {
            $view_data = [
                'status' => false,
                'msg' => '<div class="alert alert-danger"><ul class="validation-errors">' . validation_errors() . '</ul></div>',
                'first_name' => form_error('first_name'),
                'last_name' => form_error('last_name'),
                'gender' => form_error('gender')
            ];
            echo json_encode($view_data);
        }
    }

    public function update_person()
    {
        if (!$this->input->is_ajax_request()) {
            redirect('auth', 'refresh');
        }

        $this->form_validation
            ->set_rules('first_name', 'First Name', 'trim|required|xss_clean')
            ->set_rules('middle_name', 'Middle Name', 'trim|xss_clean')
            ->set_rules('last_name', 'Last Name', 'trim|required|xss_clean')
            ->set_error_delimiters('<li>', '</li>');

        if ($this->form_validation->run()) {

            $this->person_model->_update($this->uri->segment(3));

            $view_data = [
                'status' => true,
                'msg' => '<div class="alert alert-success">Successfully updated.</div>',
            ];
            echo json_encode($view_data);
        } else {
            $view_data = [
                'status' => false,
                'msg' => '<div class="alert alert-danger"><ul class="validation-errors">' . validation_errors() . '</ul></div>',
                'first_name' => form_error('first_name'),
                'middle_name' => form_error('middle_name'),
                'last_name' => form_error('last_name')
            ];
            echo json_encode($view_data);
        }
    }

    public function delete_person()
    {
        if (!$this->input->is_ajax_request()) {
            redirect('auth', 'refresh');
        }

        if ($this->input->post('id')) {
            $this->person_model->_delete($this->uri->segment(3));
            $data = [
                'status' => true,
                'msg' => '<div class="alert alert-success">Successfully deleted.</div>'
            ];
            echo json_encode($data);
        } else {
            $data = [
                'status' => false,
                'msg' => '<div class="alert alert-danger">Unable to delete record.</div>'
            ];
            echo json_encode($data);
        }
    }

    #helper
    public function ddl_position()
    {
        if (!$this->input->is_ajax_request()) {
            redirect('auth', 'refresh');
        }

        $view_data = [
            'position' => $this->position_model->_get_all()
        ];

        echo json_encode($view_data);
    }

    public function ddl_group()
    {
        if (!$this->input->is_ajax_request()) {
            redirect('auth', 'refresh');
        }

        $view_data = [
            'group' => $this->group_model->_get_all()
        ];

        echo json_encode($view_data);
    }

    public function _alpha_numeric_randomizer()
    {
        $arr = str_split('ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'); // get all the characters into an array
        shuffle($arr); // randomize the array
        $arr = array_slice($arr, 5, 5); // get the four (random) characters out
        $str = implode('', $arr);
        return strtolower($str);
    }

    public function _qrcode_generator($access_code)
    {
        $params['data'] = $access_code;
        $params['level'] = 'H';
        $params['size'] = 7;
        $params['savename'] = FCPATH . 'assets/images/qrcode/' . $access_code . '-qrcode.png';
        $this->ciqrcode->generate($params);
        return base_url('assets/images/qrcode') . '/' . $access_code . '-qrcode.png';
    }
    #end helper
}

/* End of file: Admin.php */
/* Location: application/controller/Admin.php */