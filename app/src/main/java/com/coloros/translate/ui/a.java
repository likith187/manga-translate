package com.coloros.translate.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.coloros.translate.R;
import com.coloros.translate.utils.c0;
import com.oplus.aiunit.core.data.DetectData;
import com.oplus.aiunit.download.api.AIDownload;
import com.oplus.aiunit.toolkits.AISettings;
import java.util.ArrayList;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a INSTANCE = new a();

    private a() {
    }

    public static final boolean a(Context context, String detectName) {
        r.e(context, "context");
        r.e(detectName, "detectName");
        try {
            r.a aVar = n8.r.Companion;
            DetectData detectData$default = AISettings.getDetectData$default(context, detectName, null, 4, null);
            if (!detectData$default.isSupport()) {
                return false;
            }
            if (detectData$default.getState() != 6 && detectData$default.getState() != 4) {
                return true;
            }
            return AIDownload.isDownloadSupport(context);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("EntranceUtils", "isSupportAiDoc error : " + thM62exceptionOrNullimpl.getMessage());
            }
            return false;
        }
    }

    public static final boolean b() {
        return com.coloros.translate.utils.c.a("com.coloros.ocrscanner") && com.coloros.translate.utils.c.d("com.coloros.ocrscanner", "support_custom_main_page") && com.coloros.translate.utils.c.c("com.coloros.ocrscanner", "coloros.intent.action.SCANNER_MAIN_PAGE") && com.coloros.translate.utils.c.c("com.coloros.ocrscanner", "coloros.intent.action.CAMERA_SCANNER");
    }

    public static final void c(Context ctx, String packageName) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(ctx, "ctx");
        kotlin.jvm.internal.r.e(packageName, "packageName");
        try {
            r.a aVar = n8.r.Companion;
            c0.a aVar2 = c0.f7098a;
            if (aVar2.l()) {
                aVar2.d("EntranceUtils", "jump to photo translate from " + aVar2.g(packageName));
            }
            Intent intent = new Intent();
            intent.setAction("coloros.intent.action.SCANNER_MAIN_PAGE");
            intent.setFlags(335544320);
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add("Translate");
            h0 h0Var = h0.INSTANCE;
            intent.putStringArrayListExtra("scanner_features", arrayList);
            intent.putExtra("default_feature", "Translate");
            intent.putExtra("request_package_name", packageName);
            intent.setPackage("com.coloros.ocrscanner");
            ctx.startActivity(intent);
            if (ctx instanceof Activity) {
                ((Activity) ctx).overridePendingTransition(R.anim.slide_in_right, R.anim.slide_out_left);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.q("EntranceUtils", "jump to photo translate error : " + thM62exceptionOrNullimpl + "}");
        }
    }

    public static final void d(Context ctx, String fromPackage) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(ctx, "ctx");
        kotlin.jvm.internal.r.e(fromPackage, "fromPackage");
        try {
            r.a aVar = n8.r.Companion;
            c0.a aVar2 = c0.f7098a;
            if (aVar2.l()) {
                aVar2.d("EntranceUtils", "launch screen translate from " + aVar2.g(fromPackage));
            }
            Intent intent = new Intent("oplus.intent.action.GLOBAL_TRANSLATION");
            intent.setPackage(ctx.getPackageName());
            intent.putExtra("extra_from_package", fromPackage);
            objM59constructorimpl = n8.r.m59constructorimpl(ctx.startForegroundService(intent));
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.d("EntranceUtils", "launch screen translate : " + thM62exceptionOrNullimpl);
        }
    }
}
