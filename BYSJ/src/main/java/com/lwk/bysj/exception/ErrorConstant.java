package com.lwk.bysj.exception;


public interface ErrorConstant {

    interface UserRegist{
        static final String USER_REGIST_SUCCESS="注册成功";
        static final String USER_REGIST_fail="注册失败";
    }

    interface UserLogin {
        static final String USERNAME_PASSWORD_IS_EMPTY = "用户名和密码不可为空";
        static final String USERNAME_PASSWORD_ERROR = "用户名不存在或密码错误";
        static final String USER_ACCOUNT_BANNED = "账户被冻结";
        static final String NOT_LOGIN = "用户未登录";
    }
    interface RegistCheckAccount{
        static final String REGIST_ACCOUNT_REPEAT="用户名重复";
        static final String REGIST_ACCOUNT_TRUE="用户名可使用";
        static final String REGIST_ACCOUNT_ISEMPTY="账号不可为空";
    }

    interface RePssword{
        static final String NO_INFO_SUBMIT="请您先提交验证信息";
        static final String USER_INFO_FALSE="身份信息验证失败";
        static final String USER_INFO_TRUE="身份信息验证成功";
        static final String SUB_PWD_FALSE="两次密码输入不一致";
        static final String REPWD_SUCCESS="修改成功";
    }
    interface UpdatePwd{
        static final String EMPTY_PWD="密码不能为空";
        static final String SUB_PWD_FALSE="两次密码输入不一致";
        static final String OLD_PWD_FALSE="原密码输入错误";
    }
    interface AdminCz{
        static final String BAN_USER="冻结成功";
        static final String UNBAN_USER="解除冻结成功";
    }
}
