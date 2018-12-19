package com.luochen.controller;

import com.jfinal.core.Controller;

/**
 * @author luochen
 */
public class MyController extends Controller {

    public void render(String view) {
        super.render(view + ".jsp");
    }
}
