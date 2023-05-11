<?php


class Level_model extends CI_model
{

    public function getLevels() {
        return $this->db->order_by("amount asc")->get('coin_levels')->result_array();
    }

    public function getLevel($id) {
        return $this->db->where("id", $id)->get('coin_levels')->row();
    }

    public function insertLevel($data) {
        return $this->db->insert("coin_levels", $data);
    }

    public function updateLevel($data) {
        return $this->db->update("coin_levels", $data);
    }

}
