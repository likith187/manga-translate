package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class l extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f2680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f2681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f2682c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f2683f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final FragmentManager f2684h;

    l(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
    }

    Activity e() {
        return this.f2680a;
    }

    Context f() {
        return this.f2681b;
    }

    public Handler g() {
        return this.f2682c;
    }

    public abstract void h(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract Object i();

    public abstract LayoutInflater j();

    public void k(Fragment fragment, String[] strArr, int i10) {
    }

    public abstract boolean l(String str);

    public void m(Fragment fragment, Intent intent, int i10, Bundle bundle) {
        if (i10 != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        r.a.j(this.f2681b, intent, bundle);
    }

    public void n(Fragment fragment, IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        if (i10 != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        androidx.core.app.a.t(this.f2680a, intentSender, i10, intent, i11, i12, i13, bundle);
    }

    public abstract void o();

    l(Activity activity, Context context, Handler handler, int i10) {
        this.f2684h = new t();
        this.f2680a = activity;
        this.f2681b = (Context) c0.h.f(context, "context == null");
        this.f2682c = (Handler) c0.h.f(handler, "handler == null");
        this.f2683f = i10;
    }
}
