package com.luochen.test;

import java.util.UUID;

/**
 * @author luochen
 */
public class Test {
    @org.junit.Test
    public void testUuid(){
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        System.out.println(uuid);
    }
}
