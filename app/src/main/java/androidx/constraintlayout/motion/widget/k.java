package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.R$styleable;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class k extends d {
    private boolean A;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f1338g = 0.1f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f1339h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f1340i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f1341j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    RectF f1342k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    RectF f1343l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    HashMap f1344m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f1345n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f1346o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f1347p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f1348q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f1349r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f1350s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f1351t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private View f1352u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f1353v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f1354w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f1355x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f1356y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f1357z;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f1358a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1358a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyTrigger_framePosition, 8);
            f1358a.append(R$styleable.KeyTrigger_onCross, 4);
            f1358a.append(R$styleable.KeyTrigger_onNegativeCross, 1);
            f1358a.append(R$styleable.KeyTrigger_onPositiveCross, 2);
            f1358a.append(R$styleable.KeyTrigger_motionTarget, 7);
            f1358a.append(R$styleable.KeyTrigger_triggerId, 6);
            f1358a.append(R$styleable.KeyTrigger_triggerSlack, 5);
            f1358a.append(R$styleable.KeyTrigger_motion_triggerOnCollision, 9);
            f1358a.append(R$styleable.KeyTrigger_motion_postLayoutCollision, 10);
            f1358a.append(R$styleable.KeyTrigger_triggerReceiver, 11);
            f1358a.append(R$styleable.KeyTrigger_viewTransitionOnCross, 12);
            f1358a.append(R$styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            f1358a.append(R$styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        public static void a(k kVar, TypedArray typedArray, Context context) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f1358a.get(index)) {
                    case 1:
                        kVar.f1348q = typedArray.getString(index);
                        break;
                    case 2:
                        kVar.f1349r = typedArray.getString(index);
                        break;
                    case 3:
                    default:
                        Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1358a.get(index));
                        break;
                    case 4:
                        kVar.f1346o = typedArray.getString(index);
                        break;
                    case 5:
                        kVar.f1338g = typedArray.getFloat(index, kVar.f1338g);
                        break;
                    case 6:
                        kVar.f1350s = typedArray.getResourceId(index, kVar.f1350s);
                        break;
                    case 7:
                        if (MotionLayout.H0) {
                            int resourceId = typedArray.getResourceId(index, kVar.f1260b);
                            kVar.f1260b = resourceId;
                            if (resourceId == -1) {
                                kVar.f1261c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            kVar.f1261c = typedArray.getString(index);
                        } else {
                            kVar.f1260b = typedArray.getResourceId(index, kVar.f1260b);
                        }
                        break;
                    case 8:
                        int integer = typedArray.getInteger(index, kVar.f1259a);
                        kVar.f1259a = integer;
                        kVar.f1356y = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        kVar.f1351t = typedArray.getResourceId(index, kVar.f1351t);
                        break;
                    case 10:
                        kVar.A = typedArray.getBoolean(index, kVar.A);
                        break;
                    case 11:
                        kVar.f1347p = typedArray.getResourceId(index, kVar.f1347p);
                        break;
                    case 12:
                        kVar.f1341j = typedArray.getResourceId(index, kVar.f1341j);
                        break;
                    case 13:
                        kVar.f1339h = typedArray.getResourceId(index, kVar.f1339h);
                        break;
                    case 14:
                        kVar.f1340i = typedArray.getResourceId(index, kVar.f1340i);
                        break;
                }
            }
        }
    }

    public k() {
        int i10 = d.f1258f;
        this.f1339h = i10;
        this.f1340i = i10;
        this.f1341j = i10;
        this.f1342k = new RectF();
        this.f1343l = new RectF();
        this.f1344m = new HashMap();
        this.f1345n = -1;
        this.f1346o = null;
        int i11 = d.f1258f;
        this.f1347p = i11;
        this.f1348q = null;
        this.f1349r = null;
        this.f1350s = i11;
        this.f1351t = i11;
        this.f1352u = null;
        this.f1353v = true;
        this.f1354w = true;
        this.f1355x = true;
        this.f1356y = Float.NaN;
        this.A = false;
        this.f1262d = 5;
        this.f1263e = new HashMap();
    }

    private void A(String str, View view) {
        boolean z10 = str.length() == 1;
        if (!z10) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.f1263e.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z10 || lowerCase.matches(str)) {
                androidx.constraintlayout.widget.a aVar = (androidx.constraintlayout.widget.a) this.f1263e.get(str2);
                if (aVar != null) {
                    aVar.a(view);
                }
            }
        }
    }

    private void B(RectF rectF, View view, boolean z10) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z10) {
            view.getMatrix().mapRect(rectF);
        }
    }

    private void z(String str, View view) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            A(str, view);
            return;
        }
        if (this.f1344m.containsKey(str)) {
            method = (Method) this.f1344m.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = view.getClass().getMethod(str, null);
                this.f1344m.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.f1344m.put(str, null);
                Log.e("KeyTrigger", "Could not find method \"" + str + "\"on class " + view.getClass().getSimpleName() + " " + androidx.constraintlayout.motion.widget.a.d(view));
                return;
            }
        }
        try {
            method.invoke(view, null);
        } catch (Exception unused2) {
            Log.e("KeyTrigger", "Exception in call \"" + this.f1346o + "\"on class " + view.getClass().getSimpleName() + " " + androidx.constraintlayout.motion.widget.a.d(view));
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap map) {
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public d clone() {
        return new k().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        k kVar = (k) dVar;
        this.f1345n = kVar.f1345n;
        this.f1346o = kVar.f1346o;
        this.f1347p = kVar.f1347p;
        this.f1348q = kVar.f1348q;
        this.f1349r = kVar.f1349r;
        this.f1350s = kVar.f1350s;
        this.f1351t = kVar.f1351t;
        this.f1352u = kVar.f1352u;
        this.f1338g = kVar.f1338g;
        this.f1353v = kVar.f1353v;
        this.f1354w = kVar.f1354w;
        this.f1355x = kVar.f1355x;
        this.f1356y = kVar.f1356y;
        this.f1357z = kVar.f1357z;
        this.A = kVar.A;
        this.f1342k = kVar.f1342k;
        this.f1343l = kVar.f1343l;
        this.f1344m = kVar.f1344m;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void d(HashSet hashSet) {
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void e(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyTrigger), context);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void y(float r10, android.view.View r11) {
        /*
            Method dump skipped, instruction units count: 353
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.k.y(float, android.view.View):void");
    }
}
