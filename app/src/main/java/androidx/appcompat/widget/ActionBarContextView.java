package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.u0;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends androidx.appcompat.widget.a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private CharSequence f554l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private CharSequence f555m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f556n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f557o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View f558p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private LinearLayout f559q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TextView f560r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private TextView f561s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f562t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f563u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f564v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f565w;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.appcompat.view.b f566a;

        a(androidx.appcompat.view.b bVar) {
            this.f566a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f566a.a();
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    private void i() {
        if (this.f559q == null) {
            LayoutInflater.from(getContext()).inflate(R$layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f559q = linearLayout;
            this.f560r = (TextView) linearLayout.findViewById(R$id.action_bar_title);
            this.f561s = (TextView) this.f559q.findViewById(R$id.action_bar_subtitle);
            if (this.f562t != 0) {
                this.f560r.setTextAppearance(getContext(), this.f562t);
            }
            if (this.f563u != 0) {
                this.f561s.setTextAppearance(getContext(), this.f563u);
            }
        }
        this.f560r.setText(this.f554l);
        this.f561s.setText(this.f555m);
        boolean zIsEmpty = TextUtils.isEmpty(this.f554l);
        boolean zIsEmpty2 = TextUtils.isEmpty(this.f555m);
        this.f561s.setVisibility(!zIsEmpty2 ? 0 : 8);
        this.f559q.setVisibility((zIsEmpty && zIsEmpty2) ? 8 : 0);
        if (this.f559q.getParent() == null) {
            addView(this.f559q);
        }
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ u0 f(int i10, long j10) {
        return super.f(i10, j10);
    }

    public void g() {
        if (this.f556n == null) {
            k();
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f555m;
    }

    public CharSequence getTitle() {
        return this.f554l;
    }

    public void h(androidx.appcompat.view.b bVar) {
        View view = this.f556n;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.f565w, (ViewGroup) this, false);
            this.f556n = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f556n);
        }
        View viewFindViewById = this.f556n.findViewById(R$id.action_mode_close_button);
        this.f557o = viewFindViewById;
        viewFindViewById.setOnClickListener(new a(bVar));
        MenuBuilder menuBuilder = (MenuBuilder) bVar.c();
        ActionMenuPresenter actionMenuPresenter = this.f809f;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.i();
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        this.f809f = actionMenuPresenter2;
        actionMenuPresenter2.t(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        menuBuilder.addMenuPresenter(this.f809f, this.f807b);
        ActionMenuView actionMenuView = (ActionMenuView) this.f809f.getMenuView(this);
        this.f808c = actionMenuView;
        actionMenuView.setBackground(null);
        addView(this.f808c, layoutParams);
    }

    public boolean j() {
        return this.f564v;
    }

    public void k() {
        removeAllViews();
        this.f558p = null;
        this.f808c = null;
        this.f809f = null;
        View view = this.f557o;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    public boolean l() {
        ActionMenuPresenter actionMenuPresenter = this.f809f;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.u();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f809f;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.l();
            this.f809f.m();
        }
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean zB = o0.b(this);
        int paddingRight = zB ? (i12 - i10) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
        View view = this.f556n;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f556n.getLayoutParams();
            int i14 = zB ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i15 = zB ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int iD = androidx.appcompat.widget.a.d(paddingRight, i14, zB);
            paddingRight = androidx.appcompat.widget.a.d(iD + e(this.f556n, iD, paddingTop, paddingTop2, zB), i15, zB);
        }
        int iE = paddingRight;
        LinearLayout linearLayout = this.f559q;
        if (linearLayout != null && this.f558p == null && linearLayout.getVisibility() != 8) {
            iE += e(this.f559q, iE, paddingTop, paddingTop2, zB);
        }
        int i16 = iE;
        View view2 = this.f558p;
        if (view2 != null) {
            e(view2, i16, paddingTop, paddingTop2, zB);
        }
        int paddingLeft = zB ? getPaddingLeft() : (i12 - i10) - getPaddingRight();
        ActionMenuView actionMenuView = this.f808c;
        if (actionMenuView != null) {
            e(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zB);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        if (View.MeasureSpec.getMode(i10) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i11) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i10);
        int size2 = this.f810h;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i11);
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingTop;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f556n;
        if (view != null) {
            int iC = c(view, paddingLeft, iMakeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f556n.getLayoutParams();
            paddingLeft = iC - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f808c;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = c(this.f808c, paddingLeft, iMakeMeasureSpec, 0);
        }
        LinearLayout linearLayout = this.f559q;
        if (linearLayout != null && this.f558p == null) {
            if (this.f564v) {
                this.f559q.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f559q.getMeasuredWidth();
                boolean z10 = measuredWidth <= paddingLeft;
                if (z10) {
                    paddingLeft -= measuredWidth;
                }
                this.f559q.setVisibility(z10 ? 0 : 8);
            } else {
                paddingLeft = c(linearLayout, paddingLeft, iMakeMeasureSpec, 0);
            }
        }
        View view2 = this.f558p;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i12 = layoutParams.width;
            int i13 = i12 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i12 >= 0) {
                paddingLeft = Math.min(i12, paddingLeft);
            }
            int i14 = layoutParams.height;
            int i15 = i14 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i14 >= 0) {
                iMin = Math.min(i14, iMin);
            }
            this.f558p.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i13), View.MeasureSpec.makeMeasureSpec(iMin, i15));
        }
        if (this.f810h > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            int measuredHeight = getChildAt(i17).getMeasuredHeight() + paddingTop;
            if (measuredHeight > i16) {
                i16 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i16);
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.a
    public void setContentHeight(int i10) {
        this.f810h = i10;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f558p;
        if (view2 != null) {
            removeView(view2);
        }
        this.f558p = view;
        if (view != null && (linearLayout = this.f559q) != null) {
            removeView(linearLayout);
            this.f559q = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f555m = charSequence;
        i();
    }

    public void setTitle(CharSequence charSequence) {
        this.f554l = charSequence;
        i();
        androidx.core.view.m0.m0(this, charSequence);
    }

    public void setTitleOptional(boolean z10) {
        if (z10 != this.f564v) {
            requestLayout();
        }
        this.f564v = z10;
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        h0 h0VarW = h0.w(context, attributeSet, R$styleable.ActionMode, i10, 0);
        setBackground(h0VarW.g(R$styleable.ActionMode_background));
        this.f562t = h0VarW.n(R$styleable.ActionMode_titleTextStyle, 0);
        this.f563u = h0VarW.n(R$styleable.ActionMode_subtitleTextStyle, 0);
        this.f810h = h0VarW.m(R$styleable.ActionMode_height, 0);
        this.f565w = h0VarW.n(R$styleable.ActionMode_closeItemLayout, R$layout.abc_action_mode_close_item_material);
        h0VarW.y();
    }
}
