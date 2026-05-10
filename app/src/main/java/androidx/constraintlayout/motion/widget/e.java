package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import q.d;

/* JADX INFO: loaded from: classes.dex */
public class e extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f1264g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1265h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f1266i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f1267j = Float.NaN;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f1268k = Float.NaN;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f1269l = Float.NaN;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f1270m = Float.NaN;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f1271n = Float.NaN;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f1272o = Float.NaN;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f1273p = Float.NaN;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f1274q = Float.NaN;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f1275r = Float.NaN;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f1276s = Float.NaN;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f1277t = Float.NaN;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f1278u = Float.NaN;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f1279v = Float.NaN;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f1280w = Float.NaN;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f1281a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1281a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyAttribute_android_alpha, 1);
            f1281a.append(R$styleable.KeyAttribute_android_elevation, 2);
            f1281a.append(R$styleable.KeyAttribute_android_rotation, 4);
            f1281a.append(R$styleable.KeyAttribute_android_rotationX, 5);
            f1281a.append(R$styleable.KeyAttribute_android_rotationY, 6);
            f1281a.append(R$styleable.KeyAttribute_android_transformPivotX, 19);
            f1281a.append(R$styleable.KeyAttribute_android_transformPivotY, 20);
            f1281a.append(R$styleable.KeyAttribute_android_scaleX, 7);
            f1281a.append(R$styleable.KeyAttribute_transitionPathRotate, 8);
            f1281a.append(R$styleable.KeyAttribute_transitionEasing, 9);
            f1281a.append(R$styleable.KeyAttribute_motionTarget, 10);
            f1281a.append(R$styleable.KeyAttribute_framePosition, 12);
            f1281a.append(R$styleable.KeyAttribute_curveFit, 13);
            f1281a.append(R$styleable.KeyAttribute_android_scaleY, 14);
            f1281a.append(R$styleable.KeyAttribute_android_translationX, 15);
            f1281a.append(R$styleable.KeyAttribute_android_translationY, 16);
            f1281a.append(R$styleable.KeyAttribute_android_translationZ, 17);
            f1281a.append(R$styleable.KeyAttribute_motionProgress, 18);
        }

        public static void a(e eVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f1281a.get(index)) {
                    case 1:
                        eVar.f1267j = typedArray.getFloat(index, eVar.f1267j);
                        break;
                    case 2:
                        eVar.f1268k = typedArray.getDimension(index, eVar.f1268k);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyAttribute", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1281a.get(index));
                        break;
                    case 4:
                        eVar.f1269l = typedArray.getFloat(index, eVar.f1269l);
                        break;
                    case 5:
                        eVar.f1270m = typedArray.getFloat(index, eVar.f1270m);
                        break;
                    case 6:
                        eVar.f1271n = typedArray.getFloat(index, eVar.f1271n);
                        break;
                    case 7:
                        eVar.f1275r = typedArray.getFloat(index, eVar.f1275r);
                        break;
                    case 8:
                        eVar.f1274q = typedArray.getFloat(index, eVar.f1274q);
                        break;
                    case 9:
                        eVar.f1264g = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.H0) {
                            int resourceId = typedArray.getResourceId(index, eVar.f1260b);
                            eVar.f1260b = resourceId;
                            if (resourceId == -1) {
                                eVar.f1261c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            eVar.f1261c = typedArray.getString(index);
                        } else {
                            eVar.f1260b = typedArray.getResourceId(index, eVar.f1260b);
                        }
                        break;
                    case 12:
                        eVar.f1259a = typedArray.getInt(index, eVar.f1259a);
                        break;
                    case 13:
                        eVar.f1265h = typedArray.getInteger(index, eVar.f1265h);
                        break;
                    case 14:
                        eVar.f1276s = typedArray.getFloat(index, eVar.f1276s);
                        break;
                    case 15:
                        eVar.f1277t = typedArray.getDimension(index, eVar.f1277t);
                        break;
                    case 16:
                        eVar.f1278u = typedArray.getDimension(index, eVar.f1278u);
                        break;
                    case 17:
                        eVar.f1279v = typedArray.getDimension(index, eVar.f1279v);
                        break;
                    case 18:
                        eVar.f1280w = typedArray.getFloat(index, eVar.f1280w);
                        break;
                    case 19:
                        eVar.f1272o = typedArray.getDimension(index, eVar.f1272o);
                        break;
                    case 20:
                        eVar.f1273p = typedArray.getDimension(index, eVar.f1273p);
                        break;
                }
            }
        }
    }

    public e() {
        this.f1262d = 1;
        this.f1263e = new HashMap();
    }

    public void R(String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "motionProgress":
                this.f1280w = k(obj);
                break;
            case "transitionEasing":
                this.f1264g = obj.toString();
                break;
            case "rotationX":
                this.f1270m = k(obj);
                break;
            case "rotationY":
                this.f1271n = k(obj);
                break;
            case "translationX":
                this.f1277t = k(obj);
                break;
            case "translationY":
                this.f1278u = k(obj);
                break;
            case "translationZ":
                this.f1279v = k(obj);
                break;
            case "scaleX":
                this.f1275r = k(obj);
                break;
            case "scaleY":
                this.f1276s = k(obj);
                break;
            case "transformPivotX":
                this.f1272o = k(obj);
                break;
            case "transformPivotY":
                this.f1273p = k(obj);
                break;
            case "rotation":
                this.f1269l = k(obj);
                break;
            case "elevation":
                this.f1268k = k(obj);
                break;
            case "transitionPathRotate":
                this.f1274q = k(obj);
                break;
            case "alpha":
                this.f1267j = k(obj);
                break;
            case "curveFit":
                this.f1265h = l(obj);
                break;
            case "visibility":
                this.f1266i = j(obj);
                break;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap map) {
        for (String str : map.keySet()) {
            m.j jVar = (m.j) map.get(str);
            if (jVar != null) {
                if (!str.startsWith("CUSTOM")) {
                    switch (str) {
                        case "rotationX":
                            if (Float.isNaN(this.f1270m)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1270m);
                                break;
                            }
                            break;
                        case "rotationY":
                            if (Float.isNaN(this.f1271n)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1271n);
                                break;
                            }
                            break;
                        case "translationX":
                            if (Float.isNaN(this.f1277t)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1277t);
                                break;
                            }
                            break;
                        case "translationY":
                            if (Float.isNaN(this.f1278u)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1278u);
                                break;
                            }
                            break;
                        case "translationZ":
                            if (Float.isNaN(this.f1279v)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1279v);
                                break;
                            }
                            break;
                        case "progress":
                            if (Float.isNaN(this.f1280w)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1280w);
                                break;
                            }
                            break;
                        case "scaleX":
                            if (Float.isNaN(this.f1275r)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1275r);
                                break;
                            }
                            break;
                        case "scaleY":
                            if (Float.isNaN(this.f1276s)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1276s);
                                break;
                            }
                            break;
                        case "transformPivotX":
                            if (Float.isNaN(this.f1270m)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1272o);
                                break;
                            }
                            break;
                        case "transformPivotY":
                            if (Float.isNaN(this.f1271n)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1273p);
                                break;
                            }
                            break;
                        case "rotation":
                            if (Float.isNaN(this.f1269l)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1269l);
                                break;
                            }
                            break;
                        case "elevation":
                            if (Float.isNaN(this.f1268k)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1268k);
                                break;
                            }
                            break;
                        case "transitionPathRotate":
                            if (Float.isNaN(this.f1274q)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1274q);
                                break;
                            }
                            break;
                        case "alpha":
                            if (Float.isNaN(this.f1267j)) {
                                break;
                            } else {
                                jVar.c(this.f1259a, this.f1267j);
                                break;
                            }
                            break;
                    }
                } else {
                    androidx.constraintlayout.widget.a aVar = (androidx.constraintlayout.widget.a) this.f1263e.get(str.substring(7));
                    if (aVar != null) {
                        ((d.b) jVar).i(this.f1259a, aVar);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        return new e().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        e eVar = (e) dVar;
        this.f1265h = eVar.f1265h;
        this.f1266i = eVar.f1266i;
        this.f1267j = eVar.f1267j;
        this.f1268k = eVar.f1268k;
        this.f1269l = eVar.f1269l;
        this.f1270m = eVar.f1270m;
        this.f1271n = eVar.f1271n;
        this.f1272o = eVar.f1272o;
        this.f1273p = eVar.f1273p;
        this.f1274q = eVar.f1274q;
        this.f1275r = eVar.f1275r;
        this.f1276s = eVar.f1276s;
        this.f1277t = eVar.f1277t;
        this.f1278u = eVar.f1278u;
        this.f1279v = eVar.f1279v;
        this.f1280w = eVar.f1280w;
        this.f1264g = eVar.f1264g;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void d(HashSet hashSet) {
        if (!Float.isNaN(this.f1267j)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f1268k)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f1269l)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f1270m)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f1271n)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f1272o)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.f1273p)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.f1277t)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f1278u)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f1279v)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f1274q)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f1275r)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f1276s)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f1280w)) {
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
        a.a(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyAttribute));
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void h(HashMap map) {
        if (this.f1265h == -1) {
            return;
        }
        if (!Float.isNaN(this.f1267j)) {
            map.put("alpha", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1268k)) {
            map.put("elevation", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1269l)) {
            map.put("rotation", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1270m)) {
            map.put("rotationX", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1271n)) {
            map.put("rotationY", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1272o)) {
            map.put("transformPivotX", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1273p)) {
            map.put("transformPivotY", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1277t)) {
            map.put("translationX", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1278u)) {
            map.put("translationY", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1279v)) {
            map.put("translationZ", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1274q)) {
            map.put("transitionPathRotate", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1275r)) {
            map.put("scaleX", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1276s)) {
            map.put("scaleY", Integer.valueOf(this.f1265h));
        }
        if (!Float.isNaN(this.f1280w)) {
            map.put("progress", Integer.valueOf(this.f1265h));
        }
        if (this.f1263e.size() > 0) {
            Iterator it = this.f1263e.keySet().iterator();
            while (it.hasNext()) {
                map.put("CUSTOM," + ((String) it.next()), Integer.valueOf(this.f1265h));
            }
        }
    }
}
