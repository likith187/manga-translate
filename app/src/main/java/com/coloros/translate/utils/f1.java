package com.coloros.translate.utils;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class f1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f7117a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f7118b = "UserDataCollectionUtil";

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, String eventID, String str, String str2, String str3, String str4) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(eventID, "eventID");
            Context applicationContext = context.getApplicationContext();
            if ((str == null || str.length() == 0 || str2 == null || str2.length() == 0) && (str3 == null || str3.length() == 0 || str4 == null || str4.length() == 0)) {
                m7.k.m(applicationContext, "2014702", eventID, null);
                return;
            }
            HashMap map = new HashMap();
            if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
                map.put(str, str2);
            }
            if (str3 != null && str3.length() != 0 && str4 != null && str4.length() != 0) {
                map.put(str3, str4);
            }
            m7.k.m(applicationContext, "2014702", eventID, map);
        }

        public final void c(Context context, String eventID, int i10, int i11) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(eventID, "eventID");
            StringBuilder sb = new StringBuilder();
            sb.append(i10);
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i11);
            a(context, eventID, "language_from", string, "language_to", sb2.toString());
        }

        public final void d(Context context, String eventGroupId, String eventID, Map map) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(eventGroupId, "eventGroupId");
            kotlin.jvm.internal.r.e(eventID, "eventID");
            m7.k.m(context.getApplicationContext(), eventGroupId, eventID, map);
        }

        public final void e(Context context, String eventID, Map map) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(eventID, "eventID");
            d(context, "2014702", eventID, map);
        }

        private a() {
        }
    }
}
