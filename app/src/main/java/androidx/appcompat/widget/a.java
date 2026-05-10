package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import androidx.core.view.u0;
import androidx.core.view.v0;

/* JADX INFO: loaded from: classes.dex */
abstract class a extends ViewGroup {

    /* JADX INFO: renamed from: a */
    protected final C0006a f806a;

    /* JADX INFO: renamed from: b */
    protected final Context f807b;

    /* JADX INFO: renamed from: c */
    protected ActionMenuView f808c;

    /* JADX INFO: renamed from: f */
    protected ActionMenuPresenter f809f;

    /* JADX INFO: renamed from: h */
    protected int f810h;

    /* JADX INFO: renamed from: i */
    protected u0 f811i;

    /* JADX INFO: renamed from: j */
    private boolean f812j;

    /* JADX INFO: renamed from: k */
    private boolean f813k;

    /* JADX INFO: renamed from: androidx.appcompat.widget.a$a */
    protected class C0006a implements v0 {

        /* JADX INFO: renamed from: a */
        private boolean f814a = false;

        /* JADX INFO: renamed from: b */
        int f815b;

        protected C0006a() {
        }

        @Override // androidx.core.view.v0
        public void a(View view) {
            this.f814a = true;
        }

        @Override // androidx.core.view.v0
        public void b(View view) {
            if (this.f814a) {
                return;
            }
            a aVar = a.this;
            aVar.f811i = null;
            a.super.setVisibility(this.f815b);
        }

        @Override // androidx.core.view.v0
        public void c(View view) {
            a.super.setVisibility(0);
            this.f814a = false;
        }

        public C0006a d(u0 u0Var, int i10) {
            a.this.f811i = u0Var;
            this.f815b = i10;
            return this;
        }
    }

    a(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f806a = new C0006a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R$attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f807b = context;
        } else {
            this.f807b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    protected static int d(int i10, int i11, boolean z10) {
        return z10 ? i10 - i11 : i10 + i11;
    }

    protected int c(View view, int i10, int i11, int i12) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE), i11);
        return Math.max(0, (i10 - view.getMeasuredWidth()) - i12);
    }

    protected int e(View view, int i10, int i11, int i12, boolean z10) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i13 = i11 + ((i12 - measuredHeight) / 2);
        if (z10) {
            view.layout(i10 - measuredWidth, i13, i10, measuredHeight + i13);
        } else {
            view.layout(i10, i13, i10 + measuredWidth, measuredHeight + i13);
        }
        return z10 ? -measuredWidth : measuredWidth;
    }

    public u0 f(int i10, long j10) {
        u0 u0Var = this.f811i;
        if (u0Var != null) {
            u0Var.c();
        }
        if (i10 != 0) {
            u0 u0VarB = androidx.core.view.m0.d(this).b(0.0f);
            u0VarB.g(j10);
            u0VarB.i(this.f806a.d(u0VarB, i10));
            return u0VarB;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        u0 u0VarB2 = androidx.core.view.m0.d(this).b(1.0f);
        u0VarB2.g(j10);
        u0VarB2.i(this.f806a.d(u0VarB2, i10));
        return u0VarB2;
    }

    public int getAnimatedVisibility() {
        return this.f811i != null ? this.f806a.f815b : getVisibility();
    }

    public int getContentHeight() {
        return this.f810h;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(R$styleable.ActionBar_height, 0));
        typedArrayObtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f809f;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.p(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f813k = false;
        }
        if (!this.f813k) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f813k = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f813k = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f812j = false;
        }
        if (!this.f812j) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f812j = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f812j = false;
        }
        return true;
    }

    public abstract void setContentHeight(int i10);

    @Override // android.view.View
    public void setVisibility(int i10) {
        if (i10 != getVisibility()) {
            u0 u0Var = this.f811i;
            if (u0Var != null) {
                u0Var.c();
            }
            super.setVisibility(i10);
        }
    }
}
