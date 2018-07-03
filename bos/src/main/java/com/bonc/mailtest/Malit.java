package com.bonc.mailtest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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
