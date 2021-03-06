<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Group_Model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $sp = 'call sp_get_group()';
        $query = $this->db->query($sp);
        return ($query->num_rows() > 0) ? $query->result() : false;
    }
}

/* 
 * end of file 
 * location: models/Group_model.php
 */