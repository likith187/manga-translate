package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.j;

/* JADX INFO: loaded from: classes.dex */
public abstract class f0 extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f3670b = {"android:visibility:visibility", "android:visibility:parent"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3671a = 3;

    private static class a extends AnimatorListenerAdapter implements j.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f3672a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f3673b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ViewGroup f3674c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f3675f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f3676h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f3677i = false;

        a(View view, int i10, boolean z10) {
            this.f3672a = view;
            this.f3673b = i10;
            this.f3674c = (ViewGroup) view.getParent();
            this.f3675f = z10;
            i(true);
        }

        private void h() {
            if (!this.f3677i) {
                z.f(this.f3672a, this.f3673b);
                ViewGroup viewGroup = this.f3674c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            i(false);
        }

        private void i(boolean z10) {
            ViewGroup viewGroup;
            if (!this.f3675f || this.f3676h == z10 || (viewGroup = this.f3674c) == null) {
                return;
            }
            this.f3676h = z10;
            y.a(viewGroup, z10);
        }

        @Override // androidx.transition.j.i
        public void a(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void b(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void d(j jVar) {
            i(false);
            if (this.f3677i) {
                return;
            }
            z.f(this.f3672a, this.f3673b);
        }

        @Override // androidx.transition.j.i
        public void e(j jVar) {
            i(true);
            if (this.f3677i) {
                return;
            }
            z.f(this.f3672a, 0);
        }

        @Override // androidx.transition.j.i
        public void g(j jVar) {
            jVar.removeListener(this);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f3677i = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            h();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (z10) {
                return;
            }
            h();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator, boolean z10) {
            if (z10) {
                z.f(this.f3672a, 0);
                ViewGroup viewGroup = this.f3674c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
        }
    }

    private class b extends AnimatorListenerAdapter implements j.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ViewGroup f3678a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f3679b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final View f3680c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f3681f = true;

        b(ViewGroup viewGroup, View view, View view2) {
            this.f3678a = viewGroup;
            this.f3679b = view;
            this.f3680c = view2;
        }

        private void h() {
            this.f3680c.setTag(R$id.save_overlay_view, null);
            this.f3678a.getOverlay().remove(this.f3679b);
            this.f3681f = false;
        }

        @Override // androidx.transition.j.i
        public void a(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void b(j jVar) {
            if (this.f3681f) {
                h();
            }
        }

        @Override // androidx.transition.j.i
        public void d(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void e(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void g(j jVar) {
            jVar.removeListener(this);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            h();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            this.f3678a.getOverlay().remove(this.f3679b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            if (this.f3679b.getParent() == null) {
                this.f3678a.getOverlay().add(this.f3679b);
            } else {
                f0.this.cancel();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator, boolean z10) {
            if (z10) {
                this.f3680c.setTag(R$id.save_overlay_view, this.f3679b);
                this.f3678a.getOverlay().add(this.f3679b);
                this.f3681f = true;
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (z10) {
                return;
            }
            h();
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f3683a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f3684b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f3685c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3686d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ViewGroup f3687e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ViewGroup f3688f;

        c() {
        }
    }

    private void captureValues(v vVar) {
        vVar.f3729a.put("android:visibility:visibility", Integer.valueOf(vVar.f3730b.getVisibility()));
        vVar.f3729a.put("android:visibility:parent", vVar.f3730b.getParent());
        int[] iArr = new int[2];
        vVar.f3730b.getLocationOnScreen(iArr);
        vVar.f3729a.put("android:visibility:screenLocation", iArr);
    }

    private c t(v vVar, v vVar2) {
        c cVar = new c();
        cVar.f3683a = false;
        cVar.f3684b = false;
        if (vVar == null || !vVar.f3729a.containsKey("android:visibility:visibility")) {
            cVar.f3685c = -1;
            cVar.f3687e = null;
        } else {
            cVar.f3685c = ((Integer) vVar.f3729a.get("android:visibility:visibility")).intValue();
            cVar.f3687e = (ViewGroup) vVar.f3729a.get("android:visibility:parent");
        }
        if (vVar2 == null || !vVar2.f3729a.containsKey("android:visibility:visibility")) {
            cVar.f3686d = -1;
            cVar.f3688f = null;
        } else {
            cVar.f3686d = ((Integer) vVar2.f3729a.get("android:visibility:visibility")).intValue();
            cVar.f3688f = (ViewGroup) vVar2.f3729a.get("android:visibility:parent");
        }
        if (vVar != null && vVar2 != null) {
            int i10 = cVar.f3685c;
            int i11 = cVar.f3686d;
            if (i10 == i11 && cVar.f3687e == cVar.f3688f) {
                return cVar;
            }
            if (i10 != i11) {
                if (i10 == 0) {
                    cVar.f3684b = false;
                    cVar.f3683a = true;
                } else if (i11 == 0) {
                    cVar.f3684b = true;
                    cVar.f3683a = true;
                }
            } else if (cVar.f3688f == null) {
                cVar.f3684b = false;
                cVar.f3683a = true;
            } else if (cVar.f3687e == null) {
                cVar.f3684b = true;
                cVar.f3683a = true;
            }
        } else if (vVar == null && cVar.f3686d == 0) {
            cVar.f3684b = true;
            cVar.f3683a = true;
        } else if (vVar2 == null && cVar.f3685c == 0) {
            cVar.f3684b = false;
            cVar.f3683a = true;
        }
        return cVar;
    }

    @Override // androidx.transition.j
    public void captureEndValues(v vVar) {
        captureValues(vVar);
    }

    @Override // androidx.transition.j
    public void captureStartValues(v vVar) {
        captureValues(vVar);
    }

    @Override // androidx.transition.j
    public Animator createAnimator(ViewGroup viewGroup, v vVar, v vVar2) {
        c cVarT = t(vVar, vVar2);
        if (!cVarT.f3683a) {
            return null;
        }
        if (cVarT.f3687e == null && cVarT.f3688f == null) {
            return null;
        }
        return cVarT.f3684b ? v(viewGroup, vVar, cVarT.f3685c, vVar2, cVarT.f3686d) : x(viewGroup, vVar, cVarT.f3685c, vVar2, cVarT.f3686d);
    }

    @Override // androidx.transition.j
    public String[] getTransitionProperties() {
        return f3670b;
    }

    @Override // androidx.transition.j
    public boolean isTransitionRequired(v vVar, v vVar2) {
        if (vVar == null && vVar2 == null) {
            return false;
        }
        if (vVar != null && vVar2 != null && vVar2.f3729a.containsKey("android:visibility:visibility") != vVar.f3729a.containsKey("android:visibility:visibility")) {
            return false;
        }
        c cVarT = t(vVar, vVar2);
        if (cVarT.f3683a) {
            return cVarT.f3685c == 0 || cVarT.f3686d == 0;
        }
        return false;
    }

    public abstract Animator u(ViewGroup viewGroup, View view, v vVar, v vVar2);

    public Animator v(ViewGroup viewGroup, v vVar, int i10, v vVar2, int i11) {
        if ((this.f3671a & 1) != 1 || vVar2 == null) {
            return null;
        }
        if (vVar == null) {
            View view = (View) vVar2.f3730b.getParent();
            if (t(getMatchedTransitionValues(view, false), getTransitionValues(view, false)).f3683a) {
                return null;
            }
        }
        return u(viewGroup, vVar2.f3730b, vVar, vVar2);
    }

    public abstract Animator w(ViewGroup viewGroup, View view, v vVar, v vVar2);

    /* JADX WARN: Removed duplicated region for block: B:23:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0069 A[PHI: r2
      0x0069: PHI (r2v3 android.view.View) = 
      (r2v2 android.view.View)
      (r2v2 android.view.View)
      (r2v2 android.view.View)
      (r2v2 android.view.View)
      (r2v2 android.view.View)
      (r2v2 android.view.View)
      (r2v6 android.view.View)
     binds: [B:26:0x003e, B:31:0x004d, B:37:0x0076, B:39:0x0079, B:41:0x007f, B:43:0x0083, B:34:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.animation.Animator x(android.view.ViewGroup r11, androidx.transition.v r12, int r13, androidx.transition.v r14, int r15) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.f0.x(android.view.ViewGroup, androidx.transition.v, int, androidx.transition.v, int):android.animation.Animator");
    }

    public void y(int i10) {
        if ((i10 & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.f3671a = i10;
    }
}
