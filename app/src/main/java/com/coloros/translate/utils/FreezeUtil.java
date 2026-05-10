package com.coloros.translate.utils;

import android.content.Context;
import androidx.annotation.Keep;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.oplus.osense.OsenseResEventClient;
import com.oplus.osense.task.BgRunningCallback;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class FreezeUtil {
    public static final FreezeUtil INSTANCE = new FreezeUtil();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f7089a;

    @Keep
    public static final class BackgroundRunningCallback extends BgRunningCallback {
        public void cancelRunningTaskInfo(int i10, int i11) {
            c0.f7098a.q("FreezeUtil", "cancelRunningTaskInfo: reqId = " + i10 + ", resultCode = " + i11);
        }

        public void requestRunningTaskInfo(int i10, int i11) {
            FreezeUtil.f7089a = i10;
            c0.f7098a.i("FreezeUtil", "requestRunningTaskInfo: reqId = " + i10 + ", resultCode = " + i11);
        }
    }

    private FreezeUtil() {
    }

    public static final void b(Context context) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(context, "context");
        c0.f7098a.d("FreezeUtil", "startBackgroundRunning");
        try {
            r.a aVar = n8.r.Companion;
            OsenseResEventClient.getInstance().startBackgroundRunning(context, COUIToolTips.ALIGN_TOP, new BackgroundRunningCallback());
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("FreezeUtil", "startBackgroundRunning: error " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public static final void c(Context context) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(context, "context");
        c0.f7098a.d("FreezeUtil", "stopBackgroundRunning");
        try {
            r.a aVar = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(Boolean.valueOf(OsenseResEventClient.getInstance().stopBackgroundRunning(context, f7089a)));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("FreezeUtil", "stopBackgroundRunning: error " + thM62exceptionOrNullimpl.getMessage());
        }
    }
}
