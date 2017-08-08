<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Tally_Model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function _create()
    {
        foreach ($this->input->post('candidate_id') as $candidate_id) {
            $data = array(
                'person_id' => (int)user('id'),
                'candidate_id' => (int)$candidate_id
            );
            $sp = 'call sp_add_tally(?, ?)';
            $this->db->query($sp, $data);
        }
    }

    public function _get_summary_results($id)
    {
        $sp = 'call sp_get_votes_by_position(?)';
        $query = $this->db->query($sp, array('id' => $id));
        return ($query->num_rows() > 0) ? $query->result() : false;
    }
}

/* 
 * end of file 
 * location: models/Tally_model.php
 */