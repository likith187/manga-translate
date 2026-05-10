package i6;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import com.oplus.anim.q;
import d6.o;
import f6.b;
import g6.k;
import h6.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class i extends i6.b {
    private final StringBuilder D;
    private final RectF E;
    private final Matrix F;
    private final Paint G;
    private final Paint H;
    private final Map I;
    private final androidx.collection.f J;
    private final List K;
    private final o L;
    private final com.oplus.anim.o M;
    private final com.oplus.anim.a N;
    private d6.a O;
    private d6.a P;
    private d6.a Q;
    private d6.a R;
    private d6.a S;
    private d6.a T;
    private d6.a U;
    private d6.a V;
    private d6.a W;
    private d6.a X;

    class a extends Paint {
        a(int i10) {
            super(i10);
            setStyle(Paint.Style.FILL);
        }
    }

    class b extends Paint {
        b(int i10) {
            super(i10);
            setStyle(Paint.Style.STROKE);
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f12650a;

        static {
            int[] iArr = new int[b.a.values().length];
            f12650a = iArr;
            try {
                iArr[b.a.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12650a[b.a.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12650a[b.a.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    i(com.oplus.anim.o oVar, e eVar) {
        g6.b bVar;
        g6.b bVar2;
        g6.a aVar;
        g6.a aVar2;
        super(oVar, eVar);
        this.D = new StringBuilder(2);
        this.E = new RectF();
        this.F = new Matrix();
        this.G = new a(1);
        this.H = new b(1);
        this.I = new HashMap();
        this.J = new androidx.collection.f();
        this.K = new ArrayList();
        this.M = oVar;
        this.N = eVar.b();
        o oVarA = eVar.s().a();
        this.L = oVarA;
        oVarA.a(this);
        j(oVarA);
        k kVarT = eVar.t();
        if (kVarT != null && (aVar2 = kVarT.f12096a) != null) {
            d6.a aVarA = aVar2.a();
            this.O = aVarA;
            aVarA.a(this);
            j(this.O);
        }
        if (kVarT != null && (aVar = kVarT.f12097b) != null) {
            d6.a aVarA2 = aVar.a();
            this.Q = aVarA2;
            aVarA2.a(this);
            j(this.Q);
        }
        if (kVarT != null && (bVar2 = kVarT.f12098c) != null) {
            d6.a aVarA3 = bVar2.a();
            this.S = aVarA3;
            aVarA3.a(this);
            j(this.S);
        }
        if (kVarT == null || (bVar = kVarT.f12099d) == null) {
            return;
        }
        d6.a aVarA4 = bVar.a();
        this.U = aVarA4;
        aVarA4.a(this);
        j(this.U);
    }

    private String P(String str, int i10) {
        int iCodePointAt = str.codePointAt(i10);
        int iCharCount = Character.charCount(iCodePointAt) + i10;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (!d0(iCodePointAt2)) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        long j10 = iCodePointAt;
        if (this.J.d(j10)) {
            return (String) this.J.e(j10);
        }
        this.D.setLength(0);
        while (i10 < iCharCount) {
            int iCodePointAt3 = str.codePointAt(i10);
            this.D.appendCodePoint(iCodePointAt3);
            i10 += Character.charCount(iCodePointAt3);
        }
        String string = this.D.toString();
        this.J.i(j10, string);
        return string;
    }

    private void Q(f6.b bVar, Matrix matrix) {
        d6.a aVar = this.P;
        if (aVar != null) {
            this.G.setColor(((Integer) aVar.h()).intValue());
        } else {
            d6.a aVar2 = this.O;
            if (aVar2 != null) {
                this.G.setColor(((Integer) aVar2.h()).intValue());
            } else {
                this.G.setColor(bVar.f11981h);
            }
        }
        d6.a aVar3 = this.R;
        if (aVar3 != null) {
            this.H.setColor(((Integer) aVar3.h()).intValue());
        } else {
            d6.a aVar4 = this.Q;
            if (aVar4 != null) {
                this.H.setColor(((Integer) aVar4.h()).intValue());
            } else {
                this.H.setColor(bVar.f11982i);
            }
        }
        int iIntValue = ((this.f12618x.h() == null ? 100 : ((Integer) this.f12618x.h().h()).intValue()) * 255) / 100;
        this.G.setAlpha(iIntValue);
        this.H.setAlpha(iIntValue);
        d6.a aVar5 = this.T;
        if (aVar5 != null) {
            this.H.setStrokeWidth(((Float) aVar5.h()).floatValue());
            return;
        }
        d6.a aVar6 = this.S;
        if (aVar6 != null) {
            this.H.setStrokeWidth(((Float) aVar6.h()).floatValue());
        } else {
            this.H.setStrokeWidth(bVar.f11983j * l6.h.e());
        }
    }

    private void R(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private void S(f6.e eVar, float f10, f6.b bVar, Canvas canvas) {
        List listA0 = a0(eVar);
        for (int i10 = 0; i10 < listA0.size(); i10++) {
            Path pathA = ((c6.d) listA0.get(i10)).a();
            pathA.computeBounds(this.E, false);
            this.F.reset();
            this.F.preTranslate(0.0f, (-bVar.f11980g) * l6.h.e());
            this.F.preScale(f10, f10);
            pathA.transform(this.F);
            if (bVar.f11984k) {
                V(pathA, this.G, canvas);
                V(pathA, this.H, canvas);
            } else {
                V(pathA, this.H, canvas);
                V(pathA, this.G, canvas);
            }
        }
    }

    private void T(String str, f6.b bVar, Canvas canvas) {
        if (bVar.f11984k) {
            R(str, this.G, canvas);
            R(str, this.H, canvas);
        } else {
            R(str, this.H, canvas);
            R(str, this.G, canvas);
        }
    }

    private void U(String str, f6.b bVar, Canvas canvas, float f10) {
        int length = 0;
        while (length < str.length()) {
            String strP = P(str, length);
            length += strP.length();
            T(strP, bVar, canvas);
            canvas.translate(this.G.measureText(strP) + f10, 0.0f);
        }
    }

    private void V(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void W(String str, f6.b bVar, f6.d dVar, Canvas canvas, float f10, float f11, float f12) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            f6.e eVar = (f6.e) this.N.c().e(f6.e.c(str.charAt(i10), dVar.a(), dVar.c()));
            if (eVar != null) {
                S(eVar, f11, bVar, canvas);
                canvas.translate((((float) eVar.b()) * f11 * l6.h.e()) + f12, 0.0f);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void X(f6.b r19, f6.d r20, android.graphics.Canvas r21) {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i6.i.X(f6.b, f6.d, android.graphics.Canvas):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void Y(f6.b r21, android.graphics.Matrix r22, f6.d r23, android.graphics.Canvas r24) {
        /*
            r20 = this;
            r8 = r20
            r9 = r21
            d6.a r0 = r8.W
            if (r0 == 0) goto L13
            java.lang.Object r0 = r0.h()
            java.lang.Float r0 = (java.lang.Float) r0
            float r0 = r0.floatValue()
            goto L15
        L13:
            float r0 = r9.f11976c
        L15:
            r1 = 1120403456(0x42c80000, float:100.0)
            float r10 = r0 / r1
            float r11 = l6.h.g(r22)
            java.lang.String r0 = r9.f11974a
            java.util.List r12 = r8.b0(r0)
            int r13 = r12.size()
            int r0 = r9.f11978e
            float r0 = (float) r0
            r1 = 1092616192(0x41200000, float:10.0)
            float r0 = r0 / r1
            d6.a r1 = r8.V
            if (r1 == 0) goto L3e
            java.lang.Object r1 = r1.h()
            java.lang.Float r1 = (java.lang.Float) r1
            float r1 = r1.floatValue()
        L3b:
            float r0 = r0 + r1
        L3c:
            r14 = r0
            goto L4d
        L3e:
            d6.a r1 = r8.U
            if (r1 == 0) goto L3c
            java.lang.Object r1 = r1.h()
            java.lang.Float r1 = (java.lang.Float) r1
            float r1 = r1.floatValue()
            goto L3b
        L4d:
            r15 = 0
            r0 = -1
            r7 = r0
            r6 = r15
        L51:
            if (r6 >= r13) goto Lb2
            java.lang.Object r0 = r12.get(r6)
            r1 = r0
            java.lang.String r1 = (java.lang.String) r1
            android.graphics.PointF r0 = r9.f11986m
            if (r0 != 0) goto L61
            r0 = 0
        L5f:
            r2 = r0
            goto L64
        L61:
            float r0 = r0.x
            goto L5f
        L64:
            r16 = 1
            r0 = r20
            r3 = r23
            r4 = r10
            r5 = r14
            r17 = r6
            r6 = r16
            java.util.List r6 = r0.f0(r1, r2, r3, r4, r5, r6)
            r5 = r15
        L75:
            int r0 = r6.size()
            if (r5 >= r0) goto Laf
            java.lang.Object r0 = r6.get(r5)
            i6.i$d r0 = (i6.i.d) r0
            int r7 = r7 + 1
            r24.save()
            float r1 = i6.i.d.a(r0)
            r4 = r24
            r8.e0(r4, r9, r7, r1)
            java.lang.String r1 = i6.i.d.b(r0)
            r0 = r20
            r2 = r21
            r3 = r23
            r16 = r5
            r5 = r11
            r18 = r6
            r6 = r10
            r19 = r7
            r7 = r14
            r0.W(r1, r2, r3, r4, r5, r6, r7)
            r24.restore()
            int r5 = r16 + 1
            r6 = r18
            r7 = r19
            goto L75
        Laf:
            int r6 = r17 + 1
            goto L51
        Lb2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i6.i.Y(f6.b, android.graphics.Matrix, f6.d, android.graphics.Canvas):void");
    }

    private d Z(int i10) {
        for (int size = this.K.size(); size < i10; size++) {
            this.K.add(new d(null));
        }
        return (d) this.K.get(i10 - 1);
    }

    private List a0(f6.e eVar) {
        if (this.I.containsKey(eVar)) {
            return (List) this.I.get(eVar);
        }
        List listA = eVar.a();
        int size = listA.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new c6.d(this.M, this, (p) listA.get(i10), this.N));
        }
        this.I.put(eVar, arrayList);
        return arrayList;
    }

    private List b0(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
    }

    private Typeface c0(f6.d dVar) {
        Typeface typeface;
        d6.a aVar = this.X;
        if (aVar != null && (typeface = (Typeface) aVar.h()) != null) {
            return typeface;
        }
        Typeface typefaceX = this.M.X(dVar);
        return typefaceX != null ? typefaceX : dVar.d();
    }

    private boolean d0(int i10) {
        return Character.getType(i10) == 16 || Character.getType(i10) == 27 || Character.getType(i10) == 6 || Character.getType(i10) == 28 || Character.getType(i10) == 8 || Character.getType(i10) == 19;
    }

    private void e0(Canvas canvas, f6.b bVar, int i10, float f10) {
        PointF pointF = bVar.f11985l;
        PointF pointF2 = bVar.f11986m;
        float fE = l6.h.e();
        float f11 = (i10 * bVar.f11979f * fE) + (pointF == null ? 0.0f : (bVar.f11979f * fE) + pointF.y);
        float f12 = pointF == null ? 0.0f : pointF.x;
        float f13 = pointF2 != null ? pointF2.x : 0.0f;
        int i11 = c.f12650a[bVar.f11977d.ordinal()];
        if (i11 == 1) {
            canvas.translate(f12, f11);
        } else if (i11 == 2) {
            canvas.translate((f12 + f13) - f10, f11);
        } else {
            if (i11 != 3) {
                return;
            }
            canvas.translate((f12 + (f13 / 2.0f)) - (f10 / 2.0f), f11);
        }
    }

    private List f0(String str, float f10, f6.d dVar, float f11, float f12, boolean z10) {
        float fMeasureText;
        int i10 = 0;
        int i11 = 0;
        boolean z11 = false;
        int i12 = 0;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        for (int i13 = 0; i13 < str.length(); i13++) {
            char cCharAt = str.charAt(i13);
            if (z10) {
                f6.e eVar = (f6.e) this.N.c().e(f6.e.c(cCharAt, dVar.a(), dVar.c()));
                if (eVar != null) {
                    fMeasureText = ((float) eVar.b()) * f11 * l6.h.e();
                }
            } else {
                fMeasureText = this.G.measureText(str.substring(i13, i13 + 1));
            }
            float f16 = fMeasureText + f12;
            if (cCharAt == ' ') {
                z11 = true;
                f15 = f16;
            } else if (z11) {
                z11 = false;
                i12 = i13;
                f14 = f16;
            } else {
                f14 += f16;
            }
            f13 += f16;
            if (f10 > 0.0f && f13 >= f10 && cCharAt != ' ') {
                i10++;
                d dVarZ = Z(i10);
                if (i12 == i11) {
                    dVarZ.c(str.substring(i11, i13).trim(), (f13 - f16) - ((r9.length() - r7.length()) * f15));
                    i11 = i13;
                    i12 = i11;
                    f13 = f16;
                    f14 = f13;
                } else {
                    dVarZ.c(str.substring(i11, i12 - 1).trim(), ((f13 - f14) - ((r7.length() - r13.length()) * f15)) - f15);
                    f13 = f14;
                    i11 = i12;
                }
            }
        }
        if (f13 > 0.0f) {
            i10++;
            Z(i10).c(str.substring(i11), f13);
        }
        return this.K.subList(0, i10);
    }

    @Override // i6.b, c6.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, this.N.b().width(), this.N.b().height());
    }

    @Override // i6.b, f6.g
    public void h(Object obj, m6.b bVar) {
        super.h(obj, bVar);
        if (obj == q.f11106a) {
            d6.a aVar = this.P;
            if (aVar != null) {
                H(aVar);
            }
            if (bVar == null) {
                this.P = null;
                return;
            }
            d6.q qVar = new d6.q(bVar);
            this.P = qVar;
            qVar.a(this);
            j(this.P);
            return;
        }
        if (obj == q.f11107b) {
            d6.a aVar2 = this.R;
            if (aVar2 != null) {
                H(aVar2);
            }
            if (bVar == null) {
                this.R = null;
                return;
            }
            d6.q qVar2 = new d6.q(bVar);
            this.R = qVar2;
            qVar2.a(this);
            j(this.R);
            return;
        }
        if (obj == q.f11124s) {
            d6.a aVar3 = this.T;
            if (aVar3 != null) {
                H(aVar3);
            }
            if (bVar == null) {
                this.T = null;
                return;
            }
            d6.q qVar3 = new d6.q(bVar);
            this.T = qVar3;
            qVar3.a(this);
            j(this.T);
            return;
        }
        if (obj == q.f11125t) {
            d6.a aVar4 = this.V;
            if (aVar4 != null) {
                H(aVar4);
            }
            if (bVar == null) {
                this.V = null;
                return;
            }
            d6.q qVar4 = new d6.q(bVar);
            this.V = qVar4;
            qVar4.a(this);
            j(this.V);
            return;
        }
        if (obj == q.F) {
            d6.a aVar5 = this.W;
            if (aVar5 != null) {
                H(aVar5);
            }
            if (bVar == null) {
                this.W = null;
                return;
            }
            d6.q qVar5 = new d6.q(bVar);
            this.W = qVar5;
            qVar5.a(this);
            j(this.W);
            return;
        }
        if (obj != q.M) {
            if (obj == q.O) {
                this.L.q(bVar);
                return;
            }
            return;
        }
        d6.a aVar6 = this.X;
        if (aVar6 != null) {
            H(aVar6);
        }
        if (bVar == null) {
            this.X = null;
            return;
        }
        d6.q qVar6 = new d6.q(bVar);
        this.X = qVar6;
        qVar6.a(this);
        j(this.X);
    }

    @Override // i6.b
    void u(Canvas canvas, Matrix matrix, int i10) {
        f6.b bVar = (f6.b) this.L.h();
        f6.d dVar = (f6.d) this.N.g().get(bVar.f11975b);
        if (dVar == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        Q(bVar, matrix);
        if (this.M.Z0()) {
            Y(bVar, matrix, dVar, canvas);
        } else {
            X(bVar, dVar, canvas);
        }
        canvas.restore();
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f12651a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f12652b;

        private d() {
            this.f12651a = "";
            this.f12652b = 0.0f;
        }

        void c(String str, float f10) {
            this.f12651a = str;
            this.f12652b = f10;
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }
}
