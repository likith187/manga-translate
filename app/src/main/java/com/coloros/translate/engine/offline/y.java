package com.coloros.translate.engine.offline;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map f5118a;

    public y() {
        a();
    }

    private void a() {
        ArrayList<String> allLanguageCode = g.getAllLanguageCode();
        this.f5118a = new HashMap();
        Iterator<String> it = allLanguageCode.iterator();
        while (it.hasNext()) {
            this.f5118a.put(it.next(), Boolean.FALSE);
        }
    }

    public boolean b(String str) {
        return ((Boolean) this.f5118a.get(str)).booleanValue();
    }

    public void c(String str) {
        this.f5118a.put(str, Boolean.TRUE);
    }
}
