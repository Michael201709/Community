<?php

namespace app\index\controller;

use app\admin\controller\Base;

class Index extends Base
{
    public function index()
    {
        return $this->view->fetch();
    }
}
