package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016101300674270";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDSl9oGuG7dEWihgH9wj/EjX1jITIYfsIEniX2g0d0IstErPzE/8Gm1/v/YXRtN+aX4GttkI+JuyQY+6oOAWF/DqOmxAXN3OMWToeADOOZyyqW3R9IG1dGKjaW2RVw2slx5eNJBTVFCD0MNKsO6V961GPo2Gc/s22L/ahiIrWCn6NDdVqA7h++4mzDyY/WdQE2KKMQ9CGidoc7bqq70SWmJ53nRaDNJyoRMzbpiYdwoQhbxPnw3n8Za4heEK4zNFz78RRRZfm8bGkXBSQqWzM5gR9Uu+kIISoWPZTg5PPzAsF/izZ/0Y71ABNfgVzajWni1/edsNUYV+c7g+xl0Qz/tAgMBAAECggEBAL2jkOpMW0knzBjjJd+vP26jBcgZYQ5YW3XHEiIn2etjW4ieNzNkw0zofGvSLCxji1mIldfvmJA65izx8ck5y8Ld8NM8g0XxEbqIIrnEG4FzixcozbDqCu/B7l/cxdVbeHrKmkvD3FCofbD1uZusVRivjWH6jIq2ZMesOruZpViNZGBEVRqL/yvzPGuKTYsI4iMDdQ+TDxRDDh+cu1vObNnPhHhxCIRkrI6GsXNwP/7F9lrpsXrCzF/Lvz85TuhOvlPTVQzt0eZo5X/b7/tHIi7F1AjpgXrlAW5moKcV0eopidNKxTLQpVckzlFgSkW3d6wzVdthdhPvwmMXc9q4agECgYEA7/yABtKBc/7nPhSmJfUGJ0fcAn8LwJOR277KhT+OZP86z12pzURBM4dEUB5nEBTRGt/dRwDu+a62Ft9Kc8PYjVZXQQUmsZO2XF2Fo20GtEoLKP+39079a4inWw1z6UaRk0zbgYzw7llTxyAQvdLt5XOBZa1i4m8WPZIgETelpP0CgYEA4KVAR5Y0AWZEjV3nNNxtLKCYyiCBtiGmlSlkDdZrO+QeUuXkFMtaQT7pb9foqueWGBGoOYg5C4rJoA3i8fRClicVlzlDKrgZs2ySTLkrD/Z79StZJoKU/IO0drRhhQYGjz7bfZp4beigLSVD9SCChLz5FGdOIcNjl5yL4WUy8bECgYEA3yJvy2gYs0hzq5Y5cZtj0EwRNUT5IWJUQPQhi0kv1Zo2DS6yPcfTs9x2WOQbwakJT6qMLIOirwaSCawtpnuXMrrvv+XRN1T3PuQ56Fzr2d/qhoFVhJ2uJTjXGmLkviY+Hq5cfhUUwxjNO50F0+l2BlyiGG7hPVY6YJ8oL7oEyuUCgYEAk/PiSQOhDsbnIWAWNZdzg+/lkUIli+nPx++xyPdOOuy8GAb218cyk0Q3BIVj5KOQFBwU+odAYtyufG6I6Kfh7vig3K9HEGyd6LD6DfPqa6H/8/HvzlA0hbbMdV3J2I2mZlOUxb2l0WVjkTg48MnPjFLVjV2YdN41ypW8/t7i1ZECgYAMJx3V5vsbynmIaZujjBvAWXVWM79m2ZD/gWoGp+xavEkkQXtC7GTfVX7M2CNc82EnxZwwJyijjHjgb4DrZNJNgoLJA/nqW1r+p4RP6rKqjHqN6eMSf+molIbBBWW4orSqEYM+6YTSIRBTBAAaV0j3V5QYYIKmpFA5G7KPZ8O1YA==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmYtoxwEh0c2Yu26cmUA3cOdacim5xgm28IE69QxUMzOYDF/NDC+OBXvL38A2OHBeItTSMi1D0z2FOK8g7ApxlxmGBhby4xVvD4vWO7PP8kqO+n8GwwUiWBlX/3o0gsXLDUODxdJv7HgXUG8AXJcNEiDzkRmcL6iEMG+TGVV/z5SfGfyEjEt6FaplDWA5a6IcMDjodiCRJC3tmFIDpMvkZU/H5VwMHgkyjA0pcj/KnXAcSwqJsY/kPhe5P7GXRR+f9k19nSKm3nUzpddvKjLEpMtw0+/8dbxrIX7JdsOUf7OTCgXtsIDQr5EpAEoOckQiQKQru5MMrvIxfR6pbpLL1wIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8080/HomeMaking/page/alipay/notify_url.jsp";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:8080/HomeMaking/page/alipay/return_url.jsp";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

