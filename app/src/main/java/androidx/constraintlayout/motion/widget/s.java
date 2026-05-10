package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.Xml;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.motion.widget.p;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$id;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.c;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class s {

    /* JADX INFO: renamed from: a */
    private int f1502a;

    /* JADX INFO: renamed from: e */
    int f1506e;

    /* JADX INFO: renamed from: f */
    g f1507f;

    /* JADX INFO: renamed from: g */
    c.a f1508g;

    /* JADX INFO: renamed from: j */
    private int f1511j;

    /* JADX INFO: renamed from: k */
    private String f1512k;

    /* JADX INFO: renamed from: o */
    Context f1516o;

    /* JADX INFO: renamed from: b */
    private int f1503b = -1;

    /* JADX INFO: renamed from: c */
    private boolean f1504c = false;

    /* JADX INFO: renamed from: d */
    private int f1505d = 0;

    /* JADX INFO: renamed from: h */
    private int f1509h = -1;

    /* JADX INFO: renamed from: i */
    private int f1510i = -1;

    /* JADX INFO: renamed from: l */
    private int f1513l = 0;

    /* JADX INFO: renamed from: m */
    private String f1514m = null;

    /* JADX INFO: renamed from: n */
    private int f1515n = -1;

    /* JADX INFO: renamed from: p */
    private int f1517p = -1;

    /* JADX INFO: renamed from: q */
    private int f1518q = -1;

    /* JADX INFO: renamed from: r */
    private int f1519r = -1;

    /* JADX INFO: renamed from: s */
    private int f1520s = -1;

    /* JADX INFO: renamed from: t */
    private int f1521t = -1;

    /* JADX INFO: renamed from: u */
    private int f1522u = -1;

    /* JADX INFO: renamed from: v */
    private int f1523v = -1;

    class a implements Interpolator {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ m.c f1524a;

        a(m.c cVar) {
            this.f1524a = cVar;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            return (float) this.f1524a.a(f10);
        }
    }

    static class b {

        /* JADX INFO: renamed from: a */
        private final int f1526a;

        /* JADX INFO: renamed from: b */
        private final int f1527b;

        /* JADX INFO: renamed from: c */
        long f1528c;

        /* JADX INFO: renamed from: d */
        m f1529d;

        /* JADX INFO: renamed from: e */
        int f1530e;

        /* JADX INFO: renamed from: f */
        int f1531f;

        /* JADX INFO: renamed from: h */
        t f1533h;

        /* JADX INFO: renamed from: i */
        Interpolator f1534i;

        /* JADX INFO: renamed from: k */
        float f1536k;

        /* JADX INFO: renamed from: l */
        float f1537l;

        /* JADX INFO: renamed from: m */
        long f1538m;

        /* JADX INFO: renamed from: o */
        boolean f1540o;

        /* JADX INFO: renamed from: g */
        m.d f1532g = new m.d();

        /* JADX INFO: renamed from: j */
        boolean f1535j = false;

        /* JADX INFO: renamed from: n */
        Rect f1539n = new Rect();

        b(t tVar, m mVar, int i10, int i11, int i12, Interpolator interpolator, int i13, int i14) {
            this.f1540o = false;
            this.f1533h = tVar;
            this.f1529d = mVar;
            this.f1530e = i10;
            this.f1531f = i11;
            long jNanoTime = System.nanoTime();
            this.f1528c = jNanoTime;
            this.f1538m = jNanoTime;
            this.f1533h.b(this);
            this.f1534i = interpolator;
            this.f1526a = i13;
            this.f1527b = i14;
            if (i12 == 3) {
                this.f1540o = true;
            }
            this.f1537l = i10 == 0 ? Float.MAX_VALUE : 1.0f / i10;
            a();
        }

        void a() {
            if (this.f1535j) {
                c();
            } else {
                b();
            }
        }

        void b() {
            long jNanoTime = System.nanoTime();
            long j10 = jNanoTime - this.f1538m;
            this.f1538m = jNanoTime;
            float f10 = this.f1536k + (((float) (j10 * 1.0E-6d)) * this.f1537l);
            this.f1536k = f10;
            if (f10 >= 1.0f) {
                this.f1536k = 1.0f;
            }
            Interpolator interpolator = this.f1534i;
            float interpolation = interpolator == null ? this.f1536k : interpolator.getInterpolation(this.f1536k);
            m mVar = this.f1529d;
            boolean zX = mVar.x(mVar.f1383b, interpolation, jNanoTime, this.f1532g);
            if (this.f1536k >= 1.0f) {
                if (this.f1526a != -1) {
                    this.f1529d.v().setTag(this.f1526a, Long.valueOf(System.nanoTime()));
                }
                if (this.f1527b != -1) {
                    this.f1529d.v().setTag(this.f1527b, null);
                }
                if (!this.f1540o) {
                    this.f1533h.g(this);
                }
            }
            if (this.f1536k < 1.0f || zX) {
                this.f1533h.e();
            }
        }

        void c() {
            long jNanoTime = System.nanoTime();
            long j10 = jNanoTime - this.f1538m;
            this.f1538m = jNanoTime;
            float f10 = this.f1536k - (((float) (j10 * 1.0E-6d)) * this.f1537l);
            this.f1536k = f10;
            if (f10 < 0.0f) {
                this.f1536k = 0.0f;
            }
            Interpolator interpolator = this.f1534i;
            float interpolation = interpolator == null ? this.f1536k : interpolator.getInterpolation(this.f1536k);
            m mVar = this.f1529d;
            boolean zX = mVar.x(mVar.f1383b, interpolation, jNanoTime, this.f1532g);
            if (this.f1536k <= 0.0f) {
                if (this.f1526a != -1) {
                    this.f1529d.v().setTag(this.f1526a, Long.valueOf(System.nanoTime()));
                }
                if (this.f1527b != -1) {
                    this.f1529d.v().setTag(this.f1527b, null);
                }
                this.f1533h.g(this);
            }
            if (this.f1536k > 0.0f || zX) {
                this.f1533h.e();
            }
        }

        public void d(int i10, float f10, float f11) {
            if (i10 == 1) {
                if (this.f1535j) {
                    return;
                }
                e(true);
            } else {
                if (i10 != 2) {
                    return;
                }
                this.f1529d.v().getHitRect(this.f1539n);
                if (this.f1539n.contains((int) f10, (int) f11) || this.f1535j) {
                    return;
                }
                e(true);
            }
        }

        void e(boolean z10) {
            int i10;
            this.f1535j = z10;
            if (z10 && (i10 = this.f1531f) != -1) {
                this.f1537l = i10 == 0 ? Float.MAX_VALUE : 1.0f / i10;
            }
            this.f1533h.e();
            this.f1538m = System.nanoTime();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    s(android.content.Context r11, org.xmlpull.v1.XmlPullParser r12) {
        /*
            Method dump skipped, instruction units count: 260
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.s.<init>(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    public /* synthetic */ void j(View[] viewArr) {
        if (this.f1517p != -1) {
            for (View view : viewArr) {
                view.setTag(this.f1517p, Long.valueOf(System.nanoTime()));
            }
        }
        if (this.f1518q != -1) {
            for (View view2 : viewArr) {
                view2.setTag(this.f1518q, null);
            }
        }
    }

    private void l(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.ViewTransition);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R$styleable.ViewTransition_android_id) {
                this.f1502a = typedArrayObtainStyledAttributes.getResourceId(index, this.f1502a);
            } else if (index == R$styleable.ViewTransition_motionTarget) {
                if (MotionLayout.H0) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f1511j);
                    this.f1511j = resourceId;
                    if (resourceId == -1) {
                        this.f1512k = typedArrayObtainStyledAttributes.getString(index);
                    }
                } else if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                    this.f1512k = typedArrayObtainStyledAttributes.getString(index);
                } else {
                    this.f1511j = typedArrayObtainStyledAttributes.getResourceId(index, this.f1511j);
                }
            } else if (index == R$styleable.ViewTransition_onStateTransition) {
                this.f1503b = typedArrayObtainStyledAttributes.getInt(index, this.f1503b);
            } else if (index == R$styleable.ViewTransition_transitionDisable) {
                this.f1504c = typedArrayObtainStyledAttributes.getBoolean(index, this.f1504c);
            } else if (index == R$styleable.ViewTransition_pathMotionArc) {
                this.f1505d = typedArrayObtainStyledAttributes.getInt(index, this.f1505d);
            } else if (index == R$styleable.ViewTransition_duration) {
                this.f1509h = typedArrayObtainStyledAttributes.getInt(index, this.f1509h);
            } else if (index == R$styleable.ViewTransition_upDuration) {
                this.f1510i = typedArrayObtainStyledAttributes.getInt(index, this.f1510i);
            } else if (index == R$styleable.ViewTransition_viewTransitionMode) {
                this.f1506e = typedArrayObtainStyledAttributes.getInt(index, this.f1506e);
            } else if (index == R$styleable.ViewTransition_motionInterpolator) {
                int i11 = typedArrayObtainStyledAttributes.peekValue(index).type;
                if (i11 == 1) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    this.f1515n = resourceId2;
                    if (resourceId2 != -1) {
                        this.f1513l = -2;
                    }
                } else if (i11 == 3) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f1514m = string;
                    if (string == null || string.indexOf("/") <= 0) {
                        this.f1513l = -1;
                    } else {
                        this.f1515n = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        this.f1513l = -2;
                    }
                } else {
                    this.f1513l = typedArrayObtainStyledAttributes.getInteger(index, this.f1513l);
                }
            } else if (index == R$styleable.ViewTransition_setsTag) {
                this.f1517p = typedArrayObtainStyledAttributes.getResourceId(index, this.f1517p);
            } else if (index == R$styleable.ViewTransition_clearsTag) {
                this.f1518q = typedArrayObtainStyledAttributes.getResourceId(index, this.f1518q);
            } else if (index == R$styleable.ViewTransition_ifTagSet) {
                this.f1519r = typedArrayObtainStyledAttributes.getResourceId(index, this.f1519r);
            } else if (index == R$styleable.ViewTransition_ifTagNotSet) {
                this.f1520s = typedArrayObtainStyledAttributes.getResourceId(index, this.f1520s);
            } else if (index == R$styleable.ViewTransition_SharedValueId) {
                this.f1522u = typedArrayObtainStyledAttributes.getResourceId(index, this.f1522u);
            } else if (index == R$styleable.ViewTransition_SharedValue) {
                this.f1521t = typedArrayObtainStyledAttributes.getInteger(index, this.f1521t);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void n(p.b bVar, View view) {
        int i10 = this.f1509h;
        if (i10 != -1) {
            bVar.E(i10);
        }
        bVar.H(this.f1505d);
        bVar.F(this.f1513l, this.f1514m, this.f1515n);
        int id = view.getId();
        g gVar = this.f1507f;
        if (gVar != null) {
            ArrayList arrayListD = gVar.d(-1);
            g gVar2 = new g();
            Iterator it = arrayListD.iterator();
            while (it.hasNext()) {
                gVar2.c(((d) it.next()).clone().i(id));
            }
            bVar.t(gVar2);
        }
    }

    void b(t tVar, MotionLayout motionLayout, View view) {
        m mVar = new m(view);
        mVar.B(view);
        this.f1507f.a(mVar);
        mVar.I(motionLayout.getWidth(), motionLayout.getHeight(), this.f1509h, System.nanoTime());
        new b(tVar, mVar, this.f1509h, this.f1510i, this.f1503b, f(motionLayout.getContext()), this.f1517p, this.f1518q);
    }

    void c(t tVar, MotionLayout motionLayout, int i10, androidx.constraintlayout.widget.c cVar, final View... viewArr) {
        if (this.f1504c) {
            return;
        }
        int i11 = this.f1506e;
        if (i11 == 2) {
            b(tVar, motionLayout, viewArr[0]);
            return;
        }
        if (i11 == 1) {
            for (int i12 : motionLayout.getConstraintSetIds()) {
                if (i12 != i10) {
                    androidx.constraintlayout.widget.c cVarT = motionLayout.T(i12);
                    for (View view : viewArr) {
                        c.a aVarY = cVarT.y(view.getId());
                        c.a aVar = this.f1508g;
                        if (aVar != null) {
                            aVar.d(aVarY);
                            aVarY.f1733g.putAll(this.f1508g.f1733g);
                        }
                    }
                }
            }
        }
        androidx.constraintlayout.widget.c cVar2 = new androidx.constraintlayout.widget.c();
        cVar2.p(cVar);
        for (View view2 : viewArr) {
            c.a aVarY2 = cVar2.y(view2.getId());
            c.a aVar2 = this.f1508g;
            if (aVar2 != null) {
                aVar2.d(aVarY2);
                aVarY2.f1733g.putAll(this.f1508g.f1733g);
            }
        }
        motionLayout.q0(i10, cVar2);
        motionLayout.q0(R$id.view_transition, cVar);
        motionLayout.setState(R$id.view_transition, -1, -1);
        p.b bVar = new p.b(-1, motionLayout.f1155a, R$id.view_transition, i10);
        for (View view3 : viewArr) {
            n(bVar, view3);
        }
        motionLayout.setTransition(bVar);
        motionLayout.k0(new Runnable() { // from class: androidx.constraintlayout.motion.widget.r
            @Override // java.lang.Runnable
            public final void run() {
                this.f1500a.j(viewArr);
            }
        });
    }

    boolean d(View view) {
        int i10 = this.f1519r;
        boolean z10 = i10 == -1 || view.getTag(i10) != null;
        int i11 = this.f1520s;
        return z10 && (i11 == -1 || view.getTag(i11) == null);
    }

    int e() {
        return this.f1502a;
    }

    Interpolator f(Context context) {
        int i10 = this.f1513l;
        if (i10 == -2) {
            return AnimationUtils.loadInterpolator(context, this.f1515n);
        }
        if (i10 == -1) {
            return new a(m.c.c(this.f1514m));
        }
        if (i10 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i10 == 1) {
            return new AccelerateInterpolator();
        }
        if (i10 == 2) {
            return new DecelerateInterpolator();
        }
        if (i10 == 4) {
            return new BounceInterpolator();
        }
        if (i10 == 5) {
            return new OvershootInterpolator();
        }
        if (i10 != 6) {
            return null;
        }
        return new AnticipateInterpolator();
    }

    public int g() {
        return this.f1521t;
    }

    public int h() {
        return this.f1522u;
    }

    public int i() {
        return this.f1503b;
    }

    boolean k(View view) {
        String str;
        if (view == null) {
            return false;
        }
        if ((this.f1511j == -1 && this.f1512k == null) || !d(view)) {
            return false;
        }
        if (view.getId() == this.f1511j) {
            return true;
        }
        return this.f1512k != null && (view.getLayoutParams() instanceof ConstraintLayout.b) && (str = ((ConstraintLayout.b) view.getLayoutParams()).constraintTag) != null && str.matches(this.f1512k);
    }

    boolean m(int i10) {
        int i11 = this.f1503b;
        return i11 == 1 ? i10 == 0 : i11 == 2 ? i10 == 1 : i11 == 3 && i10 == 0;
    }

    public String toString() {
        return "ViewTransition(" + androidx.constraintlayout.motion.widget.a.c(this.f1516o, this.f1502a) + ")";
    }
}
