package com.coloros.translate.screen.utils;

import android.content.Context;
import com.oplus.display.OplusInfoMonitor;
import java.util.List;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class m implements OplusInfoMonitor.OplusInfoMonitorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w8.l f5708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final OplusInfoMonitor f5709c;

    public m(Context context, w8.l callback) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(callback, "callback");
        this.f5707a = context;
        this.f5708b = callback;
        this.f5709c = new OplusInfoMonitor();
    }

    public final void a() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            this.f5709c.registerSfEvent(this, 2, this.f5707a.getPackageName() + "secure");
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
    }

    public final void b() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            this.f5709c.unregisterSfEvent(this);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
    }

    public void handleEvent(String str) {
        Object objM59constructorimpl;
        if (str == null || str.length() == 0) {
            return;
        }
        try {
            r.a aVar = n8.r.Companion;
            boolean z10 = true;
            List listU0 = kotlin.text.r.u0(kotlin.text.r.S0(kotlin.text.r.R0(str, 1), 1), new String[]{","}, false, 0, 6, null);
            if (listU0.size() < 2) {
                this.f5708b.invoke(Boolean.FALSE);
            } else {
                if (Integer.parseInt(kotlin.text.r.N0((String) listU0.get(1)).toString()) != 1) {
                    z10 = false;
                }
                this.f5708b.invoke(Boolean.valueOf(z10));
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            this.f5708b.invoke(Boolean.FALSE);
        }
    }
}
