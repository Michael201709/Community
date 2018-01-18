<?php

namespace app\admin\controller;

use think\Request;
use app\admin\model\User as UserModel;

class User extends Base
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        // 查询用户列表
        $userlist = UserModel::paginate(5);

        // 获取用户的数量
        $count = UserModel::count();

        // 返回页面
        $this->view->assign('userlist', $userlist);
        $this->view->assign('count', $count);

        // 显示用户列表
        return $this->view->fetch();
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        // 显示添加用户的页面
        return $this->view->fetch();
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        // 获取页面提交的数据
        $data = $request->post();

        // 执行新增用户的语句
        $result = UserModel::create($data);

        /**
         * 初始化ajax返回的信息和状态
         * $res[
         *  'status'  => 0,
         *  'message' => ''
         * ]
         */
        $res = ['status' => 0, 'message' => ''];

        // 判断是否新增成功
        if ($result == true) {
            $res['status'] = 1;
            $res['message'] = '添加成功！';
            $res['icon'] = 6;
        } else {
            $res['status'] = 0;
            $res['message'] = '添加失败！';
            $res['icon'] = 5;
        }

        return json($res);
    }

    /**
     * 显示指定的资源
     *
     * @param  int $id
     * @return \think\Response
     */
    public function read($id)
    {
        // 显示用户详情的页面
        return $this->view->fetch();
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int $id
     * @return \think\Response
     */
    public function edit($id)
    {
        // 显示编辑用户的页面
        return $this->view->fetch();
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request $request
     * @param  int $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * 删除指定资源
     *
     * @param  int $id
     * @return \think\Response
     */
    public function delete($id)
    {
        //
    }

    /**
     * 显示修改密码的页面.
     *
     * @param  int $id
     * @return \think\Response
     */
    public function editPwd($id)
    {
        // 显示修改密码的页面
        return $this->view->fetch();
    }

    /**
     * 保存新密码
     *
     * @param  \think\Request $request
     * @param  int $id
     * @return \think\Response
     */
    public function updatePwd(Request $request, $id)
    {
        //
    }

    /**
     * 显示已删除用户的页面.
     *
     * @return \think\Response
     */
    public function recover()
    {
        // 显示添加用户的页面
        return $this->view->fetch();
    }

    /*批量恢复、批量删除*/
}
