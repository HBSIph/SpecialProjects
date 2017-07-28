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
        );

        $sp = 'call sp_add_person(?, ?, ?)';
        $this->db->query($sp, $data);
    }

    public function _update($id)
    {
        $data = array(
            'id' => $id,
            'first_name' => $this->input->post('first_name'),
            'middle_name' => $this->input->post('middle_name'),
            'last_name' => $this->input->post('last_name'),
        );

        $sp = 'call sp_update_person(?, ?, ?, ?)';
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