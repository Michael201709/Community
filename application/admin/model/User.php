<?php

namespace app\admin\model;

use think\Model;

class User extends Model
{
    // 设置常量判断性别
    const SEX_WOMAN = 0;
    const SEX_MAN = 1;
    const SEX_MIDDLE = 2;

    public static $sexArr = [
        self::SEX_WOMAN => '女',
        self::SEX_MAN => '男',
        self::SEX_MIDDLE => '未知'
    ];
}
