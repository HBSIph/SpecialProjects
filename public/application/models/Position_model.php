<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Position_Model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->db
            ->select('id, name AS position_name, max_selection')
            ->from('tbl_position');
        $query = $this->db->get();
        return ($query->num_rows() > 0) ? $query->result() : false;
    }
}

/* 
 * end of file 
 * location: models/Position_model.php
 */