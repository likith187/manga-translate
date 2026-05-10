package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.base.R$styleable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.f0;
import com.google.android.gms.common.internal.zaaa;
import com.google.android.gms.dynamic.b;

/* JADX INFO: loaded from: classes.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f7561c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View.OnClickListener f7562f;

    public SignInButton(Context context) {
        this(context, null);
    }

    private final void b(Context context) {
        View view = this.f7561c;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f7561c = f0.c(context, this.f7559a, this.f7560b);
        } catch (b.a unused) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i10 = this.f7559a;
            int i11 = this.f7560b;
            zaaa zaaaVar = new zaaa(context, null);
            zaaaVar.a(context.getResources(), i10, i11);
            this.f7561c = zaaaVar;
        }
        addView(this.f7561c);
        this.f7561c.setEnabled(isEnabled());
        this.f7561c.setOnClickListener(this);
    }

    public void a(int i10, int i11) {
        this.f7559a = i10;
        this.f7560b = i11;
        b(getContext());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View.OnClickListener onClickListener = this.f7562f;
        if (onClickListener == null || view != this.f7561c) {
            return;
        }
        onClickListener.onClick(this);
    }

    public void setColorScheme(int i10) {
        a(this.f7559a, i10);
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.f7561c.setEnabled(z10);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f7562f = onClickListener;
        View view = this.f7561c;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(Scope[] scopeArr) {
        a(this.f7559a, this.f7560b);
    }

    public void setSize(int i10) {
        a(i10, this.f7560b);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7562f = null;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.SignInButton, 0, 0);
        try {
            this.f7559a = typedArrayObtainStyledAttributes.getInt(R$styleable.SignInButton_buttonSize, 0);
            this.f7560b = typedArrayObtainStyledAttributes.getInt(R$styleable.SignInButton_colorScheme, 2);
            typedArrayObtainStyledAttributes.recycle();
            a(this.f7559a, this.f7560b);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
