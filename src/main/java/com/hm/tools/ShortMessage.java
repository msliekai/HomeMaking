package com.hm.tools;

/**
 * 手机验证部分配置
 * @author hha
 * @date 2019-09-27 21:53
 */
public class ShortMessage {
    // 设置超时时间-可自行调整
    public final static String defaultConnectTimeout  = "sun.net.client.defaultConnectTimeout";
    public final static String defaultReadTimeout = "sun.net.client.defaultReadTimeout";
    public final static String Timeout = "30000";
    // 初始化ascClient需要的几个参数
    public final static String product = "Dysmsapi";// 短信API产品名称（短信产品名固定，无需修改）
    public final static String domain = "dysmsapi.aliyuncs.com";// 短信API产品域名（接口地址固定，无需修改）
    // 替换成AK (产品密)
    public final static String accessKeyId = "LTAI4FcTSzWMEv1bCHJLGCR6";
    public final static String accessKeySecret = "NOdKAUmJnR0KDBFAsVxzHSLGcCfo06";
    // 必填:短信签名-可在短信控制台中找到
    public final static String SignName = "lk家政";  // 阿里云配置自己的短信签名填入
    // 必填:短信模板-可在短信控制台中找到
    public static String TemplateCode= "SMS_174276801";


}
