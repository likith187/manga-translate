package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.a;
import com.coui.appcompat.version.COUIVersionUtil;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class f extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f1282g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1283h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f1284i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f1285j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f1286k = Float.NaN;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f1287l = 0.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f1288m = 0.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f1289n = Float.NaN;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f1290o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f1291p = Float.NaN;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f1292q = Float.NaN;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f1293r = Float.NaN;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f1294s = Float.NaN;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f1295t = Float.NaN;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f1296u = Float.NaN;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f1297v = Float.NaN;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f1298w = Float.NaN;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f1299x = Float.NaN;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f1300y = Float.NaN;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f1301z = Float.NaN;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f1302a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1302a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyCycle_motionTarget, 1);
            f1302a.append(R$styleable.KeyCycle_framePosition, 2);
            f1302a.append(R$styleable.KeyCycle_transitionEasing, 3);
            f1302a.append(R$styleable.KeyCycle_curveFit, 4);
            f1302a.append(R$styleable.KeyCycle_waveShape, 5);
            f1302a.append(R$styleable.KeyCycle_wavePeriod, 6);
            f1302a.append(R$styleable.KeyCycle_waveOffset, 7);
            f1302a.append(R$styleable.KeyCycle_waveVariesBy, 8);
            f1302a.append(R$styleable.KeyCycle_android_alpha, 9);
            f1302a.append(R$styleable.KeyCycle_android_elevation, 10);
            f1302a.append(R$styleable.KeyCycle_android_rotation, 11);
            f1302a.append(R$styleable.KeyCycle_android_rotationX, 12);
            f1302a.append(R$styleable.KeyCycle_android_rotationY, 13);
            f1302a.append(R$styleable.KeyCycle_transitionPathRotate, 14);
            f1302a.append(R$styleable.KeyCycle_android_scaleX, 15);
            f1302a.append(R$styleable.KeyCycle_android_scaleY, 16);
            f1302a.append(R$styleable.KeyCycle_android_translationX, 17);
            f1302a.append(R$styleable.KeyCycle_android_translationY, 18);
            f1302a.append(R$styleable.KeyCycle_android_translationZ, 19);
            f1302a.append(R$styleable.KeyCycle_motionProgress, 20);
            f1302a.append(R$styleable.KeyCycle_wavePhase, 21);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(f fVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f1302a.get(index)) {
                    case 1:
                        if (MotionLayout.H0) {
                            int resourceId = typedArray.getResourceId(index, fVar.f1260b);
                            fVar.f1260b = resourceId;
                            if (resourceId == -1) {
                                fVar.f1261c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            fVar.f1261c = typedArray.getString(index);
                        } else {
                            fVar.f1260b = typedArray.getResourceId(index, fVar.f1260b);
                        }
                        break;
                    case 2:
                        fVar.f1259a = typedArray.getInt(index, fVar.f1259a);
                        break;
                    case 3:
                        fVar.f1282g = typedArray.getString(index);
                        break;
                    case 4:
                        fVar.f1283h = typedArray.getInteger(index, fVar.f1283h);
                        break;
                    case 5:
                        if (typedArray.peekValue(index).type == 3) {
                            fVar.f1285j = typedArray.getString(index);
                            fVar.f1284i = 7;
                        } else {
                            fVar.f1284i = typedArray.getInt(index, fVar.f1284i);
                        }
                        break;
                    case 6:
                        fVar.f1286k = typedArray.getFloat(index, fVar.f1286k);
                        break;
                    case 7:
                        if (typedArray.peekValue(index).type == 5) {
                            fVar.f1287l = typedArray.getDimension(index, fVar.f1287l);
                        } else {
                            fVar.f1287l = typedArray.getFloat(index, fVar.f1287l);
                        }
                        break;
                    case 8:
                        fVar.f1290o = typedArray.getInt(index, fVar.f1290o);
                        break;
                    case 9:
                        fVar.f1291p = typedArray.getFloat(index, fVar.f1291p);
                        break;
                    case 10:
                        fVar.f1292q = typedArray.getDimension(index, fVar.f1292q);
                        break;
                    case 11:
                        fVar.f1293r = typedArray.getFloat(index, fVar.f1293r);
                        break;
                    case 12:
                        fVar.f1295t = typedArray.getFloat(index, fVar.f1295t);
                        break;
                    case 13:
                        fVar.f1296u = typedArray.getFloat(index, fVar.f1296u);
                        break;
                    case 14:
                        fVar.f1294s = typedArray.getFloat(index, fVar.f1294s);
                        break;
                    case 15:
                        fVar.f1297v = typedArray.getFloat(index, fVar.f1297v);
                        break;
                    case 16:
                        fVar.f1298w = typedArray.getFloat(index, fVar.f1298w);
                        break;
                    case 17:
                        fVar.f1299x = typedArray.getDimension(index, fVar.f1299x);
                        break;
                    case 18:
                        fVar.f1300y = typedArray.getDimension(index, fVar.f1300y);
                        break;
                    case 19:
                        fVar.f1301z = typedArray.getDimension(index, fVar.f1301z);
                        break;
                    case 20:
                        fVar.f1289n = typedArray.getFloat(index, fVar.f1289n);
                        break;
                    case COUIVersionUtil.COUI_8_2 /* 21 */:
                        fVar.f1288m = typedArray.getFloat(index, fVar.f1288m) / 360.0f;
                        break;
                    default:
                        Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1302a.get(index));
                        break;
                }
            }
        }
    }

    public f() {
        this.f1262d = 4;
        this.f1263e = new HashMap();
    }

    public void Y(HashMap map) {
        q.c cVar;
        q.c cVar2;
        for (String str : map.keySet()) {
            if (str.startsWith("CUSTOM")) {
                androidx.constraintlayout.widget.a aVar = (androidx.constraintlayout.widget.a) this.f1263e.get(str.substring(7));
                if (aVar != null && aVar.d() == a.EnumC0009a.FLOAT_TYPE && (cVar = (q.c) map.get(str)) != null) {
                    cVar.e(this.f1259a, this.f1284i, this.f1285j, this.f1290o, this.f1286k, this.f1287l, this.f1288m, aVar.e(), aVar);
                }
            } else {
                float fZ = Z(str);
                if (!Float.isNaN(fZ) && (cVar2 = (q.c) map.get(str)) != null) {
                    cVar2.d(this.f1259a, this.f1284i, this.f1285j, this.f1290o, this.f1286k, this.f1287l, this.f1288m, fZ);
                }
            }
        }
    }

    public float Z(String str) {
        str.hashCode();
        switch (str) {
            case "rotationX":
                return this.f1295t;
            case "rotationY":
                return this.f1296u;
            case "translationX":
                return this.f1299x;
            case "translationY":
                return this.f1300y;
            case "translationZ":
                return this.f1301z;
            case "progress":
                return this.f1289n;
            case "scaleX":
                return this.f1297v;
            case "scaleY":
                return this.f1298w;
            case "rotation":
                return this.f1293r;
            case "elevation":
                return this.f1292q;
            case "transitionPathRotate":
                return this.f1294s;
            case "alpha":
                return this.f1291p;
            case "waveOffset":
                return this.f1287l;
            case "wavePhase":
                return this.f1288m;
            default:
                if (str.startsWith("CUSTOM")) {
                    return Float.NaN;
                }
                Log.v("WARNING! KeyCycle", "  UNKNOWN  " + str);
                return Float.NaN;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap map) {
        androidx.constraintlayout.motion.widget.a.g("KeyCycle", "add " + map.size() + " values", 2);
        for (String str : map.keySet()) {
            m.j jVar = (m.j) map.get(str);
            if (jVar != null) {
                str.hashCode();
                switch (str) {
                    case "rotationX":
                        jVar.c(this.f1259a, this.f1295t);
                        break;
                    case "rotationY":
                        jVar.c(this.f1259a, this.f1296u);
                        break;
                    case "translationX":
                        jVar.c(this.f1259a, this.f1299x);
                        break;
                    case "translationY":
                        jVar.c(this.f1259a, this.f1300y);
                        break;
                    case "translationZ":
                        jVar.c(this.f1259a, this.f1301z);
                        break;
                    case "progress":
                        jVar.c(this.f1259a, this.f1289n);
                        break;
                    case "scaleX":
                        jVar.c(this.f1259a, this.f1297v);
                        break;
                    case "scaleY":
                        jVar.c(this.f1259a, this.f1298w);
                        break;
                    case "rotation":
                        jVar.c(this.f1259a, this.f1293r);
                        break;
                    case "elevation":
                        jVar.c(this.f1259a, this.f1292q);
                        break;
                    case "transitionPathRotate":
                        jVar.c(this.f1259a, this.f1294s);
                        break;
                    case "alpha":
                        jVar.c(this.f1259a, this.f1291p);
                        break;
                    case "waveOffset":
                        jVar.c(this.f1259a, this.f1287l);
                        break;
                    case "wavePhase":
                        jVar.c(this.f1259a, this.f1288m);
                        break;
                    default:
                        if (str.startsWith("CUSTOM")) {
                            break;
                        } else {
                            Log.v("WARNING KeyCycle", "  UNKNOWN  " + str);
                            break;
                        }
                        break;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        return new f().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        f fVar = (f) dVar;
        this.f1282g = fVar.f1282g;
        this.f1283h = fVar.f1283h;
        this.f1284i = fVar.f1284i;
        this.f1285j = fVar.f1285j;
        this.f1286k = fVar.f1286k;
        this.f1287l = fVar.f1287l;
        this.f1288m = fVar.f1288m;
        this.f1289n = fVar.f1289n;
        this.f1290o = fVar.f1290o;
        this.f1291p = fVar.f1291p;
        this.f1292q = fVar.f1292q;
        this.f1293r = fVar.f1293r;
        this.f1294s = fVar.f1294s;
        this.f1295t = fVar.f1295t;
        this.f1296u = fVar.f1296u;
        this.f1297v = fVar.f1297v;
        this.f1298w = fVar.f1298w;
        this.f1299x = fVar.f1299x;
        this.f1300y = fVar.f1300y;
        this.f1301z = fVar.f1301z;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void d(HashSet hashSet) {
        if (!Float.isNaN(this.f1291p)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f1292q)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f1293r)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f1295t)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f1296u)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f1297v)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f1298w)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f1294s)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f1299x)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f1300y)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f1301z)) {
            hashSet.add("translationZ");
        }
        if (this.f1263e.size() > 0) {
            Iterator it = this.f1263e.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + ((String) it.next()));
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void e(Context context, AttributeSet attributeSet) {
        a.b(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyCycle));
    }
}
