package com.coloros.translate.utils;

import android.content.Context;
import android.content.Intent;
import com.coloros.translate.ui.setting.userprotocol.UserProtocolActivity;
import com.coloros.translate.utils.j;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class m0 {
    public static final m0 INSTANCE = new m0();

    private m0() {
    }

    public static final void a(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        c0.f7098a.d("ProtectionPolicyUtils", "jumpToProtectionPolicyActivity");
    }

    public static final void b(Context context) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(context, "context");
        if (j.a.c(j.f7127a, 0L, 1, null)) {
            return;
        }
        try {
            r.a aVar = n8.r.Companion;
            context.startActivity(new Intent(context, (Class<?>) UserProtocolActivity.class));
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("ProtectionPolicyUtils", "UserProtocolActivity " + thM62exceptionOrNullimpl.getMessage());
        }
    }
}
