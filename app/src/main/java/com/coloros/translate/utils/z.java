package com.coloros.translate.utils;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.coloros.translate.TranslationApplication;
import com.coui.appcompat.baseview.util.FoldSettingsHelper;
import com.oplus.content.OplusFeatureConfigManager;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class z {
    public static final z INSTANCE = new z();

    /* JADX INFO: renamed from: a */
    private static Boolean f7166a;

    /* JADX INFO: renamed from: b */
    private static Boolean f7167b;

    private z() {
    }

    public static final boolean a(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        if (Build.VERSION.SDK_INT >= 33) {
            return c();
        }
        int identifier = context.getResources().getIdentifier("config_lidControlsDisplayFold", "bool", "android");
        if (identifier > 0) {
            return context.getResources().getBoolean(identifier);
        }
        return false;
    }

    public static /* synthetic */ boolean b(Context context, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            context = TranslationApplication.f4754b.a();
        }
        return a(context);
    }

    private static final boolean c() {
        Object objM59constructorimpl;
        if (f7166a == null) {
            try {
                r.a aVar = n8.r.Companion;
                f7166a = Boolean.valueOf(OplusFeatureConfigManager.getInstance().hasFeature("oplus.hardware.type.fold"));
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                c0.f7098a.e("FoldModeUtils", "isFoldFeature(),error");
            }
        }
        c0.f7098a.d("FoldModeUtils", "isFoldFeature()," + f7166a);
        Boolean bool = f7166a;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    private static final boolean d() {
        Object objM59constructorimpl;
        if (f7167b == null) {
            try {
                r.a aVar = n8.r.Companion;
                f7167b = Boolean.valueOf(OplusFeatureConfigManager.getInstance().hasFeature("oplus.software.fold_remap_display_disabled"));
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                c0.f7098a.e("FoldModeUtils", "mHasQingTingFeature(),error");
            }
        }
        c0.f7098a.d("FoldModeUtils", "mHasQingTingFeature()," + f7167b);
        Boolean bool = f7167b;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    private static final boolean e(Context context) {
        return !d() && Settings.Global.getInt(context.getContentResolver(), FoldSettingsHelper.SYSTEM_FOLDING_MODE_KEY, 0) == 1;
    }

    public static final boolean f(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        return a(context) && e(context);
    }

    public static /* synthetic */ boolean g(Context context, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            context = TranslationApplication.f4754b.a();
        }
        return f(context);
    }
}
