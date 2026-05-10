package com.coloros.translate.screen.translate.engine.language;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.r0;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f5565h = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5566a = "content://com.oplus.ocrscanner.translationservice";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5567b = "com.coloros.ocrscanner";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5568c = "supportTranslateDataSync";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5569d = "from_code";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f5570e = "to_code";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f5571f = "get_language_code";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f5572g = "/screen_translate/data_sync";

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(c this$0, Context context) {
        r.e(this$0, "this$0");
        r.e(context, "$context");
        this$0.d(context);
    }

    private final void d(Context context) {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            Uri uri = Uri.parse(this.f5566a);
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(this.f5567b, 128);
            kotlin.jvm.internal.r.d(applicationInfo, "getApplicationInfo(...)");
            if (applicationInfo.metaData.getBoolean(this.f5568c, false)) {
                Bundle bundleCall = context.getContentResolver().call(uri, this.f5571f, this.f5572g, (Bundle) null);
                String string = bundleCall != null ? bundleCall.getString(this.f5569d) : null;
                String string2 = bundleCall != null ? bundleCall.getString(this.f5570e) : null;
                if (string != null && string.length() != 0 && string2 != null && string2.length() != 0) {
                    com.coloros.translate.screen.utils.e.d(context, "screen_language_set", string + "," + string2);
                }
                c0.f7098a.d("LanguageConfigFetcher", "fromCode:" + string + " ,toCode:" + string2);
            } else {
                c0.f7098a.d("LanguageConfigFetcher", "target meta data is not exit");
            }
            objM59constructorimpl = n8.r.m59constructorimpl(Boolean.valueOf(Settings.Secure.putInt(context.getContentResolver(), "setting_language_fetcher", 1)));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("LanguageConfigFetcher", "onFailure：" + thM62exceptionOrNullimpl);
        }
    }

    private final boolean e() {
        try {
            r.a aVar = n8.r.Companion;
            boolean z10 = r0.d("ro.product.first_api_level", 0) < 35;
            c0.f7098a.d("LanguageConfigFetcher", "isUpdateFromOS14:" + z10);
            return z10;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("LanguageConfigFetcher", "isUpdateFromOS14 error" + thM62exceptionOrNullimpl.getMessage());
            }
            return false;
        }
    }

    public final void b(final Context context) {
        Object objM59constructorimpl;
        Object obj;
        kotlin.jvm.internal.r.e(context, "context");
        try {
            r.a aVar = n8.r.Companion;
            if (!e()) {
                return;
            }
            int i10 = Settings.Secure.getInt(context.getContentResolver(), "setting_language_fetcher", -1);
            c0.f7098a.d("LanguageConfigFetcher", "Settings languageCode is not empty:" + i10);
            if (i10 == 1) {
                return;
            }
            Future<?> futureSubmit = Executors.newScheduledThreadPool(1).submit(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.language.b
                @Override // java.lang.Runnable
                public final void run() {
                    c.c(this.f5563a, context);
                }
            });
            try {
                obj = futureSubmit.get(1200L, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e10) {
                futureSubmit.cancel(true);
                c0.f7098a.e("LanguageConfigFetcher", "TimeOut：" + e10);
                obj = h0.INSTANCE;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(obj);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("LanguageConfigFetcher", "onFailure：" + thM62exceptionOrNullimpl);
        }
    }
}
