<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Authme_Model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function _signin($username, $password)
    {
        $data = array(
            'user' => $username,
            'pass' => $password
        );

        $sp = 'call sp_get_username(?, ?)';
        $query = $this->db->query($sp, $data);
        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _audit_trail($action = 'Sign In', $user_agent = 'Chrome')
    {
        $data = array(
            'p0' => 2,
            'p1' => $action,
            'p2' => $this->input->ip_address(),
            'p3' => $user_agent,
            'p4' => date('Y-m-d H:i:s')
        );

        $sp = 'call sp_audit_trail(?, ?, ?, ?, ?)';
        $this->db->query($sp, $data);
    }
}

/* 
 * end of file 
 * location: models/Authme_model.php
 */