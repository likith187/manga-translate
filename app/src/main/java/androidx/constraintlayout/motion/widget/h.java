package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class h extends i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f1305h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f1306i = d.f1258f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f1307j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    float f1308k = Float.NaN;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    float f1309l = Float.NaN;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    float f1310m = Float.NaN;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    float f1311n = Float.NaN;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    float f1312o = Float.NaN;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f1313p = Float.NaN;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f1314q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f1315r = Float.NaN;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f1316s = Float.NaN;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f1317a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1317a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyPosition_motionTarget, 1);
            f1317a.append(R$styleable.KeyPosition_framePosition, 2);
            f1317a.append(R$styleable.KeyPosition_transitionEasing, 3);
            f1317a.append(R$styleable.KeyPosition_curveFit, 4);
            f1317a.append(R$styleable.KeyPosition_drawPath, 5);
            f1317a.append(R$styleable.KeyPosition_percentX, 6);
            f1317a.append(R$styleable.KeyPosition_percentY, 7);
            f1317a.append(R$styleable.KeyPosition_keyPositionType, 9);
            f1317a.append(R$styleable.KeyPosition_sizePercent, 8);
            f1317a.append(R$styleable.KeyPosition_percentWidth, 11);
            f1317a.append(R$styleable.KeyPosition_percentHeight, 12);
            f1317a.append(R$styleable.KeyPosition_pathMotionArc, 10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(h hVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f1317a.get(index)) {
                    case 1:
                        if (MotionLayout.H0) {
                            int resourceId = typedArray.getResourceId(index, hVar.f1260b);
                            hVar.f1260b = resourceId;
                            if (resourceId == -1) {
                                hVar.f1261c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            hVar.f1261c = typedArray.getString(index);
                        } else {
                            hVar.f1260b = typedArray.getResourceId(index, hVar.f1260b);
                        }
                        break;
                    case 2:
                        hVar.f1259a = typedArray.getInt(index, hVar.f1259a);
                        break;
                    case 3:
                        if (typedArray.peekValue(index).type == 3) {
                            hVar.f1305h = typedArray.getString(index);
                        } else {
                            hVar.f1305h = m.c.f13699c[typedArray.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        hVar.f1318g = typedArray.getInteger(index, hVar.f1318g);
                        break;
                    case 5:
                        hVar.f1307j = typedArray.getInt(index, hVar.f1307j);
                        break;
                    case 6:
                        hVar.f1310m = typedArray.getFloat(index, hVar.f1310m);
                        break;
                    case 7:
                        hVar.f1311n = typedArray.getFloat(index, hVar.f1311n);
                        break;
                    case 8:
                        float f10 = typedArray.getFloat(index, hVar.f1309l);
                        hVar.f1308k = f10;
                        hVar.f1309l = f10;
                        break;
                    case 9:
                        hVar.f1314q = typedArray.getInt(index, hVar.f1314q);
                        break;
                    case 10:
                        hVar.f1306i = typedArray.getInt(index, hVar.f1306i);
                        break;
                    case 11:
                        hVar.f1308k = typedArray.getFloat(index, hVar.f1308k);
                        break;
                    case 12:
                        hVar.f1309l = typedArray.getFloat(index, hVar.f1309l);
                        break;
                    default:
                        Log.e("KeyPosition", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1317a.get(index));
                        break;
                }
            }
            if (hVar.f1259a == -1) {
                Log.e("KeyPosition", "no frame position");
            }
        }
    }

    public h() {
        this.f1262d = 2;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap map) {
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        return new h().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        h hVar = (h) dVar;
        this.f1305h = hVar.f1305h;
        this.f1306i = hVar.f1306i;
        this.f1307j = hVar.f1307j;
        this.f1308k = hVar.f1308k;
        this.f1309l = Float.NaN;
        this.f1310m = hVar.f1310m;
        this.f1311n = hVar.f1311n;
        this.f1312o = hVar.f1312o;
        this.f1313p = hVar.f1313p;
        this.f1315r = hVar.f1315r;
        this.f1316s = hVar.f1316s;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void e(Context context, AttributeSet attributeSet) {
        a.b(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyPosition));
    }

    public void m(int i10) {
        this.f1314q = i10;
    }

    public void n(String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "transitionEasing":
                this.f1305h = obj.toString();
                break;
            case "percentWidth":
                this.f1308k = k(obj);
                break;
            case "percentHeight":
                this.f1309l = k(obj);
                break;
            case "drawPath":
                this.f1307j = l(obj);
                break;
            case "sizePercent":
                float fK = k(obj);
                this.f1308k = fK;
                this.f1309l = fK;
                break;
            case "percentX":
                this.f1310m = k(obj);
                break;
            case "percentY":
                this.f1311n = k(obj);
                break;
        }
    }
}
