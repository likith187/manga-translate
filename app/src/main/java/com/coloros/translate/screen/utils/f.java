package com.coloros.translate.screen.utils;

import android.content.ComponentName;
import android.content.Context;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.f1;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static final f INSTANCE = new f();

    private f() {
    }

    public static final void a(Context context, String eventID, HashMap map, ComponentName componentName) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(eventID, "eventID");
        if (componentName == null) {
            c0.f7098a.q("ReportHelper", "addActionForScreenTranslation get componentName is null");
            return;
        }
        if (map == null) {
            map = new HashMap();
        }
        String packageName = componentName.getPackageName();
        kotlin.jvm.internal.r.d(packageName, "getPackageName(...)");
        map.put("source_packagename", packageName);
        String className = componentName.getClassName();
        kotlin.jvm.internal.r.d(className, "getClassName(...)");
        map.put("source_classname", className);
        b(context, eventID, map);
    }

    public static final void b(Context context, String eventID, Map map) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(eventID, "eventID");
        f1.f7117a.d(context, "2014703", eventID, map);
    }

    public static /* synthetic */ void c(Context context, String str, Map map, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            map = null;
        }
        b(context, str, map);
    }
}
