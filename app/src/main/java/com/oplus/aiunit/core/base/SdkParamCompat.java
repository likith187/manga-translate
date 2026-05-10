package com.oplus.aiunit.core.base;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SdkParamCompat {
    private static final Map<String, String[]> mCompatList;

    static {
        HashMap map = new HashMap();
        mCompatList = map;
        map.put("package::detector_version", new String[]{"package::detector_usage"});
    }

    public static void compat(Map<String, Object> map) {
        for (Map.Entry<String, String[]> entry : mCompatList.entrySet()) {
            Object obj = map.get(entry.getKey());
            if (obj != null) {
                for (String str : entry.getValue()) {
                    map.put(str, obj);
                }
            }
        }
    }
}
