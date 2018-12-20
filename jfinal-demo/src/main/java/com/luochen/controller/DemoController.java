package com.luochen.controller;

import com.jfinal.render.JsonRender;
import com.luochen.model.Test;

import java.util.List;
import java.util.UUID;

/**
 * controller
 *
 * @author luochen
 */
public class DemoController extends MyController {

    public void index(){
        List<Test> list = Test.dao.find("select * from test order by id desc");
        setAttr("list",list);
        render("list");
    }

    public void initAdd(){
        render("add");
    }

    public void add() {
        Test test = getModel(Test.class, "test");
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        boolean result = test.set("testId", uuid)
                .set("createTime", System.currentTimeMillis())
                .save();
        render(new JsonRender(result).forIE());
    }

    public void initEdit(){
        Test test = Test.dao.findById(getPara("testId"));
        setAttr("test",test);
        render("edit");
    }

    public void edit() {
        boolean result = new Test().set("testId", getPara("testId"))
                .set("name", getPara("name"))
                .set("sex", getPara("sex"))
                .set("age", getPara("age"))
                .update();
        render(new JsonRender(result).forIE());
    }

    public void delete(){
        boolean result = new Test().set("testId",getPara("testId")).delete();
        render(new JsonRender(result).forIE());
    }
}
