package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R$styleable;
import com.coui.appcompat.version.COUIVersionUtil;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import q.f;

/* JADX INFO: loaded from: classes.dex */
public class j extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f1319g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1320h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f1321i = Float.NaN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f1322j = Float.NaN;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f1323k = Float.NaN;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f1324l = Float.NaN;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f1325m = Float.NaN;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f1326n = Float.NaN;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f1327o = Float.NaN;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f1328p = Float.NaN;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f1329q = Float.NaN;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f1330r = Float.NaN;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f1331s = Float.NaN;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f1332t = Float.NaN;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f1333u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f1334v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f1335w = Float.NaN;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f1336x = 0.0f;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f1337a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1337a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyTimeCycle_android_alpha, 1);
            f1337a.append(R$styleable.KeyTimeCycle_android_elevation, 2);
            f1337a.append(R$styleable.KeyTimeCycle_android_rotation, 4);
            f1337a.append(R$styleable.KeyTimeCycle_android_rotationX, 5);
            f1337a.append(R$styleable.KeyTimeCycle_android_rotationY, 6);
            f1337a.append(R$styleable.KeyTimeCycle_android_scaleX, 7);
            f1337a.append(R$styleable.KeyTimeCycle_transitionPathRotate, 8);
            f1337a.append(R$styleable.KeyTimeCycle_transitionEasing, 9);
            f1337a.append(R$styleable.KeyTimeCycle_motionTarget, 10);
            f1337a.append(R$styleable.KeyTimeCycle_framePosition, 12);
            f1337a.append(R$styleable.KeyTimeCycle_curveFit, 13);
            f1337a.append(R$styleable.KeyTimeCycle_android_scaleY, 14);
            f1337a.append(R$styleable.KeyTimeCycle_android_translationX, 15);
            f1337a.append(R$styleable.KeyTimeCycle_android_translationY, 16);
            f1337a.append(R$styleable.KeyTimeCycle_android_translationZ, 17);
            f1337a.append(R$styleable.KeyTimeCycle_motionProgress, 18);
            f1337a.append(R$styleable.KeyTimeCycle_wavePeriod, 20);
            f1337a.append(R$styleable.KeyTimeCycle_waveOffset, 21);
            f1337a.append(R$styleable.KeyTimeCycle_waveShape, 19);
        }

        public static void a(j jVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f1337a.get(index)) {
                    case 1:
                        jVar.f1321i = typedArray.getFloat(index, jVar.f1321i);
                        break;
                    case 2:
                        jVar.f1322j = typedArray.getDimension(index, jVar.f1322j);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1337a.get(index));
                        break;
                    case 4:
                        jVar.f1323k = typedArray.getFloat(index, jVar.f1323k);
                        break;
                    case 5:
                        jVar.f1324l = typedArray.getFloat(index, jVar.f1324l);
                        break;
                    case 6:
                        jVar.f1325m = typedArray.getFloat(index, jVar.f1325m);
                        break;
                    case 7:
                        jVar.f1327o = typedArray.getFloat(index, jVar.f1327o);
                        break;
                    case 8:
                        jVar.f1326n = typedArray.getFloat(index, jVar.f1326n);
                        break;
                    case 9:
                        jVar.f1319g = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.H0) {
                            int resourceId = typedArray.getResourceId(index, jVar.f1260b);
                            jVar.f1260b = resourceId;
                            if (resourceId == -1) {
                                jVar.f1261c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            jVar.f1261c = typedArray.getString(index);
                        } else {
                            jVar.f1260b = typedArray.getResourceId(index, jVar.f1260b);
                        }
                        break;
                    case 12:
                        jVar.f1259a = typedArray.getInt(index, jVar.f1259a);
                        break;
                    case 13:
                        jVar.f1320h = typedArray.getInteger(index, jVar.f1320h);
                        break;
                    case 14:
                        jVar.f1328p = typedArray.getFloat(index, jVar.f1328p);
                        break;
                    case 15:
                        jVar.f1329q = typedArray.getDimension(index, jVar.f1329q);
                        break;
                    case 16:
                        jVar.f1330r = typedArray.getDimension(index, jVar.f1330r);
                        break;
                    case 17:
                        jVar.f1331s = typedArray.getDimension(index, jVar.f1331s);
                        break;
                    case 18:
                        jVar.f1332t = typedArray.getFloat(index, jVar.f1332t);
                        break;
                    case 19:
                        if (typedArray.peekValue(index).type == 3) {
                            jVar.f1334v = typedArray.getString(index);
                            jVar.f1333u = 7;
                        } else {
                            jVar.f1333u = typedArray.getInt(index, jVar.f1333u);
                        }
                        break;
                    case 20:
                        jVar.f1335w = typedArray.getFloat(index, jVar.f1335w);
                        break;
                    case COUIVersionUtil.COUI_8_2 /* 21 */:
                        if (typedArray.peekValue(index).type == 5) {
                            jVar.f1336x = typedArray.getDimension(index, jVar.f1336x);
                        } else {
                            jVar.f1336x = typedArray.getFloat(index, jVar.f1336x);
                        }
                        break;
                }
            }
        }
    }

    public j() {
        this.f1262d = 3;
        this.f1263e = new HashMap();
    }

    public void U(HashMap map) {
        for (String str : map.keySet()) {
            q.f fVar = (q.f) map.get(str);
            if (fVar != null) {
                if (!str.startsWith("CUSTOM")) {
                    switch (str) {
                        case "rotationX":
                            if (Float.isNaN(this.f1324l)) {
                                break;
                            } else {
                                fVar.b(this.f1259a, this.f1324l, this.f1335w, this.f1333u, this.f1336x);
                                break;
                            }
                            break;
                        case "rotationY":
                            if (Float.isNaN(this.f1325m)) {
                                break;
                            } else {
                                fVar.b(this.f1259a, this.f1325m, this.f1335w, this.f1333u, this.f1336x);
                                break;
                            }
                            break;
                        case "translationX":
                            if (Float.isNaN(this.f1329q)) {
                                break;
                            } else {
                                fVar.b(this.f1259a, this.f1329q, this.f1335w, this.f1333u, this.f1336x);
                                break;
                            }
                            break;
                        case "translationY":
                            if (Float.isNaN(this.f1330r)) {
                                break;
                            } else {
                                fVar.b(this.f1259a, this.f1330r, this.f1335w, this.f1333u, this.f1336x);
                                break;
                            }
                            break;
                        case "translationZ":
                            if (Float.isNaN(this.f1331s)) {
                                break;
                            } else {
                                fVar.b(this.f1259a, this.f1331s, this.f1335w, this.f1333u, this.f1336x);
                                break;
                            }
                            break;
                        case "progress":
                            if (Float.isNaN(this.f1332t)) {
                                break;
                            } else {
                                fVar.b(this.f1259a, this.f1332t, this.f1335w, this.f1333u, this.f1336x);
                                break;
                            }
                            break;
                        case "scaleX":
                            if (Float.isNaN(this.f1327o)) {
                                break;
                            } else {
                                fVar.b(this.f1259a, this.f1327o, this.f1335w, this.f1333u, this.f1336x);
                                break;
                            }
                            break;
                        case "scaleY":
                            if (Float.isNaN(this.f1328p)) {
                                break;
                            } else {
                                fVar.b(this.f1259a, this.f1328p, this.f1335w, this.f1333u, this.f1336x);
                                break;
                            }
                            break;
                        case "rotation":
                            if (Float.isNaN(this.f1323k)) {
                                break;
                            } else {
                                fVar.b(this.f1259a, this.f1323k, this.f1335w, this.f1333u, this.f1336x);
                                break;
                            }
                            break;
                        case "elevation":
                            if (Float.isNaN(this.f1322j)) {
                                break;
                            } else {
                                fVar.b(this.f1259a, this.f1322j, this.f1335w, this.f1333u, this.f1336x);
                                break;
                            }
                            break;
                        case "transitionPathRotate":
                            if (Float.isNaN(this.f1326n)) {
                                break;
                            } else {
                                fVar.b(this.f1259a, this.f1326n, this.f1335w, this.f1333u, this.f1336x);
                                break;
                            }
                            break;
                        case "alpha":
                            if (Float.isNaN(this.f1321i)) {
                                break;
                            } else {
                                fVar.b(this.f1259a, this.f1321i, this.f1335w, this.f1333u, this.f1336x);
                                break;
                            }
                            break;
                        default:
                            Log.e("KeyTimeCycles", "UNKNOWN addValues \"" + str + "\"");
                            break;
                    }
                } else {
                    androidx.constraintlayout.widget.a aVar = (androidx.constraintlayout.widget.a) this.f1263e.get(str.substring(7));
                    if (aVar != null) {
                        ((f.b) fVar).j(this.f1259a, aVar, this.f1335w, this.f1333u, this.f1336x);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap map) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        return new j().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        j jVar = (j) dVar;
        this.f1319g = jVar.f1319g;
        this.f1320h = jVar.f1320h;
        this.f1333u = jVar.f1333u;
        this.f1335w = jVar.f1335w;
        this.f1336x = jVar.f1336x;
        this.f1332t = jVar.f1332t;
        this.f1321i = jVar.f1321i;
        this.f1322j = jVar.f1322j;
        this.f1323k = jVar.f1323k;
        this.f1326n = jVar.f1326n;
        this.f1324l = jVar.f1324l;
        this.f1325m = jVar.f1325m;
        this.f1327o = jVar.f1327o;
        this.f1328p = jVar.f1328p;
        this.f1329q = jVar.f1329q;
        this.f1330r = jVar.f1330r;
        this.f1331s = jVar.f1331s;
        this.f1334v = jVar.f1334v;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void d(HashSet hashSet) {
        if (!Float.isNaN(this.f1321i)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f1322j)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f1323k)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f1324l)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f1325m)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f1329q)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f1330r)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f1331s)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f1326n)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f1327o)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f1328p)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f1332t)) {
            hashSet.add("progress");
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
        a.a(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void h(HashMap map) {
        if (this.f1320h == -1) {
            return;
        }
        if (!Float.isNaN(this.f1321i)) {
            map.put("alpha", Integer.valueOf(this.f1320h));
        }
        if (!Float.isNaN(this.f1322j)) {
            map.put("elevation", Integer.valueOf(this.f1320h));
        }
        if (!Float.isNaN(this.f1323k)) {
            map.put("rotation", Integer.valueOf(this.f1320h));
        }
        if (!Float.isNaN(this.f1324l)) {
            map.put("rotationX", Integer.valueOf(this.f1320h));
        }
        if (!Float.isNaN(this.f1325m)) {
            map.put("rotationY", Integer.valueOf(this.f1320h));
        }
        if (!Float.isNaN(this.f1329q)) {
            map.put("translationX", Integer.valueOf(this.f1320h));
        }
        if (!Float.isNaN(this.f1330r)) {
            map.put("translationY", Integer.valueOf(this.f1320h));
        }
        if (!Float.isNaN(this.f1331s)) {
            map.put("translationZ", Integer.valueOf(this.f1320h));
        }
        if (!Float.isNaN(this.f1326n)) {
            map.put("transitionPathRotate", Integer.valueOf(this.f1320h));
        }
        if (!Float.isNaN(this.f1327o)) {
            map.put("scaleX", Integer.valueOf(this.f1320h));
        }
        if (!Float.isNaN(this.f1327o)) {
            map.put("scaleY", Integer.valueOf(this.f1320h));
        }
        if (!Float.isNaN(this.f1332t)) {
            map.put("progress", Integer.valueOf(this.f1320h));
        }
        if (this.f1263e.size() > 0) {
            Iterator it = this.f1263e.keySet().iterator();
            while (it.hasNext()) {
                map.put("CUSTOM," + ((String) it.next()), Integer.valueOf(this.f1320h));
            }
        }
    }
}
