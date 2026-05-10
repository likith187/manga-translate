package androidx.core.view.insets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.R$id;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ProtectionLayout extends FrameLayout {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f2059c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f2060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f2061b;

    public ProtectionLayout(Context context) {
        super(context);
        this.f2060a = new ArrayList();
    }

    private void a(Context context, int i10, f0.a aVar) {
        throw null;
    }

    private void b() {
        if (this.f2060a.isEmpty()) {
            return;
        }
        this.f2061b = new a(getOrInstallSystemBarStateMonitor(), this.f2060a);
        int childCount = getChildCount();
        int iH = this.f2061b.h();
        for (int i10 = 0; i10 < iH; i10++) {
            this.f2061b.g(i10);
            a(getContext(), i10 + childCount, null);
        }
    }

    private void c() {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R$id.tag_system_bar_state_monitor);
        if (tag instanceof d) {
            d dVar = (d) tag;
            if (dVar.k()) {
                return;
            }
            dVar.h();
            viewGroup.setTag(R$id.tag_system_bar_state_monitor, null);
        }
    }

    private void d() {
        if (this.f2061b != null) {
            removeViews(getChildCount() - this.f2061b.h(), this.f2061b.h());
            if (this.f2061b.h() > 0) {
                this.f2061b.g(0);
                throw null;
            }
            this.f2061b.f();
            this.f2061b = null;
        }
    }

    private d getOrInstallSystemBarStateMonitor() {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R$id.tag_system_bar_state_monitor);
        if (tag instanceof d) {
            return (d) tag;
        }
        d dVar = new d(viewGroup);
        viewGroup.setTag(R$id.tag_system_bar_state_monitor, dVar);
        return dVar;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (view != null && view.getTag() != f2059c) {
            a aVar = this.f2061b;
            int childCount = getChildCount() - (aVar != null ? aVar.h() : 0);
            if (i10 > childCount || i10 < 0) {
                i10 = childCount;
            }
        }
        super.addView(view, i10, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f2061b != null) {
            d();
        }
        b();
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d();
        c();
    }

    public void setProtections(List<f0.a> list) {
        this.f2060a.clear();
        this.f2060a.addAll(list);
        if (isAttachedToWindow()) {
            d();
            b();
            requestApplyInsets();
        }
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f2060a = new ArrayList();
    }
}
