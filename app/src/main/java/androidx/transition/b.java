package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.j;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f3616b = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Property f3617c = new a(PointF.class, "topLeft");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Property f3618f = new C0043b(PointF.class, "bottomRight");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Property f3619h = new c(PointF.class, "bottomRight");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Property f3620i = new d(PointF.class, "topLeft");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Property f3621j = new e(PointF.class, "position");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final androidx.transition.h f3622k = new androidx.transition.h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f3623a = false;

    class a extends Property {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(i iVar) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(i iVar, PointF pointF) {
            iVar.c(pointF);
        }
    }

    /* JADX INFO: renamed from: androidx.transition.b$b, reason: collision with other inner class name */
    class C0043b extends Property {
        C0043b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(i iVar) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(i iVar, PointF pointF) {
            iVar.a(pointF);
        }
    }

    class c extends Property {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            z.d(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    class d extends Property {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            z.d(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    class e extends Property {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            int iRound = Math.round(pointF.x);
            int iRound2 = Math.round(pointF.y);
            z.d(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
        }
    }

    class f extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f3624a;
        private final i mViewBounds;

        f(i iVar) {
            this.f3624a = iVar;
            this.mViewBounds = iVar;
        }
    }

    private static class g extends AnimatorListenerAdapter implements j.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f3626a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Rect f3627b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f3628c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Rect f3629f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f3630h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final int f3631i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final int f3632j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final int f3633k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final int f3634l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final int f3635m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final int f3636n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f3637o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final int f3638p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f3639q;

        g(View view, Rect rect, boolean z10, Rect rect2, boolean z11, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.f3626a = view;
            this.f3627b = rect;
            this.f3628c = z10;
            this.f3629f = rect2;
            this.f3630h = z11;
            this.f3631i = i10;
            this.f3632j = i11;
            this.f3633k = i12;
            this.f3634l = i13;
            this.f3635m = i14;
            this.f3636n = i15;
            this.f3637o = i16;
            this.f3638p = i17;
        }

        @Override // androidx.transition.j.i
        public void a(j jVar) {
        }

        @Override // androidx.transition.j.i
        public void b(j jVar) {
            this.f3639q = true;
        }

        @Override // androidx.transition.j.i
        public void d(j jVar) {
            this.f3626a.setTag(R$id.transition_clip, this.f3626a.getClipBounds());
            this.f3626a.setClipBounds(this.f3630h ? null : this.f3629f);
        }

        @Override // androidx.transition.j.i
        public void e(j jVar) {
            Rect rect = (Rect) this.f3626a.getTag(R$id.transition_clip);
            this.f3626a.setTag(R$id.transition_clip, null);
            this.f3626a.setClipBounds(rect);
        }

        @Override // androidx.transition.j.i
        public void g(j jVar) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            onAnimationStart(animator, false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (this.f3639q) {
                return;
            }
            Rect rect = null;
            if (z10) {
                if (!this.f3628c) {
                    rect = this.f3627b;
                }
            } else if (!this.f3630h) {
                rect = this.f3629f;
            }
            this.f3626a.setClipBounds(rect);
            if (z10) {
                z.d(this.f3626a, this.f3631i, this.f3632j, this.f3633k, this.f3634l);
            } else {
                z.d(this.f3626a, this.f3635m, this.f3636n, this.f3637o, this.f3638p);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator, boolean z10) {
            int iMax = Math.max(this.f3633k - this.f3631i, this.f3637o - this.f3635m);
            int iMax2 = Math.max(this.f3634l - this.f3632j, this.f3638p - this.f3636n);
            int i10 = z10 ? this.f3635m : this.f3631i;
            int i11 = z10 ? this.f3636n : this.f3632j;
            z.d(this.f3626a, i10, i11, iMax + i10, iMax2 + i11);
            this.f3626a.setClipBounds(z10 ? this.f3629f : this.f3627b);
        }
    }

    private static class h extends p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f3640a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ViewGroup f3641b;

        h(ViewGroup viewGroup) {
            this.f3641b = viewGroup;
        }

        @Override // androidx.transition.p, androidx.transition.j.i
        public void b(j jVar) {
            y.a(this.f3641b, false);
            this.f3640a = true;
        }

        @Override // androidx.transition.p, androidx.transition.j.i
        public void d(j jVar) {
            y.a(this.f3641b, false);
        }

        @Override // androidx.transition.p, androidx.transition.j.i
        public void e(j jVar) {
            y.a(this.f3641b, true);
        }

        @Override // androidx.transition.p, androidx.transition.j.i
        public void g(j jVar) {
            if (!this.f3640a) {
                y.a(this.f3641b, false);
            }
            jVar.removeListener(this);
        }
    }

    private static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f3642a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f3643b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f3644c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3645d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final View f3646e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f3647f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f3648g;

        i(View view) {
            this.f3646e = view;
        }

        private void b() {
            z.d(this.f3646e, this.f3642a, this.f3643b, this.f3644c, this.f3645d);
            this.f3647f = 0;
            this.f3648g = 0;
        }

        void a(PointF pointF) {
            this.f3644c = Math.round(pointF.x);
            this.f3645d = Math.round(pointF.y);
            int i10 = this.f3648g + 1;
            this.f3648g = i10;
            if (this.f3647f == i10) {
                b();
            }
        }

        void c(PointF pointF) {
            this.f3642a = Math.round(pointF.x);
            this.f3643b = Math.round(pointF.y);
            int i10 = this.f3647f + 1;
            this.f3647f = i10;
            if (i10 == this.f3648g) {
                b();
            }
        }
    }

    private void captureValues(v vVar) {
        View view = vVar.f3730b;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        vVar.f3729a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        vVar.f3729a.put("android:changeBounds:parent", vVar.f3730b.getParent());
        if (this.f3623a) {
            vVar.f3729a.put("android:changeBounds:clip", view.getClipBounds());
        }
    }

    @Override // androidx.transition.j
    public void captureEndValues(v vVar) {
        captureValues(vVar);
    }

    @Override // androidx.transition.j
    public void captureStartValues(v vVar) {
        Rect rect;
        captureValues(vVar);
        if (!this.f3623a || (rect = (Rect) vVar.f3730b.getTag(R$id.transition_clip)) == null) {
            return;
        }
        vVar.f3729a.put("android:changeBounds:clip", rect);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.transition.j
    public Animator createAnimator(ViewGroup viewGroup, v vVar, v vVar2) {
        int i10;
        View view;
        int i11;
        int i12;
        int i13;
        ObjectAnimator objectAnimatorA;
        int i14;
        ObjectAnimator objectAnimatorOfObject;
        Animator animatorC;
        if (vVar == null || vVar2 == null) {
            return null;
        }
        Map map = vVar.f3729a;
        Map map2 = vVar2.f3729a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = vVar2.f3730b;
        Rect rect = (Rect) vVar.f3729a.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) vVar2.f3729a.get("android:changeBounds:bounds");
        int i15 = rect.left;
        int i16 = rect2.left;
        int i17 = rect.top;
        int i18 = rect2.top;
        int i19 = rect.right;
        int i20 = rect2.right;
        int i21 = rect.bottom;
        int i22 = rect2.bottom;
        int i23 = i19 - i15;
        int i24 = i21 - i17;
        int i25 = i20 - i16;
        int i26 = i22 - i18;
        Rect rect3 = (Rect) vVar.f3729a.get("android:changeBounds:clip");
        Rect rect4 = (Rect) vVar2.f3729a.get("android:changeBounds:clip");
        if ((i23 == 0 || i24 == 0) && (i25 == 0 || i26 == 0)) {
            i10 = 0;
        } else {
            i10 = (i15 == i16 && i17 == i18) ? 0 : 1;
            if (i19 != i20 || i21 != i22) {
                i10++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i10++;
        }
        if (i10 <= 0) {
            return null;
        }
        if (this.f3623a) {
            view = view2;
            z.d(view, i15, i17, Math.max(i23, i25) + i15, i17 + Math.max(i24, i26));
            if (i15 == i16 && i17 == i18) {
                i11 = i20;
                i12 = i19;
                i13 = i17;
                objectAnimatorA = null;
            } else {
                i11 = i20;
                i12 = i19;
                i13 = i17;
                objectAnimatorA = androidx.transition.f.a(view, f3621j, getPathMotion().a(i15, i17, i16, i18));
            }
            boolean z10 = rect3 == null;
            if (z10) {
                i14 = 0;
                rect3 = new Rect(0, 0, i23, i24);
            } else {
                i14 = 0;
            }
            Rect rect5 = rect3;
            int i27 = rect4 == null ? 1 : i14;
            Rect rect6 = i27 != 0 ? new Rect(i14, i14, i25, i26) : rect4;
            if (rect5.equals(rect6)) {
                objectAnimatorOfObject = null;
            } else {
                view.setClipBounds(rect5);
                objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", f3622k, rect5, rect6);
                g gVar = new g(view, rect5, z10, rect6, i27, i15, i13, i12, i21, i16, i18, i11, i22);
                objectAnimatorOfObject.addListener(gVar);
                addListener(gVar);
            }
            animatorC = u.c(objectAnimatorA, objectAnimatorOfObject);
        } else {
            view = view2;
            z.d(view, i15, i17, i19, i21);
            if (i10 != 2) {
                animatorC = (i15 == i16 && i17 == i18) ? androidx.transition.f.a(view, f3619h, getPathMotion().a(i19, i21, i20, i22)) : androidx.transition.f.a(view, f3620i, getPathMotion().a(i15, i17, i16, i18));
            } else if (i23 == i25 && i24 == i26) {
                animatorC = androidx.transition.f.a(view, f3621j, getPathMotion().a(i15, i17, i16, i18));
            } else {
                i iVar = new i(view);
                ObjectAnimator objectAnimatorA2 = androidx.transition.f.a(iVar, f3617c, getPathMotion().a(i15, i17, i16, i18));
                ObjectAnimator objectAnimatorA3 = androidx.transition.f.a(iVar, f3618f, getPathMotion().a(i19, i21, i20, i22));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorA2, objectAnimatorA3);
                animatorSet.addListener(new f(iVar));
                animatorC = animatorSet;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            y.a(viewGroup4, true);
            getRootTransition().addListener(new h(viewGroup4));
        }
        return animatorC;
    }

    @Override // androidx.transition.j
    public String[] getTransitionProperties() {
        return f3616b;
    }

    @Override // androidx.transition.j
    public boolean isSeekingSupported() {
        return true;
    }
}
