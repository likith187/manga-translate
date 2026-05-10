package androidx.core.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.appcompat.app.t;
import androidx.core.view.k;
import androidx.lifecycle.ReportFragment;
import androidx.lifecycle.l;
import androidx.lifecycle.s;
import androidx.lifecycle.u;

/* JADX INFO: loaded from: classes.dex */
public class ComponentActivity extends Activity implements s, k.a {
    private final androidx.collection.i extraDataMap = new androidx.collection.i(0, 1, null);
    private final u lifecycleRegistry = new u(this);

    public static class a {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
    
        if (r3.equals("--list-dumpables") == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0035, code lost:
    
        if (r3.equals("--dump-dumpable") == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003c, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 33) goto L33;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean B(java.lang.String[] r3) {
        /*
            r2 = this;
            r2 = 0
            if (r3 == 0) goto L4a
            int r0 = r3.length
            if (r0 != 0) goto L7
            goto L4a
        L7:
            r3 = r3[r2]
            int r0 = r3.hashCode()
            r1 = 1
            switch(r0) {
                case -645125871: goto L40;
                case 100470631: goto L2f;
                case 472614934: goto L26;
                case 1159329357: goto L1c;
                case 1455016274: goto L12;
                default: goto L11;
            }
        L11:
            goto L4a
        L12:
            java.lang.String r0 = "--autofill"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L1b
            goto L4a
        L1b:
            return r1
        L1c:
            java.lang.String r0 = "--contentcapture"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L25
            goto L4a
        L25:
            return r1
        L26:
            java.lang.String r0 = "--list-dumpables"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L38
            goto L4a
        L2f:
            java.lang.String r0 = "--dump-dumpable"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L38
            goto L4a
        L38:
            int r3 = android.os.Build.VERSION.SDK_INT
            r0 = 33
            if (r3 < r0) goto L3f
            r2 = r1
        L3f:
            return r2
        L40:
            java.lang.String r0 = "--translation"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L49
            goto L4a
        L49:
            return r1
        L4a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.ComponentActivity.B(java.lang.String[]):boolean");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        kotlin.jvm.internal.r.e(event, "event");
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.r.d(decorView, "window.decorView");
        if (androidx.core.view.k.a(decorView, event)) {
            return true;
        }
        return androidx.core.view.k.b(this, decorView, this, event);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent event) {
        kotlin.jvm.internal.r.e(event, "event");
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.r.d(decorView, "window.decorView");
        if (androidx.core.view.k.a(decorView, event)) {
            return true;
        }
        return super.dispatchKeyShortcutEvent(event);
    }

    public <T extends a> T getExtraData(Class<T> extraDataClass) {
        kotlin.jvm.internal.r.e(extraDataClass, "extraDataClass");
        t.a(this.extraDataMap.get(extraDataClass));
        return null;
    }

    public androidx.lifecycle.l getLifecycle() {
        return this.lifecycleRegistry;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ReportFragment.f2748b.b(this);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        kotlin.jvm.internal.r.e(outState, "outState");
        this.lifecycleRegistry.n(l.b.CREATED);
        super.onSaveInstanceState(outState);
    }

    public void putExtraData(a extraData) {
        kotlin.jvm.internal.r.e(extraData, "extraData");
        throw null;
    }

    protected final boolean shouldDumpInternalState(String[] strArr) {
        return !B(strArr);
    }

    @Override // androidx.core.view.k.a
    public boolean superDispatchKeyEvent(KeyEvent event) {
        kotlin.jvm.internal.r.e(event, "event");
        return super.dispatchKeyEvent(event);
    }
}
