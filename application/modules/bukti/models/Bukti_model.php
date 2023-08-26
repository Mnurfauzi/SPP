<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


class Bukti_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();
    }

    // Get From Databases
    function get($params = array())
    {
        if (isset($params['id'])) {
            $this->db->where('id', $params['id']);
        }

        if (isset($params['period_id'])) {
            $this->db->where('payment.period_period_id', $params['period_id']);
        }

        if (isset($params['student_nis'])) {
            $this->db->where('student_nis', $params['student_nis']);
        }

        if (isset($params['search'])) {
             $this->db->like('student_full_name', $params['search']);
             $this->db->or_where('pos_name', $params['search']);
             $this->db->or_where('description', $params['search']);
             $this->db->or_where('period_start', $params['search']);
             $this->db->or_where('period_end', $params['search']);
             $this->db->or_where('nilai', $params['search']);
        }

        // if (isset($params['status'])) {
        //     $this->db->where('payment_input_date', $params['status']);
        // }

        if (isset($params['limit'])) {
            if (!isset($params['offset'])) {
                $params['offset'] = NULL;
            }

            $this->db->limit($params['limit'], $params['offset']);
        }

        //query mentah SELECT * FROM `buktibayar` left join period on period.period_id = buktibayar.period_period_id left join pos on pos.pos_id = buktibayar.pos_pos_id left join student on student.student_id = buktibayar.student_student_id;
        $this->db->select('*');
        $this->db->join('period', 'period.period_id = buktibayar.period_period_id', 'left');
        $this->db->join('pos', 'pos.pos_id = buktibayar.pos_pos_id', 'left');
        $this->db->join('student', 'student.student_id = buktibayar.student_student_id', 'left');
        $res = $this->db->get('buktibayar');

        if (isset($params['id'])) {
            return $res->row_array();
        } else {
            return $res->result_array();
        }
    }

    // Add and update to database
    function add($data = array())
    {
        if (isset($data['id'])) {
            $this->db->set('id', $data['id']);
        }

        if (isset($data['nilai'])) {
            $this->db->set('nilai', $data['nilai']);
        }

        if (isset($data['upload_image'])) {
            $this->db->set('upload_image', $data['upload_image']);
        }

        if (isset($data['description'])) {
            $this->db->set('description', $data['description']);
        }

        if (isset($data['period_id'])) {
            $this->db->set('period_period_id', $data['period_id']);
        }

        if (isset($data['pos_id'])) {
            $this->db->set('pos_pos_id', $data['pos_id']);
        }

        if (isset($data['student_id'])) {
            $this->db->set('student_student_id', $data['student_id']);
        }

        if (isset($data['id'])) {
            $this->db->where('id', $data['id']);
            $this->db->update('buktibayar');
            $id = $data['id'];
        } else {
            $this->db->insert('buktibayar');
            $id = $this->db->insert_id();
        }

        $status = $this->db->affected_rows();
        return ($status == 0) ? FALSE : $id;
    }

    // Delete all to database
    function delete_all()
    {
        $this->db->truncate('buktibayar');
    }

    // Delete to database
    function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('buktibayar');
    }
}
