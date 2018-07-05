package com.bonc.mailtest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * 错误日志发送邮件测试
 * @author j
 *
 */
public class Malit {
    private static Logger info = LoggerFactory.getLogger("InfoLogger");
    private static Logger error = LoggerFactory.getLogger("ErrorLogger");
    public static void main(String[] args) {
        for (int i = 0; i < 10; i++) {
            error.error("sdadfwf");
            info.info("aaa");
        }

    }

}
