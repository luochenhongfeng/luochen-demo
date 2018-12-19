package com.luochen.model;

import com.jfinal.plugin.activerecord.Model;

/**
 * 测试model
 *
 * @author luochen
 */
public class Test extends Model<Test> {

    private static final long serialVersionUID = -614802545869308259L;

    public static final Test dao = new Test();
}
