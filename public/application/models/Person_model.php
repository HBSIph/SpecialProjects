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

    public function _get_candidate($id)
    {
        $this->db
            ->select('t1.id, t1.first_name, t1.middle_name, t1.last_name, t1.prefix, t1.suffix, t1.avatar, t3.name AS group_name')
            ->from('tbl_person AS t1')
            ->join('tbl_position AS t2', 't2.id = t1.position_id', 'left')
            ->join('tbl_group AS t3', 't3.id = t1.group_id', 'left')
            ->where('t1.position_id', $id)
            ->order_by('t1.group_id', 'ASC');
        $query = $this->db->get();
        return ($query->num_rows() > 0) ? $query->result() : false;
    }

    public function _create()
    {
        $data = array(
            'prefix' => $this->input->post('prefix'),
            'first_name' => $this->input->post('first_name'),
            'middle_name' => $this->input->post('middle_name'),
            'last_name' => $this->input->post('last_name'),
            'suffix' => $this->input->post('suffix'),
            'gender' => $this->input->post('gender'),
            'role_id' => 2,
            'is_validated' => 0,
            'is_voted' => 0,
            'is_candidate' => 0,
            'group_id' => 0,
            'position_id' => 0,
            'is_deleted' => 0,
            'dt_registered' => date('Y-m-d H:i:s')
        );

        $sp = 'call sp_add_person(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
        $this->db->query($sp, $data);
    }

    public function _update($id)
    {
        $data = array(
            'id' => $id,
            'prefix' => $this->input->post('prefix'),
            'first_name' => $this->input->post('first_name'),
            'middle_name' => $this->input->post('middle_name'),
            'last_name' => $this->input->post('last_name'),
            'suffix' => $this->input->post('suffix'),
            'access_code' => hash('sha256', $this->input->post('access_code')),
            'is_validated' => 1,
            'dt_updated' => date('Y-m-d H:i:s')
        );

        $sp = 'call sp_update_person(?, ?, ?, ?, ?, ?, ?, ?, ?)';
        $this->db->query($sp, $data);
    }

    public function _update_status($id)
    {
        $data = array(
            'id' => $id,
            'is_voted' => 1,
            'dt_updated' => date('Y-m-d H:i:s')
        );

        $sp = 'call sp_update_person_status(?, ?, ?)';
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