<?php

namespace app\admin\controller;

use think\Request;

class Index extends Base
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        // 后台主页
        return $this->view->fetch();
    }

    /**
     * 显示后台登录页面.
     *
     * @return \think\Response
     */
    public function login()
    {
        // 后台登录
        return $this->view->fetch();
    }

    /**
     * 验证登录信息
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function checkLogin(Request $request)
    {
        //
    }
    /**
     * 显示系统信息页面.
     *
     * @return \think\Response
     */
    public function system()
    {
        return $this->view->fetch();
    }


}
