<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Person_Model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function _get_by_id($id)
    {
        $sp = 'call sp_get_person_by_id(?)';
        $query = $this->db->query($sp, array('id' => $id));
        return ($query->num_rows() > 0) ? $query->result() : false;
    }

    public function _create()
    {
        $data = array(
            'first_name' => $this->input->post('first_name'),
            'middle_name' => $this->input->post('middle_name'),
            'last_name' => $this->input->post('last_name'),
            'country' => $this->input->post('country'),
            'institution' => $this->input->post('institution'),
            'designation' => $this->input->post('designation'),
            'badge_name' => $this->input->post('badge_name'),
            'contact_number' => $this->input->post('contact_number'),
            'email' => $this->input->post('email'),
            'presenter' => $this->input->post('presenter'),
            'food_preference' => $this->input->post('food_preference'),
            'dt_created' => date('Y-m-d H:i:s'),
            'ec_name' => $this->input->post('ec_name'),
            'ec_contact_number' => $this->input->post('ec_contact_number'),
            'ec_relationship' => $this->input->post('ec_relationship'),
            'paper_number' => $this->input->post('paper_number'),
            'program_enrolled_in' => $this->input->post('program_enrolled_in'),
            'school_enrolled_at' => $this->input->post('school_enrolled_at')
        );

        $sp = 'call sp_add_person(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
        $this->db->query($sp, $data);
    }

    public function _update($id)
    {
        $data = array(
            'id' => $id,
            'first_name' => $this->input->post('first_name'),
            'middle_name' => $this->input->post('middle_name'),
            'last_name' => $this->input->post('last_name'),
            'country' => $this->input->post('country'),
            'institution' => $this->input->post('institution'),
            'designation' => $this->input->post('designation'),
            'badge_name' => $this->input->post('badge_name'),
            'contact_number' => $this->input->post('contact_number'),
            'email' => $this->input->post('email'),
            'presenter' => $this->input->post('presenter'),
            'food_preference' => $this->input->post('food_preference'),
            'dt_update' => date('Y-m-d H:i:s'),
            'ec_name' => $this->input->post('ec_name'),
            'ec_contact_number' => $this->input->post('ec_contact_number'),
            'ec_relationship' => $this->input->post('ec_relationship'),
            'paper_number' => $this->input->post('paper_number'),
            'program_enrolled_in' => $this->input->post('program_enrolled_in'),
            'school_enrolled_at' => $this->input->post('school_enrolled_at')
        );

        $sp = 'call sp_update_person(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
        $this->db->query($sp, $data);
    }

    public function _delete($id)
    {
        $sp = 'call sp_delete_person(?)';
        $this->db->query($sp, array('id' => $id));
    }
}

/* 
 * end of file 
 * location: models/Person_model.php
 */