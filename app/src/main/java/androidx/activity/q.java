package androidx.activity;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.l;
import androidx.lifecycle.y0;

/* JADX INFO: loaded from: classes.dex */
public class q extends Dialog implements androidx.lifecycle.s, x, q0.h {
    private androidx.lifecycle.u _lifecycleRegistry;
    private final v onBackPressedDispatcher;
    private final q0.g savedStateRegistryController;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(Context context, int i10) {
        super(context, i10);
        kotlin.jvm.internal.r.e(context, "context");
        this.savedStateRegistryController = q0.g.f15274c.b(this);
        this.onBackPressedDispatcher = new v(new Runnable() { // from class: androidx.activity.p
            @Override // java.lang.Runnable
            public final void run() {
                q.c(this.f181a);
            }
        });
    }

    private final androidx.lifecycle.u b() {
        androidx.lifecycle.u uVar = this._lifecycleRegistry;
        if (uVar != null) {
            return uVar;
        }
        androidx.lifecycle.u uVar2 = new androidx.lifecycle.u(this);
        this._lifecycleRegistry = uVar2;
        return uVar2;
    }

    public static final void c(q this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        super.onBackPressed();
    }

    public static /* synthetic */ void getOnBackPressedDispatcher$annotations() {
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.r.e(view, "view");
        initializeViewTreeOwners();
        super.addContentView(view, layoutParams);
    }

    @Override // androidx.lifecycle.s
    public androidx.lifecycle.l getLifecycle() {
        return b();
    }

    @Override // androidx.activity.x
    public final v getOnBackPressedDispatcher() {
        return this.onBackPressedDispatcher;
    }

    @Override // q0.h
    public q0.e getSavedStateRegistry() {
        return this.savedStateRegistryController.b();
    }

    public void initializeViewTreeOwners() {
        Window window = getWindow();
        kotlin.jvm.internal.r.b(window);
        View decorView = window.getDecorView();
        kotlin.jvm.internal.r.d(decorView, "window!!.decorView");
        y0.a(decorView, this);
        Window window2 = getWindow();
        kotlin.jvm.internal.r.b(window2);
        View decorView2 = window2.getDecorView();
        kotlin.jvm.internal.r.d(decorView2, "window!!.decorView");
        z.a(decorView2, this);
        Window window3 = getWindow();
        kotlin.jvm.internal.r.b(window3);
        View decorView3 = window3.getDecorView();
        kotlin.jvm.internal.r.d(decorView3, "window!!.decorView");
        q0.l.a(decorView3, this);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.onBackPressedDispatcher.k();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            v vVar = this.onBackPressedDispatcher;
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            kotlin.jvm.internal.r.d(onBackInvokedDispatcher, "onBackInvokedDispatcher");
            vVar.n(onBackInvokedDispatcher);
        }
        this.savedStateRegistryController.d(bundle);
        b().i(l.a.ON_CREATE);
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        kotlin.jvm.internal.r.d(bundleOnSaveInstanceState, "super.onSaveInstanceState()");
        this.savedStateRegistryController.e(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        b().i(l.a.ON_RESUME);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        b().i(l.a.ON_DESTROY);
        this._lifecycleRegistry = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(int i10) {
        initializeViewTreeOwners();
        super.setContentView(i10);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        kotlin.jvm.internal.r.e(view, "view");
        initializeViewTreeOwners();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.r.e(view, "view");
        initializeViewTreeOwners();
        super.setContentView(view, layoutParams);
    }
}
