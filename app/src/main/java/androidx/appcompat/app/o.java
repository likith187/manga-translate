package androidx.appcompat.app;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.z;
import androidx.appcompat.R$attr;
import androidx.appcompat.view.b;
import androidx.core.view.k;
import androidx.lifecycle.y0;

/* JADX INFO: loaded from: classes.dex */
public class o extends androidx.activity.q implements d {
    private f mDelegate;
    private final k.a mKeyDispatcher;

    public o(Context context, int i10) {
        super(context, d(context, i10));
        this.mKeyDispatcher = new k.a() { // from class: androidx.appcompat.app.n
            @Override // androidx.core.view.k.a
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return this.f412a.superDispatchKeyEvent(keyEvent);
            }
        };
        f delegate = getDelegate();
        delegate.M(d(context, i10));
        delegate.w(null);
    }

    private static int d(Context context, int i10) {
        if (i10 != 0) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    private void e() {
        y0.a(getWindow().getDecorView(), this);
        q0.l.a(getWindow().getDecorView(), this);
        z.a(getWindow().getDecorView(), this);
    }

    @Override // androidx.activity.q, android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().c(view, layoutParams);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        getDelegate().x();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return androidx.core.view.k.b(this.mKeyDispatcher, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i10) {
        return (T) getDelegate().h(i10);
    }

    public f getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = f.g(this, this);
        }
        return this.mDelegate;
    }

    public a getSupportActionBar() {
        return getDelegate().q();
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        getDelegate().s();
    }

    @Override // androidx.activity.q, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        getDelegate().r();
        super.onCreate(bundle);
        getDelegate().w(bundle);
    }

    @Override // androidx.activity.q, android.app.Dialog
    protected void onStop() {
        super.onStop();
        getDelegate().C();
    }

    @Override // androidx.appcompat.app.d
    public void onSupportActionModeFinished(androidx.appcompat.view.b bVar) {
    }

    @Override // androidx.appcompat.app.d
    public void onSupportActionModeStarted(androidx.appcompat.view.b bVar) {
    }

    @Override // androidx.appcompat.app.d
    public androidx.appcompat.view.b onWindowStartingSupportActionMode(b.a aVar) {
        return null;
    }

    @Override // androidx.activity.q, android.app.Dialog
    public void setContentView(int i10) {
        e();
        getDelegate().G(i10);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        getDelegate().N(charSequence);
    }

    boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean supportRequestWindowFeature(int i10) {
        return getDelegate().F(i10);
    }

    @Override // androidx.activity.q, android.app.Dialog
    public void setContentView(View view) {
        e();
        getDelegate().H(view);
    }

    @Override // android.app.Dialog
    public void setTitle(int i10) {
        super.setTitle(i10);
        getDelegate().N(getContext().getString(i10));
    }

    @Override // androidx.activity.q, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        e();
        getDelegate().I(view, layoutParams);
    }
}
