package androidx.window.layout;

import android.app.Activity;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.flow.c;
import n8.h0;
import w8.p;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1", f = "WindowInfoTrackerImpl.kt", l = {54, VibrateUtils.VIBRATE_SOFT_MAX_FREQUENCY}, m = "invokeSuspend")
final class WindowInfoTrackerImpl$windowLayoutInfo$1 extends l implements p {
    final /* synthetic */ Activity $activity;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ WindowInfoTrackerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WindowInfoTrackerImpl$windowLayoutInfo$1(WindowInfoTrackerImpl windowInfoTrackerImpl, Activity activity, d dVar) {
        super(2, dVar);
        this.this$0 = windowInfoTrackerImpl;
        this.$activity = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    public static final void m7invokeSuspend$lambda0(kotlinx.coroutines.channels.d dVar, WindowLayoutInfo info) {
        r.d(info, "info");
        dVar.a(info);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public final d create(Object obj, d dVar) {
        WindowInfoTrackerImpl$windowLayoutInfo$1 windowInfoTrackerImpl$windowLayoutInfo$1 = new WindowInfoTrackerImpl$windowLayoutInfo$1(this.this$0, this.$activity, dVar);
        windowInfoTrackerImpl$windowLayoutInfo$1.L$0 = obj;
        return windowInfoTrackerImpl$windowLayoutInfo$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0072 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007e A[Catch: all -> 0x001f, TRY_LEAVE, TryCatch #0 {all -> 0x001f, blocks: (B:7:0x001a, B:18:0x0064, B:22:0x0076, B:24:0x007e, B:14:0x0036, B:17:0x0060), top: B:31:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0093  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0090 -> B:8:0x001d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.b.f()
            int r1 = r9.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L3a
            if (r1 == r3) goto L2a
            if (r1 != r2) goto L22
            java.lang.Object r1 = r9.L$2
            kotlinx.coroutines.channels.e r1 = (kotlinx.coroutines.channels.e) r1
            java.lang.Object r4 = r9.L$1
            c0.a r4 = (c0.a) r4
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.flow.c r5 = (kotlinx.coroutines.flow.c) r5
            n8.s.b(r10)     // Catch: java.lang.Throwable -> L1f
        L1d:
            r10 = r5
            goto L64
        L1f:
            r10 = move-exception
            goto L9f
        L22:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L2a:
            java.lang.Object r1 = r9.L$2
            kotlinx.coroutines.channels.e r1 = (kotlinx.coroutines.channels.e) r1
            java.lang.Object r4 = r9.L$1
            c0.a r4 = (c0.a) r4
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.flow.c r5 = (kotlinx.coroutines.flow.c) r5
            n8.s.b(r10)     // Catch: java.lang.Throwable -> L1f
            goto L76
        L3a:
            n8.s.b(r10)
            java.lang.Object r10 = r9.L$0
            kotlinx.coroutines.flow.c r10 = (kotlinx.coroutines.flow.c) r10
            kotlinx.coroutines.channels.a r1 = kotlinx.coroutines.channels.a.DROP_OLDEST
            r4 = 4
            r5 = 10
            r6 = 0
            kotlinx.coroutines.channels.d r1 = kotlinx.coroutines.channels.f.b(r5, r1, r6, r4, r6)
            androidx.window.layout.b r4 = new androidx.window.layout.b
            r4.<init>()
            androidx.window.layout.WindowInfoTrackerImpl r5 = r9.this$0
            androidx.window.layout.WindowBackend r5 = androidx.window.layout.WindowInfoTrackerImpl.b(r5)
            android.app.Activity r6 = r9.$activity
            androidx.profileinstaller.g r7 = new androidx.profileinstaller.g
            r7.<init>()
            r5.a(r6, r7, r4)
            kotlinx.coroutines.channels.e r1 = r1.iterator()     // Catch: java.lang.Throwable -> L1f
        L64:
            r9.L$0 = r10     // Catch: java.lang.Throwable -> L1f
            r9.L$1 = r4     // Catch: java.lang.Throwable -> L1f
            r9.L$2 = r1     // Catch: java.lang.Throwable -> L1f
            r9.label = r3     // Catch: java.lang.Throwable -> L1f
            java.lang.Object r5 = r1.a(r9)     // Catch: java.lang.Throwable -> L1f
            if (r5 != r0) goto L73
            return r0
        L73:
            r8 = r5
            r5 = r10
            r10 = r8
        L76:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L1f
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L1f
            if (r10 == 0) goto L93
            java.lang.Object r10 = r1.next()     // Catch: java.lang.Throwable -> L1f
            androidx.window.layout.WindowLayoutInfo r10 = (androidx.window.layout.WindowLayoutInfo) r10     // Catch: java.lang.Throwable -> L1f
            r9.L$0 = r5     // Catch: java.lang.Throwable -> L1f
            r9.L$1 = r4     // Catch: java.lang.Throwable -> L1f
            r9.L$2 = r1     // Catch: java.lang.Throwable -> L1f
            r9.label = r2     // Catch: java.lang.Throwable -> L1f
            java.lang.Object r10 = r5.emit(r10, r9)     // Catch: java.lang.Throwable -> L1f
            if (r10 != r0) goto L1d
            return r0
        L93:
            androidx.window.layout.WindowInfoTrackerImpl r9 = r9.this$0
            androidx.window.layout.WindowBackend r9 = androidx.window.layout.WindowInfoTrackerImpl.b(r9)
            r9.b(r4)
            n8.h0 r9 = n8.h0.INSTANCE
            return r9
        L9f:
            androidx.window.layout.WindowInfoTrackerImpl r9 = r9.this$0
            androidx.window.layout.WindowBackend r9 = androidx.window.layout.WindowInfoTrackerImpl.b(r9)
            r9.b(r4)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // w8.p
    public final Object invoke(c cVar, d dVar) {
        return ((WindowInfoTrackerImpl$windowLayoutInfo$1) create(cVar, dVar)).invokeSuspend(h0.INSTANCE);
    }
}
