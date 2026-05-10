package com.coloros.translate.screen.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import d0.h;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class m extends androidx.customview.widget.a {

    /* JADX INFO: renamed from: h */
    public static final a f6048h = new a(null);

    /* JADX INFO: renamed from: a */
    private final ScreenTranslationToolCapsule f6049a;

    /* JADX INFO: renamed from: b */
    private final int f6050b;

    /* JADX INFO: renamed from: c */
    private final Map f6051c;

    /* JADX INFO: renamed from: f */
    private final AccessibilityManager f6052f;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(ScreenTranslationToolCapsule host) {
        super(host);
        kotlin.jvm.internal.r.e(host, "host");
        this.f6049a = host;
        this.f6050b = View.generateViewId();
        this.f6051c = new LinkedHashMap();
        Object systemService = host.getContext().getSystemService("accessibility");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
        this.f6052f = (AccessibilityManager) systemService;
    }

    @Override // androidx.customview.widget.a
    protected int getVirtualViewAt(float f10, float f11) {
        for (Map.Entry entry : this.f6051c.entrySet()) {
            int iIntValue = ((Number) entry.getKey()).intValue();
            View view = (View) entry.getValue();
            n8.q qVarN1 = this.f6049a.n1(view);
            float fFloatValue = ((Number) qVarN1.getFirst()).floatValue();
            float fFloatValue2 = ((Number) qVarN1.getSecond()).floatValue();
            if (view.isShown() && f11 > fFloatValue2 && f11 < fFloatValue2 + view.getHeight() && f10 > fFloatValue && f10 < fFloatValue + view.getWidth()) {
                return iIntValue;
            }
        }
        return this.f6050b;
    }

    @Override // androidx.customview.widget.a
    protected void getVisibleVirtualViews(List list) {
        for (Map.Entry entry : this.f6051c.entrySet()) {
            int iIntValue = ((Number) entry.getKey()).intValue();
            if (list != null) {
                list.add(Integer.valueOf(iIntValue));
            }
        }
    }

    @Override // androidx.customview.widget.a
    protected boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle) {
        return false;
    }

    @Override // androidx.customview.widget.a
    protected void onPopulateNodeForVirtualView(int i10, d0.h node) {
        kotlin.jvm.internal.r.e(node, "node");
        View view = (View) this.f6051c.get(Integer.valueOf(i10));
        Rect rect = new Rect(this.f6049a.getLeft(), this.f6049a.getTop(), this.f6049a.getRight(), this.f6049a.getBottom());
        if (view == null || !view.isShown()) {
            node.n0(false);
            node.i0(false);
            node.c0(new Rect());
            node.l0("");
            return;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i11 = iArr[0];
        node.d0(new Rect(i11, iArr[1], view.getWidth() + i11, iArr[1] + view.getHeight()));
        node.c0(rect);
        node.b(h.a.f11466i);
        node.n0(true);
        node.i0(true);
        node.l0(view.getContentDescription());
    }

    public final boolean t() {
        return this.f6052f.isEnabled() && this.f6052f.isTouchExplorationEnabled();
    }

    public final void u() {
        this.f6051c.clear();
    }

    public final void v(View... views) {
        kotlin.jvm.internal.r.e(views, "views");
        this.f6051c.clear();
        for (View view : views) {
            if (view != null) {
                this.f6051c.put(Integer.valueOf(View.generateViewId()), view);
            }
        }
    }
}
