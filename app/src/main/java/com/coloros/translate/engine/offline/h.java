package com.coloros.translate.engine.offline;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map f5055a;

    static {
        HashMap map = new HashMap();
        f5055a = map;
        map.put("zh", com.ai.slp.library.mt.c.CHINESE);
        f5055a.put("en", com.ai.slp.library.mt.c.ENGLISH);
        f5055a.put("ja", com.ai.slp.library.mt.c.JAPANESE);
        f5055a.put("ko", com.ai.slp.library.mt.c.KOREAN);
        f5055a.put("it", com.ai.slp.library.mt.c.ITALIAN);
        f5055a.put("fr", com.ai.slp.library.mt.c.FRENCH);
        f5055a.put("de", com.ai.slp.library.mt.c.GERMAN);
        f5055a.put("es", com.ai.slp.library.mt.c.SPANISH);
        f5055a.put("vi", com.ai.slp.library.mt.c.Vietnamese);
        f5055a.put("th", com.ai.slp.library.mt.c.THAILAND);
        f5055a.put("id", com.ai.slp.library.mt.c.INDONESIA);
        f5055a.put("hi", com.ai.slp.library.mt.c.HINDI);
    }

    public static com.ai.slp.library.mt.c a(String str) {
        return (com.ai.slp.library.mt.c) f5055a.get(str);
    }
}
