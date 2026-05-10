package com.coloros.translate.screen.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.coloros.translate.screen.NotificationPermissionActivity;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final c INSTANCE = new c();

    private c() {
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final boolean a(android.content.Context r5) {
        /*
            java.lang.String r0 = "context"
            kotlin.jvm.internal.r.e(r5, r0)
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 33
            java.lang.String r2 = "NotificationUtil"
            if (r0 < r1) goto L47
            androidx.core.app.k r0 = androidx.core.app.k.b(r5)
            boolean r0 = r0.a()
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            java.lang.String r3 = "pref_request_notification"
            java.lang.Object r5 = com.coloros.translate.screen.utils.e.b(r5, r3, r1)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            com.coloros.translate.utils.c0$a r1 = com.coloros.translate.utils.c0.f7098a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "checkNotificationPermission enable= "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r4 = " hasRequest="
            r3.append(r4)
            r3.append(r5)
            java.lang.String r3 = r3.toString()
            r1.d(r2, r3)
            if (r0 != 0) goto L47
            if (r5 != 0) goto L47
            r5 = 1
            goto L48
        L47:
            r5 = 0
        L48:
            com.coloros.translate.utils.c0$a r0 = com.coloros.translate.utils.c0.f7098a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "checkNotificationPermission need= "
            r1.append(r3)
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            r0.d(r2, r1)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.utils.c.a(android.content.Context):boolean");
    }

    public static final void b(Context context, Bundle bundle) {
        kotlin.jvm.internal.r.e(context, "context");
        Intent intent = new Intent(context, (Class<?>) NotificationPermissionActivity.class);
        intent.setFlags(268435456);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        context.startActivity(intent);
    }
}
