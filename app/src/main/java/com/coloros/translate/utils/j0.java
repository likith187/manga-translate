package com.coloros.translate.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import com.oplus.content.OplusFeatureConfigManager;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class j0 {
    public static final j0 INSTANCE = new j0();

    private j0() {
    }

    public static final boolean a(String featureR) {
        kotlin.jvm.internal.r.e(featureR, "featureR");
        try {
            r.a aVar = n8.r.Companion;
            return OplusFeatureConfigManager.getInstance().hasFeature(featureR);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl == null) {
                return false;
            }
            c0.f7098a.f("OSUtils", "hasFeature, featureR is " + featureR + ", exception: ", thM62exceptionOrNullimpl);
            return false;
        }
    }

    public static final boolean b(Context context, String featureR, String featureQ) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(featureR, "featureR");
        kotlin.jvm.internal.r.e(featureQ, "featureQ");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            return a(featureR) || packageManager.hasSystemFeature(featureQ);
        }
        return false;
    }

    public static final boolean c(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        return b(context, "oplus.software.support_gp.product_light", "oplus.software.support_gp.product_light");
    }
}
