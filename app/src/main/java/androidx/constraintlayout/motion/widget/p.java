package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R$id;
import androidx.constraintlayout.widget.R$styleable;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.oplus.aiunit.core.ConfigPackage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MotionLayout f1429a;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private MotionEvent f1441m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private MotionLayout.g f1444p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f1445q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final t f1446r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    float f1447s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    float f1448t;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    androidx.constraintlayout.widget.f f1430b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    b f1431c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1432d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList f1433e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f1434f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList f1435g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SparseArray f1436h = new SparseArray();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private HashMap f1437i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private SparseIntArray f1438j = new SparseIntArray();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1439k = 400;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f1440l = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f1442n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f1443o = false;

    class a implements Interpolator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ m.c f1449a;

        a(m.c cVar) {
            this.f1449a = cVar;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            return (float) this.f1449a.a(f10);
        }
    }

    p(Context context, MotionLayout motionLayout, int i10) {
        this.f1429a = motionLayout;
        this.f1446r = new t(motionLayout);
        K(context, i10);
        this.f1436h.put(R$id.motion_base, new androidx.constraintlayout.widget.c());
        this.f1437i.put("motion_base", Integer.valueOf(R$id.motion_base));
    }

    private boolean I(int i10) {
        int i11 = this.f1438j.get(i10);
        int size = this.f1438j.size();
        while (i11 > 0) {
            if (i11 == i10) {
                return true;
            }
            int i12 = size - 1;
            if (size < 0) {
                return true;
            }
            i11 = this.f1438j.get(i11);
            size = i12;
        }
        return false;
    }

    private boolean J() {
        return this.f1444p != null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void K(android.content.Context r10, int r11) {
        /*
            Method dump skipped, instruction units count: 452
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.p.K(android.content.Context, int):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int L(android.content.Context r18, org.xmlpull.v1.XmlPullParser r19) {
        /*
            Method dump skipped, instruction units count: 320
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.p.L(android.content.Context, org.xmlpull.v1.XmlPullParser):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int M(Context context, int i10) {
        XmlResourceParser xml = context.getResources().getXml(i10);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                String name = xml.getName();
                if (2 == eventType && "ConstraintSet".equals(name)) {
                    return L(context, xml);
                }
            }
            return -1;
        } catch (IOException e10) {
            Log.e("MotionScene", "Error parsing resource: " + i10, e10);
            return -1;
        } catch (XmlPullParserException e11) {
            Log.e("MotionScene", "Error parsing resource: " + i10, e11);
            return -1;
        }
    }

    private void N(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.include);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R$styleable.include_constraintSet) {
                M(context, typedArrayObtainStyledAttributes.getResourceId(index, -1));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void O(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.MotionScene);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R$styleable.MotionScene_defaultDuration) {
                int i11 = typedArrayObtainStyledAttributes.getInt(index, this.f1439k);
                this.f1439k = i11;
                if (i11 < 8) {
                    this.f1439k = 8;
                }
            } else if (index == R$styleable.MotionScene_layoutDuringTransition) {
                this.f1440l = typedArrayObtainStyledAttributes.getInteger(index, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void S(int i10, MotionLayout motionLayout) {
        androidx.constraintlayout.widget.c cVar = (androidx.constraintlayout.widget.c) this.f1436h.get(i10);
        cVar.f1721c = cVar.f1720b;
        int i11 = this.f1438j.get(i10);
        if (i11 > 0) {
            S(i11, motionLayout);
            androidx.constraintlayout.widget.c cVar2 = (androidx.constraintlayout.widget.c) this.f1436h.get(i11);
            if (cVar2 == null) {
                Log.e("MotionScene", "ERROR! invalid deriveConstraintsFrom: @id/" + androidx.constraintlayout.motion.widget.a.c(this.f1429a.getContext(), i11));
                return;
            }
            cVar.f1721c += "/" + cVar2.f1721c;
            cVar.O(cVar2);
        } else {
            cVar.f1721c += "  layout";
            cVar.N(motionLayout);
        }
        cVar.h(cVar);
    }

    public static String a0(String str) {
        if (str == null) {
            return "";
        }
        int iIndexOf = str.indexOf(47);
        return iIndexOf < 0 ? str : str.substring(iIndexOf + 1);
    }

    private int r(Context context, String str) {
        int identifier;
        if (str.contains("/")) {
            identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
        } else {
            identifier = -1;
        }
        if (identifier != -1) {
            return identifier;
        }
        if (str.length() > 1) {
            return Integer.parseInt(str.substring(1));
        }
        Log.e("MotionScene", "error in parsing id");
        return identifier;
    }

    private int y(int i10) {
        int iC;
        androidx.constraintlayout.widget.f fVar = this.f1430b;
        return (fVar == null || (iC = fVar.c(i10, -1, -1)) == -1) ? i10 : iC;
    }

    float A() {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return 0.0f;
        }
        return this.f1431c.f1462l.l();
    }

    float B() {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return 0.0f;
        }
        return this.f1431c.f1462l.m();
    }

    float C() {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return 0.0f;
        }
        return this.f1431c.f1462l.n();
    }

    float D() {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return 0.0f;
        }
        return this.f1431c.f1462l.o();
    }

    public float E() {
        b bVar = this.f1431c;
        if (bVar != null) {
            return bVar.f1459i;
        }
        return 0.0f;
    }

    int F() {
        b bVar = this.f1431c;
        if (bVar == null) {
            return -1;
        }
        return bVar.f1454d;
    }

    public b G(int i10) {
        for (b bVar : this.f1433e) {
            if (bVar.f1451a == i10) {
                return bVar;
            }
        }
        return null;
    }

    public List H(int i10) {
        int iY = y(i10);
        ArrayList arrayList = new ArrayList();
        for (b bVar : this.f1433e) {
            if (bVar.f1454d == iY || bVar.f1453c == iY) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    void P(float f10, float f11) {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return;
        }
        this.f1431c.f1462l.u(f10, f11);
    }

    void Q(float f10, float f11) {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return;
        }
        this.f1431c.f1462l.v(f10, f11);
    }

    void R(MotionEvent motionEvent, int i10, MotionLayout motionLayout) {
        MotionLayout.g gVar;
        MotionEvent motionEvent2;
        RectF rectF = new RectF();
        if (this.f1444p == null) {
            this.f1444p = this.f1429a.a0();
        }
        this.f1444p.a(motionEvent);
        if (i10 != -1) {
            int action = motionEvent.getAction();
            boolean z10 = false;
            if (action == 0) {
                this.f1447s = motionEvent.getRawX();
                this.f1448t = motionEvent.getRawY();
                this.f1441m = motionEvent;
                this.f1442n = false;
                if (this.f1431c.f1462l != null) {
                    RectF rectFF = this.f1431c.f1462l.f(this.f1429a, rectF);
                    if (rectFF != null && !rectFF.contains(this.f1441m.getX(), this.f1441m.getY())) {
                        this.f1441m = null;
                        this.f1442n = true;
                        return;
                    }
                    RectF rectFP = this.f1431c.f1462l.p(this.f1429a, rectF);
                    if (rectFP == null || rectFP.contains(this.f1441m.getX(), this.f1441m.getY())) {
                        this.f1443o = false;
                    } else {
                        this.f1443o = true;
                    }
                    this.f1431c.f1462l.w(this.f1447s, this.f1448t);
                    return;
                }
                return;
            }
            if (action == 2 && !this.f1442n) {
                float rawY = motionEvent.getRawY() - this.f1448t;
                float rawX = motionEvent.getRawX() - this.f1447s;
                if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent2 = this.f1441m) == null) {
                    return;
                }
                b bVarI = i(i10, rawX, rawY, motionEvent2);
                if (bVarI != null) {
                    motionLayout.setTransition(bVarI);
                    RectF rectFP2 = this.f1431c.f1462l.p(this.f1429a, rectF);
                    if (rectFP2 != null && !rectFP2.contains(this.f1441m.getX(), this.f1441m.getY())) {
                        z10 = true;
                    }
                    this.f1443o = z10;
                    this.f1431c.f1462l.z(this.f1447s, this.f1448t);
                }
            }
        }
        if (this.f1442n) {
            return;
        }
        b bVar = this.f1431c;
        if (bVar != null && bVar.f1462l != null && !this.f1443o) {
            this.f1431c.f1462l.s(motionEvent, this.f1444p, i10, this);
        }
        this.f1447s = motionEvent.getRawX();
        this.f1448t = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (gVar = this.f1444p) == null) {
            return;
        }
        gVar.d();
        this.f1444p = null;
        int i11 = motionLayout.f1168i;
        if (i11 != -1) {
            h(motionLayout, i11);
        }
    }

    void T(MotionLayout motionLayout) {
        for (int i10 = 0; i10 < this.f1436h.size(); i10++) {
            int iKeyAt = this.f1436h.keyAt(i10);
            if (I(iKeyAt)) {
                Log.e("MotionScene", "Cannot be derived from yourself");
                return;
            }
            S(iKeyAt, motionLayout);
        }
    }

    public void U(int i10, androidx.constraintlayout.widget.c cVar) {
        this.f1436h.put(i10, cVar);
    }

    public void V(int i10) {
        b bVar = this.f1431c;
        if (bVar != null) {
            bVar.E(i10);
        } else {
            this.f1439k = i10;
        }
    }

    public void W(boolean z10) {
        this.f1445q = z10;
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return;
        }
        this.f1431c.f1462l.x(this.f1445q);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void X(int r7, int r8) {
        /*
            r6 = this;
            androidx.constraintlayout.widget.f r0 = r6.f1430b
            r1 = -1
            if (r0 == 0) goto L18
            int r0 = r0.c(r7, r1, r1)
            if (r0 == r1) goto Lc
            goto Ld
        Lc:
            r0 = r7
        Ld:
            androidx.constraintlayout.widget.f r2 = r6.f1430b
            int r2 = r2.c(r8, r1, r1)
            if (r2 == r1) goto L16
            goto L1a
        L16:
            r2 = r8
            goto L1a
        L18:
            r0 = r7
            goto L16
        L1a:
            androidx.constraintlayout.motion.widget.p$b r3 = r6.f1431c
            if (r3 == 0) goto L2d
            int r3 = androidx.constraintlayout.motion.widget.p.b.a(r3)
            if (r3 != r8) goto L2d
            androidx.constraintlayout.motion.widget.p$b r3 = r6.f1431c
            int r3 = androidx.constraintlayout.motion.widget.p.b.c(r3)
            if (r3 != r7) goto L2d
            return
        L2d:
            java.util.ArrayList r3 = r6.f1433e
            java.util.Iterator r3 = r3.iterator()
        L33:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L6d
            java.lang.Object r4 = r3.next()
            androidx.constraintlayout.motion.widget.p$b r4 = (androidx.constraintlayout.motion.widget.p.b) r4
            int r5 = androidx.constraintlayout.motion.widget.p.b.a(r4)
            if (r5 != r2) goto L4b
            int r5 = androidx.constraintlayout.motion.widget.p.b.c(r4)
            if (r5 == r0) goto L57
        L4b:
            int r5 = androidx.constraintlayout.motion.widget.p.b.a(r4)
            if (r5 != r8) goto L33
            int r5 = androidx.constraintlayout.motion.widget.p.b.c(r4)
            if (r5 != r7) goto L33
        L57:
            r6.f1431c = r4
            if (r4 == 0) goto L6c
            androidx.constraintlayout.motion.widget.q r7 = androidx.constraintlayout.motion.widget.p.b.l(r4)
            if (r7 == 0) goto L6c
            androidx.constraintlayout.motion.widget.p$b r7 = r6.f1431c
            androidx.constraintlayout.motion.widget.q r7 = androidx.constraintlayout.motion.widget.p.b.l(r7)
            boolean r6 = r6.f1445q
            r7.x(r6)
        L6c:
            return
        L6d:
            androidx.constraintlayout.motion.widget.p$b r7 = r6.f1434f
            java.util.ArrayList r3 = r6.f1435g
            java.util.Iterator r3 = r3.iterator()
        L75:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L89
            java.lang.Object r4 = r3.next()
            androidx.constraintlayout.motion.widget.p$b r4 = (androidx.constraintlayout.motion.widget.p.b) r4
            int r5 = androidx.constraintlayout.motion.widget.p.b.a(r4)
            if (r5 != r8) goto L75
            r7 = r4
            goto L75
        L89:
            androidx.constraintlayout.motion.widget.p$b r8 = new androidx.constraintlayout.motion.widget.p$b
            r8.<init>(r6, r7)
            androidx.constraintlayout.motion.widget.p.b.d(r8, r0)
            androidx.constraintlayout.motion.widget.p.b.b(r8, r2)
            if (r0 == r1) goto L9b
            java.util.ArrayList r7 = r6.f1433e
            r7.add(r8)
        L9b:
            r6.f1431c = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.p.X(int, int):void");
    }

    public void Y(b bVar) {
        this.f1431c = bVar;
        if (bVar == null || bVar.f1462l == null) {
            return;
        }
        this.f1431c.f1462l.x(this.f1445q);
    }

    void Z() {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return;
        }
        this.f1431c.f1462l.A();
    }

    boolean b0() {
        Iterator it = this.f1433e.iterator();
        while (it.hasNext()) {
            if (((b) it.next()).f1462l != null) {
                return true;
            }
        }
        b bVar = this.f1431c;
        return (bVar == null || bVar.f1462l == null) ? false : true;
    }

    public void c0(int i10, View... viewArr) {
        this.f1446r.i(i10, viewArr);
    }

    public void f(MotionLayout motionLayout, int i10) {
        for (b bVar : this.f1433e) {
            if (bVar.f1463m.size() > 0) {
                Iterator it = bVar.f1463m.iterator();
                while (it.hasNext()) {
                    ((b.a) it.next()).c(motionLayout);
                }
            }
        }
        for (b bVar2 : this.f1435g) {
            if (bVar2.f1463m.size() > 0) {
                Iterator it2 = bVar2.f1463m.iterator();
                while (it2.hasNext()) {
                    ((b.a) it2.next()).c(motionLayout);
                }
            }
        }
        for (b bVar3 : this.f1433e) {
            if (bVar3.f1463m.size() > 0) {
                Iterator it3 = bVar3.f1463m.iterator();
                while (it3.hasNext()) {
                    ((b.a) it3.next()).a(motionLayout, i10, bVar3);
                }
            }
        }
        for (b bVar4 : this.f1435g) {
            if (bVar4.f1463m.size() > 0) {
                Iterator it4 = bVar4.f1463m.iterator();
                while (it4.hasNext()) {
                    ((b.a) it4.next()).a(motionLayout, i10, bVar4);
                }
            }
        }
    }

    public boolean g(int i10, m mVar) {
        return this.f1446r.d(i10, mVar);
    }

    boolean h(MotionLayout motionLayout, int i10) {
        b bVar;
        if (J() || this.f1432d) {
            return false;
        }
        for (b bVar2 : this.f1433e) {
            if (bVar2.f1464n != 0 && ((bVar = this.f1431c) != bVar2 || !bVar.D(2))) {
                if (i10 == bVar2.f1454d && (bVar2.f1464n == 4 || bVar2.f1464n == 2)) {
                    MotionLayout.k kVar = MotionLayout.k.FINISHED;
                    motionLayout.setState(kVar);
                    motionLayout.setTransition(bVar2);
                    if (bVar2.f1464n == 4) {
                        motionLayout.j0();
                        motionLayout.setState(MotionLayout.k.SETUP);
                        motionLayout.setState(MotionLayout.k.MOVING);
                    } else {
                        motionLayout.setProgress(1.0f);
                        motionLayout.M(true);
                        motionLayout.setState(MotionLayout.k.SETUP);
                        motionLayout.setState(MotionLayout.k.MOVING);
                        motionLayout.setState(kVar);
                        motionLayout.b0();
                    }
                    return true;
                }
                if (i10 == bVar2.f1453c && (bVar2.f1464n == 3 || bVar2.f1464n == 1)) {
                    MotionLayout.k kVar2 = MotionLayout.k.FINISHED;
                    motionLayout.setState(kVar2);
                    motionLayout.setTransition(bVar2);
                    if (bVar2.f1464n == 3) {
                        motionLayout.l0();
                        motionLayout.setState(MotionLayout.k.SETUP);
                        motionLayout.setState(MotionLayout.k.MOVING);
                    } else {
                        motionLayout.setProgress(0.0f);
                        motionLayout.M(true);
                        motionLayout.setState(MotionLayout.k.SETUP);
                        motionLayout.setState(MotionLayout.k.MOVING);
                        motionLayout.setState(kVar2);
                        motionLayout.b0();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public b i(int i10, float f10, float f11, MotionEvent motionEvent) {
        if (i10 == -1) {
            return this.f1431c;
        }
        List<b> listH = H(i10);
        RectF rectF = new RectF();
        float f12 = 0.0f;
        b bVar = null;
        for (b bVar2 : listH) {
            if (!bVar2.f1465o && bVar2.f1462l != null) {
                bVar2.f1462l.x(this.f1445q);
                RectF rectFP = bVar2.f1462l.p(this.f1429a, rectF);
                if (rectFP == null || motionEvent == null || rectFP.contains(motionEvent.getX(), motionEvent.getY())) {
                    RectF rectFF = bVar2.f1462l.f(this.f1429a, rectF);
                    if (rectFF == null || motionEvent == null || rectFF.contains(motionEvent.getX(), motionEvent.getY())) {
                        float fA = bVar2.f1462l.a(f10, f11);
                        if (bVar2.f1462l.f1483l && motionEvent != null) {
                            fA = ((float) (Math.atan2(f11 + r10, f10 + r9) - Math.atan2(motionEvent.getX() - bVar2.f1462l.f1480i, motionEvent.getY() - bVar2.f1462l.f1481j))) * 10.0f;
                        }
                        float f13 = fA * (bVar2.f1453c == i10 ? -1.0f : 1.1f);
                        if (f13 > f12) {
                            bVar = bVar2;
                            f12 = f13;
                        }
                    }
                }
            }
        }
        return bVar;
    }

    public int j() {
        b bVar = this.f1431c;
        if (bVar != null) {
            return bVar.f1466p;
        }
        return -1;
    }

    int k() {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return 0;
        }
        return this.f1431c.f1462l.d();
    }

    androidx.constraintlayout.widget.c l(int i10) {
        return m(i10, -1, -1);
    }

    androidx.constraintlayout.widget.c m(int i10, int i11, int i12) {
        int iC;
        androidx.constraintlayout.widget.f fVar = this.f1430b;
        if (fVar != null && (iC = fVar.c(i10, i11, i12)) != -1) {
            i10 = iC;
        }
        if (this.f1436h.get(i10) != null) {
            return (androidx.constraintlayout.widget.c) this.f1436h.get(i10);
        }
        Log.e("MotionScene", "Warning could not find ConstraintSet id/" + androidx.constraintlayout.motion.widget.a.c(this.f1429a.getContext(), i10) + " In MotionScene");
        SparseArray sparseArray = this.f1436h;
        return (androidx.constraintlayout.widget.c) sparseArray.get(sparseArray.keyAt(0));
    }

    public int[] n() {
        int size = this.f1436h.size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = this.f1436h.keyAt(i10);
        }
        return iArr;
    }

    public ArrayList o() {
        return this.f1433e;
    }

    public int p() {
        b bVar = this.f1431c;
        return bVar != null ? bVar.f1458h : this.f1439k;
    }

    int q() {
        b bVar = this.f1431c;
        if (bVar == null) {
            return -1;
        }
        return bVar.f1453c;
    }

    public Interpolator s() {
        int i10 = this.f1431c.f1455e;
        if (i10 == -2) {
            return AnimationUtils.loadInterpolator(this.f1429a.getContext(), this.f1431c.f1457g);
        }
        if (i10 == -1) {
            return new a(m.c.c(this.f1431c.f1456f));
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

    public void t(m mVar) {
        b bVar = this.f1431c;
        if (bVar != null) {
            Iterator it = bVar.f1461k.iterator();
            while (it.hasNext()) {
                ((g) it.next()).b(mVar);
            }
        } else {
            b bVar2 = this.f1434f;
            if (bVar2 != null) {
                Iterator it2 = bVar2.f1461k.iterator();
                while (it2.hasNext()) {
                    ((g) it2.next()).b(mVar);
                }
            }
        }
    }

    float u() {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return 0.0f;
        }
        return this.f1431c.f1462l.g();
    }

    float v() {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return 0.0f;
        }
        return this.f1431c.f1462l.h();
    }

    boolean w() {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return false;
        }
        return this.f1431c.f1462l.i();
    }

    float x(float f10, float f11) {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return 0.0f;
        }
        return this.f1431c.f1462l.j(f10, f11);
    }

    int z() {
        b bVar = this.f1431c;
        if (bVar == null || bVar.f1462l == null) {
            return 0;
        }
        return this.f1431c.f1462l.k();
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1451a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1452b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1453c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1454d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f1455e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f1456f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f1457g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f1458h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f1459i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final p f1460j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private ArrayList f1461k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private q f1462l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private ArrayList f1463m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f1464n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f1465o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f1466p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f1467q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f1468r;

        public static class a implements View.OnClickListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final b f1469a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f1470b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int f1471c;

            public a(Context context, b bVar, XmlPullParser xmlPullParser) {
                this.f1470b = -1;
                this.f1471c = 17;
                this.f1469a = bVar;
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.OnClick);
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                for (int i10 = 0; i10 < indexCount; i10++) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i10);
                    if (index == R$styleable.OnClick_targetId) {
                        this.f1470b = typedArrayObtainStyledAttributes.getResourceId(index, this.f1470b);
                    } else if (index == R$styleable.OnClick_clickAction) {
                        this.f1471c = typedArrayObtainStyledAttributes.getInt(index, this.f1471c);
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            }

            public void a(MotionLayout motionLayout, int i10, b bVar) {
                int i11 = this.f1470b;
                View viewFindViewById = motionLayout;
                if (i11 != -1) {
                    viewFindViewById = motionLayout.findViewById(i11);
                }
                if (viewFindViewById == null) {
                    Log.e("MotionScene", "OnClick could not find id " + this.f1470b);
                    return;
                }
                int i12 = bVar.f1454d;
                int i13 = bVar.f1453c;
                if (i12 == -1) {
                    viewFindViewById.setOnClickListener(this);
                    return;
                }
                int i14 = this.f1471c;
                boolean z10 = false;
                boolean z11 = ((i14 & 1) != 0 && i10 == i12) | ((i14 & 1) != 0 && i10 == i12) | ((i14 & COUIToolTips.ALIGN_TOP) != 0 && i10 == i12) | ((i14 & 16) != 0 && i10 == i13);
                if ((i14 & ConfigPackage.FRAME_SIZE_5) != 0 && i10 == i13) {
                    z10 = true;
                }
                if (z11 || z10) {
                    viewFindViewById.setOnClickListener(this);
                }
            }

            boolean b(b bVar, MotionLayout motionLayout) {
                b bVar2 = this.f1469a;
                if (bVar2 == bVar) {
                    return true;
                }
                int i10 = bVar2.f1453c;
                int i11 = this.f1469a.f1454d;
                if (i11 == -1) {
                    return motionLayout.f1168i != i10;
                }
                int i12 = motionLayout.f1168i;
                return i12 == i11 || i12 == i10;
            }

            public void c(MotionLayout motionLayout) {
                int i10 = this.f1470b;
                if (i10 == -1) {
                    return;
                }
                View viewFindViewById = motionLayout.findViewById(i10);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(null);
                    return;
                }
                Log.e("MotionScene", " (*)  could not find id " + this.f1470b);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MotionLayout motionLayout = this.f1469a.f1460j.f1429a;
                if (motionLayout.Z()) {
                    if (this.f1469a.f1454d == -1) {
                        int currentState = motionLayout.getCurrentState();
                        if (currentState == -1) {
                            motionLayout.m0(this.f1469a.f1453c);
                            return;
                        }
                        b bVar = new b(this.f1469a.f1460j, this.f1469a);
                        bVar.f1454d = currentState;
                        bVar.f1453c = this.f1469a.f1453c;
                        motionLayout.setTransition(bVar);
                        motionLayout.j0();
                        return;
                    }
                    b bVar2 = this.f1469a.f1460j.f1431c;
                    int i10 = this.f1471c;
                    boolean z10 = false;
                    boolean z11 = ((i10 & 1) == 0 && (i10 & COUIToolTips.ALIGN_TOP) == 0) ? false : true;
                    boolean z12 = ((i10 & 16) == 0 && (i10 & ConfigPackage.FRAME_SIZE_5) == 0) ? false : true;
                    if (z11 && z12) {
                        b bVar3 = this.f1469a.f1460j.f1431c;
                        b bVar4 = this.f1469a;
                        if (bVar3 != bVar4) {
                            motionLayout.setTransition(bVar4);
                        }
                        if (motionLayout.getCurrentState() != motionLayout.getEndState() && motionLayout.getProgress() <= 0.5f) {
                            z12 = false;
                            z10 = z11;
                        }
                    } else {
                        z10 = z11;
                    }
                    if (b(bVar2, motionLayout)) {
                        if (z10 && (this.f1471c & 1) != 0) {
                            motionLayout.setTransition(this.f1469a);
                            motionLayout.j0();
                            return;
                        }
                        if (z12 && (this.f1471c & 16) != 0) {
                            motionLayout.setTransition(this.f1469a);
                            motionLayout.l0();
                        } else if (z10 && (this.f1471c & COUIToolTips.ALIGN_TOP) != 0) {
                            motionLayout.setTransition(this.f1469a);
                            motionLayout.setProgress(1.0f);
                        } else {
                            if (!z12 || (this.f1471c & ConfigPackage.FRAME_SIZE_5) == 0) {
                                return;
                            }
                            motionLayout.setTransition(this.f1469a);
                            motionLayout.setProgress(0.0f);
                        }
                    }
                }
            }
        }

        b(p pVar, b bVar) {
            this.f1451a = -1;
            this.f1452b = false;
            this.f1453c = -1;
            this.f1454d = -1;
            this.f1455e = 0;
            this.f1456f = null;
            this.f1457g = -1;
            this.f1458h = 400;
            this.f1459i = 0.0f;
            this.f1461k = new ArrayList();
            this.f1462l = null;
            this.f1463m = new ArrayList();
            this.f1464n = 0;
            this.f1465o = false;
            this.f1466p = -1;
            this.f1467q = 0;
            this.f1468r = 0;
            this.f1460j = pVar;
            this.f1458h = pVar.f1439k;
            if (bVar != null) {
                this.f1466p = bVar.f1466p;
                this.f1455e = bVar.f1455e;
                this.f1456f = bVar.f1456f;
                this.f1457g = bVar.f1457g;
                this.f1458h = bVar.f1458h;
                this.f1461k = bVar.f1461k;
                this.f1459i = bVar.f1459i;
                this.f1467q = bVar.f1467q;
            }
        }

        private void v(p pVar, Context context, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                if (index == R$styleable.Transition_constraintSetEnd) {
                    this.f1453c = typedArray.getResourceId(index, -1);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1453c);
                    if ("layout".equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
                        cVar.F(context, this.f1453c);
                        pVar.f1436h.append(this.f1453c, cVar);
                    } else if ("xml".equals(resourceTypeName)) {
                        this.f1453c = pVar.M(context, this.f1453c);
                    }
                } else if (index == R$styleable.Transition_constraintSetStart) {
                    this.f1454d = typedArray.getResourceId(index, this.f1454d);
                    String resourceTypeName2 = context.getResources().getResourceTypeName(this.f1454d);
                    if ("layout".equals(resourceTypeName2)) {
                        androidx.constraintlayout.widget.c cVar2 = new androidx.constraintlayout.widget.c();
                        cVar2.F(context, this.f1454d);
                        pVar.f1436h.append(this.f1454d, cVar2);
                    } else if ("xml".equals(resourceTypeName2)) {
                        this.f1454d = pVar.M(context, this.f1454d);
                    }
                } else if (index == R$styleable.Transition_motionInterpolator) {
                    int i11 = typedArray.peekValue(index).type;
                    if (i11 == 1) {
                        int resourceId = typedArray.getResourceId(index, -1);
                        this.f1457g = resourceId;
                        if (resourceId != -1) {
                            this.f1455e = -2;
                        }
                    } else if (i11 == 3) {
                        String string = typedArray.getString(index);
                        this.f1456f = string;
                        if (string != null) {
                            if (string.indexOf("/") > 0) {
                                this.f1457g = typedArray.getResourceId(index, -1);
                                this.f1455e = -2;
                            } else {
                                this.f1455e = -1;
                            }
                        }
                    } else {
                        this.f1455e = typedArray.getInteger(index, this.f1455e);
                    }
                } else if (index == R$styleable.Transition_duration) {
                    int i12 = typedArray.getInt(index, this.f1458h);
                    this.f1458h = i12;
                    if (i12 < 8) {
                        this.f1458h = 8;
                    }
                } else if (index == R$styleable.Transition_staggered) {
                    this.f1459i = typedArray.getFloat(index, this.f1459i);
                } else if (index == R$styleable.Transition_autoTransition) {
                    this.f1464n = typedArray.getInteger(index, this.f1464n);
                } else if (index == R$styleable.Transition_android_id) {
                    this.f1451a = typedArray.getResourceId(index, this.f1451a);
                } else if (index == R$styleable.Transition_transitionDisable) {
                    this.f1465o = typedArray.getBoolean(index, this.f1465o);
                } else if (index == R$styleable.Transition_pathMotionArc) {
                    this.f1466p = typedArray.getInteger(index, -1);
                } else if (index == R$styleable.Transition_layoutDuringTransition) {
                    this.f1467q = typedArray.getInteger(index, 0);
                } else if (index == R$styleable.Transition_transitionFlags) {
                    this.f1468r = typedArray.getInteger(index, 0);
                }
            }
            if (this.f1454d == -1) {
                this.f1452b = true;
            }
        }

        private void w(p pVar, Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Transition);
            v(pVar, context, typedArrayObtainStyledAttributes);
            typedArrayObtainStyledAttributes.recycle();
        }

        public int A() {
            return this.f1454d;
        }

        public q B() {
            return this.f1462l;
        }

        public boolean C() {
            return !this.f1465o;
        }

        public boolean D(int i10) {
            return (this.f1468r & i10) != 0;
        }

        public void E(int i10) {
            this.f1458h = Math.max(i10, 8);
        }

        public void F(int i10, String str, int i11) {
            this.f1455e = i10;
            this.f1456f = str;
            this.f1457g = i11;
        }

        public void G(int i10) {
            q qVarB = B();
            if (qVarB != null) {
                qVarB.y(i10);
            }
        }

        public void H(int i10) {
            this.f1466p = i10;
        }

        public void t(g gVar) {
            this.f1461k.add(gVar);
        }

        public void u(Context context, XmlPullParser xmlPullParser) {
            this.f1463m.add(new a(context, this, xmlPullParser));
        }

        public int x() {
            return this.f1464n;
        }

        public int y() {
            return this.f1453c;
        }

        public int z() {
            return this.f1467q;
        }

        public b(int i10, p pVar, int i11, int i12) {
            this.f1451a = -1;
            this.f1452b = false;
            this.f1453c = -1;
            this.f1454d = -1;
            this.f1455e = 0;
            this.f1456f = null;
            this.f1457g = -1;
            this.f1458h = 400;
            this.f1459i = 0.0f;
            this.f1461k = new ArrayList();
            this.f1462l = null;
            this.f1463m = new ArrayList();
            this.f1464n = 0;
            this.f1465o = false;
            this.f1466p = -1;
            this.f1467q = 0;
            this.f1468r = 0;
            this.f1451a = i10;
            this.f1460j = pVar;
            this.f1454d = i11;
            this.f1453c = i12;
            this.f1458h = pVar.f1439k;
            this.f1467q = pVar.f1440l;
        }

        b(p pVar, Context context, XmlPullParser xmlPullParser) {
            this.f1451a = -1;
            this.f1452b = false;
            this.f1453c = -1;
            this.f1454d = -1;
            this.f1455e = 0;
            this.f1456f = null;
            this.f1457g = -1;
            this.f1458h = 400;
            this.f1459i = 0.0f;
            this.f1461k = new ArrayList();
            this.f1462l = null;
            this.f1463m = new ArrayList();
            this.f1464n = 0;
            this.f1465o = false;
            this.f1466p = -1;
            this.f1467q = 0;
            this.f1468r = 0;
            this.f1458h = pVar.f1439k;
            this.f1467q = pVar.f1440l;
            this.f1460j = pVar;
            w(pVar, context, Xml.asAttributeSet(xmlPullParser));
        }
    }
}
