package com.coloros.translate.engine.offline;

import android.content.Context;
import com.coloros.translate.engine.IOfflineTranslateEngine;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.l0;
import com.coloros.translate.utils.u0;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class a0 {
    public static final a0 INSTANCE = new a0();

    /* JADX INFO: renamed from: a */
    private static x f5009a;

    private a0() {
    }

    private final void b() throws Throwable {
        ArrayList<String> allLanguageCode = g.getAllLanguageCode();
        kotlin.jvm.internal.r.d(allLanguageCode, "getAllLanguageCode(...)");
        Iterator<String> it = allLanguageCode.iterator();
        while (it.hasNext()) {
            h(it.next());
        }
    }

    private final void c(Context context) {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("OfflineEngineImpl", "checkAndUpdateOfflineCommonFile");
        File file = new File(h0.a());
        if (file.exists()) {
            l0.a aVar2 = com.coloros.translate.utils.l0.f7130a;
            if (aVar2.e(context, "common_file_name") != 4) {
                aVar.d("OfflineEngineImpl", "common need update");
                com.coloros.translate.utils.y.b(file);
                com.coloros.translate.utils.d.b(context, "text", h0.d(context));
                aVar2.i(context, "common_file_name", 4);
            }
        } else {
            aVar.d("OfflineEngineImpl", "common file is not exist");
            com.coloros.translate.utils.d.b(context, "text", h0.d(context));
            com.coloros.translate.utils.l0.f7130a.i(context, "common_file_name", 4);
        }
        l0.a.l(com.coloros.translate.utils.l0.f7130a, "nmt_common_exist", Boolean.TRUE, false, null, 12, null);
    }

    public static final void g(Context context) throws Throwable {
        kotlin.jvm.internal.r.e(context, "$context");
        if (f5009a == null) {
            f5009a = x.o(context);
            g0.b().h(context);
            k0.e().g();
            x.o(context).r();
            b0.INSTANCE.b();
            a0 a0Var = INSTANCE;
            a0Var.b();
            a0Var.c(context);
        }
    }

    private final void h(String str) throws Throwable {
        String strG = g0.b().g(str);
        File file = new File(strG);
        if (file.exists()) {
            e.c().a(str, strG, false);
            x xVar = f5009a;
            kotlin.jvm.internal.r.b(xVar);
            f0 f0VarP = xVar.p(str);
            if (f0VarP != null) {
                f0VarP.a();
            }
            file.delete();
        }
    }

    public final IOfflineTranslateEngine d(Context context, String fromType) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(fromType, "fromType");
        if (kotlin.jvm.internal.r.a(fromType, "")) {
            return null;
        }
        if (kotlin.jvm.internal.r.a(fromType, "ocr_text_offline")) {
            k0.e().g();
        }
        Context applicationContext = context.getApplicationContext();
        kotlin.jvm.internal.r.d(applicationContext, "getApplicationContext(...)");
        return new t0(applicationContext);
    }

    public final void e(a2.b callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        b0.INSTANCE.a(callback);
    }

    public final void f() {
        com.coloros.translate.utils.c0.f7098a.d("OfflineEngineImpl", "init");
        final Context contextA = com.coloros.translate.utils.m.INSTANCE.a();
        u0.d("request_download_offline_info", new Runnable() { // from class: com.coloros.translate.engine.offline.z
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                a0.g(contextA);
            }
        });
    }
}
