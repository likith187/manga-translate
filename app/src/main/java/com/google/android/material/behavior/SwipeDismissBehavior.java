package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import androidx.customview.widget.c;
import d0.h;
import d0.k;

/* JADX INFO: loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.c {

    /* JADX INFO: renamed from: a */
    androidx.customview.widget.c f8959a;

    /* JADX INFO: renamed from: b */
    private boolean f8960b;

    /* JADX INFO: renamed from: c */
    private boolean f8961c;

    /* JADX INFO: renamed from: h */
    private boolean f8963h;

    /* JADX INFO: renamed from: f */
    private float f8962f = 0.0f;

    /* JADX INFO: renamed from: i */
    int f8964i = 2;

    /* JADX INFO: renamed from: j */
    float f8965j = 0.5f;

    /* JADX INFO: renamed from: k */
    float f8966k = 0.0f;

    /* JADX INFO: renamed from: l */
    float f8967l = 0.5f;

    /* JADX INFO: renamed from: m */
    private final c.AbstractC0020c f8968m = new a();

    class a extends c.AbstractC0020c {

        /* JADX INFO: renamed from: a */
        private int f8969a;

        /* JADX INFO: renamed from: b */
        private int f8970b = -1;

        a() {
        }

        private boolean a(View view, float f10) {
            if (f10 == 0.0f) {
                return Math.abs(view.getLeft() - this.f8969a) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f8965j);
            }
            boolean z10 = m0.v(view) == 1;
            int i10 = SwipeDismissBehavior.this.f8964i;
            if (i10 == 2) {
                return true;
            }
            if (i10 == 0) {
                if (z10) {
                    if (f10 >= 0.0f) {
                        return false;
                    }
                } else if (f10 <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (i10 != 1) {
                return false;
            }
            if (z10) {
                if (f10 <= 0.0f) {
                    return false;
                }
            } else if (f10 >= 0.0f) {
                return false;
            }
            return true;
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            int width;
            int width2;
            int width3;
            boolean z10 = m0.v(view) == 1;
            int i12 = SwipeDismissBehavior.this.f8964i;
            if (i12 == 0) {
                if (z10) {
                    width = this.f8969a - view.getWidth();
                    width2 = this.f8969a;
                } else {
                    width = this.f8969a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i12 != 1) {
                width = this.f8969a - view.getWidth();
                width2 = this.f8969a + view.getWidth();
            } else if (z10) {
                width = this.f8969a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f8969a - view.getWidth();
                width2 = this.f8969a;
            }
            return SwipeDismissBehavior.d(width, i10, width2);
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int clampViewPositionVertical(View view, int i10, int i11) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewCaptured(View view, int i10) {
            this.f8970b = i10;
            this.f8969a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                SwipeDismissBehavior.this.f8961c = true;
                parent.requestDisallowInterceptTouchEvent(true);
                SwipeDismissBehavior.this.f8961c = false;
            }
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewDragStateChanged(int i10) {
            SwipeDismissBehavior.this.getClass();
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
            float width = view.getWidth() * SwipeDismissBehavior.this.f8966k;
            float width2 = view.getWidth() * SwipeDismissBehavior.this.f8967l;
            float fAbs = Math.abs(i10 - this.f8969a);
            if (fAbs <= width) {
                view.setAlpha(1.0f);
            } else if (fAbs >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.c(0.0f, 1.0f - SwipeDismissBehavior.f(width, width2, fAbs), 1.0f));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x001d  */
        @Override // androidx.customview.widget.c.AbstractC0020c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onViewReleased(android.view.View r3, float r4, float r5) {
            /*
                r2 = this;
                r5 = -1
                r2.f8970b = r5
                int r5 = r3.getWidth()
                boolean r0 = r2.a(r3, r4)
                if (r0 == 0) goto L23
                r0 = 0
                int r4 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
                if (r4 < 0) goto L1d
                int r4 = r3.getLeft()
                int r0 = r2.f8969a
                if (r4 >= r0) goto L1b
                goto L1d
            L1b:
                int r0 = r0 + r5
                goto L21
            L1d:
                int r4 = r2.f8969a
                int r0 = r4 - r5
            L21:
                r4 = 1
                goto L26
            L23:
                int r0 = r2.f8969a
                r4 = 0
            L26:
                com.google.android.material.behavior.SwipeDismissBehavior r5 = com.google.android.material.behavior.SwipeDismissBehavior.this
                androidx.customview.widget.c r5 = r5.f8959a
                int r1 = r3.getTop()
                boolean r5 = r5.O(r0, r1)
                if (r5 == 0) goto L3f
                com.google.android.material.behavior.SwipeDismissBehavior$c r5 = new com.google.android.material.behavior.SwipeDismissBehavior$c
                com.google.android.material.behavior.SwipeDismissBehavior r2 = com.google.android.material.behavior.SwipeDismissBehavior.this
                r5.<init>(r3, r4)
                androidx.core.view.m0.a0(r3, r5)
                goto L46
            L3f:
                if (r4 == 0) goto L46
                com.google.android.material.behavior.SwipeDismissBehavior r2 = com.google.android.material.behavior.SwipeDismissBehavior.this
                r2.getClass()
            L46:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.a.onViewReleased(android.view.View, float, float):void");
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public boolean tryCaptureView(View view, int i10) {
            int i11 = this.f8970b;
            return (i11 == -1 || i11 == i10) && SwipeDismissBehavior.this.b(view);
        }
    }

    class b implements k {
        b() {
        }

        @Override // d0.k
        public boolean perform(View view, k.a aVar) {
            if (!SwipeDismissBehavior.this.b(view)) {
                return false;
            }
            boolean z10 = m0.v(view) == 1;
            int i10 = SwipeDismissBehavior.this.f8964i;
            m0.T(view, (!(i10 == 0 && z10) && (i10 != 1 || z10)) ? view.getWidth() : -view.getWidth());
            view.setAlpha(0.0f);
            SwipeDismissBehavior.this.getClass();
            return true;
        }
    }

    private class c implements Runnable {

        /* JADX INFO: renamed from: a */
        private final View f8973a;

        /* JADX INFO: renamed from: b */
        private final boolean f8974b;

        c(View view, boolean z10) {
            this.f8973a = view;
            this.f8974b = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.customview.widget.c cVar = SwipeDismissBehavior.this.f8959a;
            if (cVar != null && cVar.m(true)) {
                m0.a0(this.f8973a, this);
            } else if (this.f8974b) {
                SwipeDismissBehavior.this.getClass();
            }
        }
    }

    static float c(float f10, float f11, float f12) {
        return Math.min(Math.max(f10, f11), f12);
    }

    static int d(int i10, int i11, int i12) {
        return Math.min(Math.max(i10, i11), i12);
    }

    private void e(ViewGroup viewGroup) {
        if (this.f8959a == null) {
            this.f8959a = this.f8963h ? androidx.customview.widget.c.n(viewGroup, this.f8962f, this.f8968m) : androidx.customview.widget.c.o(viewGroup, this.f8968m);
        }
    }

    static float f(float f10, float f11, float f12) {
        return (f12 - f10) / (f11 - f10);
    }

    private void j(View view) {
        m0.c0(view, 1048576);
        if (b(view)) {
            m0.e0(view, h.a.f11482y, null, new b());
        }
    }

    public boolean b(View view) {
        return true;
    }

    public void g(float f10) {
        this.f8967l = c(0.0f, f10, 1.0f);
    }

    public void h(float f10) {
        this.f8966k = c(0.0f, f10, 1.0f);
    }

    public void i(int i10) {
        this.f8964i = i10;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z10 = this.f8960b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z10 = coordinatorLayout.z(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f8960b = z10;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f8960b = false;
        }
        if (!z10) {
            return false;
        }
        e(coordinatorLayout);
        return !this.f8961c && this.f8959a.P(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, view, i10);
        if (m0.t(view) == 0) {
            m0.t0(view, 1);
            j(view);
        }
        return zOnLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (this.f8959a == null) {
            return false;
        }
        if (this.f8961c && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f8959a.F(motionEvent);
        return true;
    }
}
