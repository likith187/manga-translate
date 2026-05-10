package com.coloros.translate.panel;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.widget.OverScroller;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.m0;
import com.coloros.translate.base.R$dimen;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import t2.b;

/* JADX INFO: loaded from: classes.dex */
public final class ScrollableTextView extends AppCompatTextView {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f5353m = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f5356c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5357f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final OverScroller f5358h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private VelocityTracker f5359i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f5360j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f5361k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f5362l;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ScrollableTextView(Context context) {
        this(context, null, 0, 6, null);
        r.e(context, "context");
    }

    private final void b(int i10) {
        this.f5358h.fling(0, getScrollY(), 0, i10, 0, 0, 0, (computeVerticalScrollRange() - getHeight()) + this.f5362l, 0, (int) getResources().getDimension(R$dimen.common_dp_20));
        m0.Z(this);
    }

    private final boolean c() {
        Object systemService = getContext().getSystemService("window");
        r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        int rotation = windowManager.getDefaultDisplay().getRotation();
        Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
        r.d(bounds, "getBounds(...)");
        return t2.a.f(getContext()).l().e() != b.a.UNFOLD && ((rotation == 1 || rotation == 3) && bounds.width() > bounds.height());
    }

    @Override // android.widget.TextView, android.view.View
    public void computeScroll() {
        if (this.f5358h.computeScrollOffset()) {
            scrollTo(0, this.f5358h.getCurrY());
            m0.Z(this);
        }
    }

    public final void d() {
        scrollTo(0, 0);
    }

    public final void e(boolean z10) {
        this.f5362l = z10 ? (int) getResources().getDimension(R$dimen.common_dp_30) : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ad  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instruction units count: 297
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.panel.ScrollableTextView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ScrollableTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        r.e(context, "context");
    }

    public /* synthetic */ ScrollableTextView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? R.attr.textViewStyle : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        r.e(context, "context");
        this.f5354a = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        this.f5355b = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        this.f5358h = new OverScroller(context);
    }
}
