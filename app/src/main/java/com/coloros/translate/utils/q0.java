package com.coloros.translate.utils;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class q0 {
    public static void a(Context context, String str, Map map) {
        if (context == null) {
            return;
        }
        c0.n("StatisticsUtils", " OplusTrack.onEvent-eventID:" + str + " eventMap:" + map);
        m7.k.m(context, "2014702", str, map);
    }

    public static void b(Context context, String str) {
        HashMap map = new HashMap();
        map.put("service_method_invoke", str);
        a(context, "event_service_method", map);
    }
}
