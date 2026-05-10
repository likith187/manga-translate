package o1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.j;
import com.airbnb.lottie.m0;
import j1.o;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import l1.b;
import m1.k;
import n1.q;

/* JADX INFO: loaded from: classes.dex */
public class i extends o1.b {
    private final StringBuilder D;
    private final RectF E;
    private final Matrix F;
    private final Paint G;
    private final Paint H;
    private final Map I;
    private final androidx.collection.f J;
    private final List K;
    private final o L;
    private final i0 M;
    private final j N;
    private j1.a O;
    private j1.a P;
    private j1.a Q;
    private j1.a R;
    private j1.a S;
    private j1.a T;
    private j1.a U;
    private j1.a V;
    private j1.a W;
    private j1.a X;

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
        static final /* synthetic */ int[] f14356a;

        static {
            int[] iArr = new int[b.a.values().length];
            f14356a = iArr;
            try {
                iArr[b.a.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14356a[b.a.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14356a[b.a.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    i(i0 i0Var, e eVar) {
        m1.b bVar;
        m1.b bVar2;
        m1.a aVar;
        m1.a aVar2;
        super(i0Var, eVar);
        this.D = new StringBuilder(2);
        this.E = new RectF();
        this.F = new Matrix();
        this.G = new a(1);
        this.H = new b(1);
        this.I = new HashMap();
        this.J = new androidx.collection.f();
        this.K = new ArrayList();
        this.M = i0Var;
        this.N = eVar.c();
        o oVarA = eVar.t().a();
        this.L = oVarA;
        oVarA.a(this);
        j(oVarA);
        k kVarU = eVar.u();
        if (kVarU != null && (aVar2 = kVarU.f13815a) != null) {
            j1.a aVarA = aVar2.a();
            this.O = aVarA;
            aVarA.a(this);
            j(this.O);
        }
        if (kVarU != null && (aVar = kVarU.f13816b) != null) {
            j1.a aVarA2 = aVar.a();
            this.Q = aVarA2;
            aVarA2.a(this);
            j(this.Q);
        }
        if (kVarU != null && (bVar2 = kVarU.f13817c) != null) {
            j1.a aVarA3 = bVar2.a();
            this.S = aVarA3;
            aVarA3.a(this);
            j(this.S);
        }
        if (kVarU == null || (bVar = kVarU.f13818d) == null) {
            return;
        }
        j1.a aVarA4 = bVar.a();
        this.U = aVarA4;
        aVarA4.a(this);
        j(this.U);
    }

    private String Q(String str, int i10) {
        int iCodePointAt = str.codePointAt(i10);
        int iCharCount = Character.charCount(iCodePointAt) + i10;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (!e0(iCodePointAt2)) {
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

    private void R(l1.b bVar, int i10) {
        j1.a aVar = this.P;
        if (aVar != null) {
            this.G.setColor(((Integer) aVar.h()).intValue());
        } else {
            j1.a aVar2 = this.O;
            if (aVar2 != null) {
                this.G.setColor(((Integer) aVar2.h()).intValue());
            } else {
                this.G.setColor(bVar.f13547h);
            }
        }
        j1.a aVar3 = this.R;
        if (aVar3 != null) {
            this.H.setColor(((Integer) aVar3.h()).intValue());
        } else {
            j1.a aVar4 = this.Q;
            if (aVar4 != null) {
                this.H.setColor(((Integer) aVar4.h()).intValue());
            } else {
                this.H.setColor(bVar.f13548i);
            }
        }
        int iIntValue = ((((this.f14323x.h() == null ? 100 : ((Integer) this.f14323x.h().h()).intValue()) * 255) / 100) * i10) / 255;
        this.G.setAlpha(iIntValue);
        this.H.setAlpha(iIntValue);
        j1.a aVar5 = this.T;
        if (aVar5 != null) {
            this.H.setStrokeWidth(((Float) aVar5.h()).floatValue());
            return;
        }
        j1.a aVar6 = this.S;
        if (aVar6 != null) {
            this.H.setStrokeWidth(((Float) aVar6.h()).floatValue());
        } else {
            this.H.setStrokeWidth(bVar.f13549j * r1.j.e());
        }
    }

    private void S(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private void T(l1.d dVar, float f10, l1.b bVar, Canvas canvas) {
        List listB0 = b0(dVar);
        for (int i10 = 0; i10 < listB0.size(); i10++) {
            Path pathA = ((i1.d) listB0.get(i10)).a();
            pathA.computeBounds(this.E, false);
            this.F.reset();
            this.F.preTranslate(0.0f, (-bVar.f13546g) * r1.j.e());
            this.F.preScale(f10, f10);
            pathA.transform(this.F);
            if (bVar.f13550k) {
                W(pathA, this.G, canvas);
                W(pathA, this.H, canvas);
            } else {
                W(pathA, this.H, canvas);
                W(pathA, this.G, canvas);
            }
        }
    }

    private void U(String str, l1.b bVar, Canvas canvas) {
        if (bVar.f13550k) {
            S(str, this.G, canvas);
            S(str, this.H, canvas);
        } else {
            S(str, this.H, canvas);
            S(str, this.G, canvas);
        }
    }

    private void V(String str, l1.b bVar, Canvas canvas, float f10) {
        int length = 0;
        while (length < str.length()) {
            String strQ = Q(str, length);
            length += strQ.length();
            U(strQ, bVar, canvas);
            canvas.translate(this.G.measureText(strQ) + f10, 0.0f);
        }
    }

    private void W(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void X(String str, l1.b bVar, l1.c cVar, Canvas canvas, float f10, float f11, float f12) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            l1.d dVar = (l1.d) this.N.c().e(l1.d.c(str.charAt(i10), cVar.a(), cVar.c()));
            if (dVar != null) {
                T(dVar, f11, bVar, canvas);
                canvas.translate((((float) dVar.b()) * f11 * r1.j.e()) + f12, 0.0f);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void Y(l1.b r19, l1.c r20, android.graphics.Canvas r21) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o1.i.Y(l1.b, l1.c, android.graphics.Canvas):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void Z(l1.b r21, android.graphics.Matrix r22, l1.c r23, android.graphics.Canvas r24) {
        /*
            r20 = this;
            r8 = r20
            r9 = r21
            j1.a r0 = r8.W
            if (r0 == 0) goto L13
            java.lang.Object r0 = r0.h()
            java.lang.Float r0 = (java.lang.Float) r0
            float r0 = r0.floatValue()
            goto L15
        L13:
            float r0 = r9.f13542c
        L15:
            r1 = 1120403456(0x42c80000, float:100.0)
            float r10 = r0 / r1
            float r11 = r1.j.g(r22)
            java.lang.String r0 = r9.f13540a
            java.util.List r12 = r8.c0(r0)
            int r13 = r12.size()
            int r0 = r9.f13544e
            float r0 = (float) r0
            r1 = 1092616192(0x41200000, float:10.0)
            float r0 = r0 / r1
            j1.a r1 = r8.V
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
            j1.a r1 = r8.U
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
            if (r6 >= r13) goto Lbe
            java.lang.Object r0 = r12.get(r6)
            r1 = r0
            java.lang.String r1 = (java.lang.String) r1
            android.graphics.PointF r0 = r9.f13552m
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
            java.util.List r6 = r0.g0(r1, r2, r3, r4, r5, r6)
            r5 = r15
        L75:
            int r0 = r6.size()
            if (r5 >= r0) goto Lbb
            java.lang.Object r0 = r6.get(r5)
            o1.i$d r0 = (o1.i.d) r0
            int r7 = r7 + 1
            r24.save()
            float r1 = o1.i.d.a(r0)
            r4 = r24
            boolean r1 = r8.f0(r4, r9, r7, r1)
            if (r1 == 0) goto Lab
            java.lang.String r1 = o1.i.d.b(r0)
            r0 = r20
            r2 = r21
            r3 = r23
            r4 = r24
            r16 = r5
            r5 = r11
            r18 = r6
            r6 = r10
            r19 = r7
            r7 = r14
            r0.X(r1, r2, r3, r4, r5, r6, r7)
            goto Lb1
        Lab:
            r16 = r5
            r18 = r6
            r19 = r7
        Lb1:
            r24.restore()
            int r5 = r16 + 1
            r6 = r18
            r7 = r19
            goto L75
        Lbb:
            int r6 = r17 + 1
            goto L51
        Lbe:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: o1.i.Z(l1.b, android.graphics.Matrix, l1.c, android.graphics.Canvas):void");
    }

    private d a0(int i10) {
        for (int size = this.K.size(); size < i10; size++) {
            this.K.add(new d(null));
        }
        return (d) this.K.get(i10 - 1);
    }

    private List b0(l1.d dVar) {
        if (this.I.containsKey(dVar)) {
            return (List) this.I.get(dVar);
        }
        List listA = dVar.a();
        int size = listA.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new i1.d(this.M, this, (q) listA.get(i10), this.N));
        }
        this.I.put(dVar, arrayList);
        return arrayList;
    }

    private List c0(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
    }

    private Typeface d0(l1.c cVar) {
        Typeface typeface;
        j1.a aVar = this.X;
        if (aVar != null && (typeface = (Typeface) aVar.h()) != null) {
            return typeface;
        }
        Typeface typefaceC0 = this.M.c0(cVar);
        return typefaceC0 != null ? typefaceC0 : cVar.d();
    }

    private boolean e0(int i10) {
        return Character.getType(i10) == 16 || Character.getType(i10) == 27 || Character.getType(i10) == 6 || Character.getType(i10) == 28 || Character.getType(i10) == 8 || Character.getType(i10) == 19;
    }

    private boolean f0(Canvas canvas, l1.b bVar, int i10, float f10) {
        PointF pointF = bVar.f13551l;
        PointF pointF2 = bVar.f13552m;
        float fE = r1.j.e();
        float f11 = (i10 * bVar.f13545f * fE) + (pointF == null ? 0.0f : (bVar.f13545f * fE) + pointF.y);
        if (this.M.J() && pointF2 != null && pointF != null && f11 >= pointF.y + pointF2.y + bVar.f13542c) {
            return false;
        }
        float f12 = pointF == null ? 0.0f : pointF.x;
        float f13 = pointF2 != null ? pointF2.x : 0.0f;
        int i11 = c.f14356a[bVar.f13543d.ordinal()];
        if (i11 == 1) {
            canvas.translate(f12, f11);
        } else if (i11 == 2) {
            canvas.translate((f12 + f13) - f10, f11);
        } else if (i11 == 3) {
            canvas.translate((f12 + (f13 / 2.0f)) - (f10 / 2.0f), f11);
        }
        return true;
    }

    private List g0(String str, float f10, l1.c cVar, float f11, float f12, boolean z10) {
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
                l1.d dVar = (l1.d) this.N.c().e(l1.d.c(cCharAt, cVar.a(), cVar.c()));
                if (dVar != null) {
                    fMeasureText = ((float) dVar.b()) * f11 * r1.j.e();
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
                d dVarA0 = a0(i10);
                if (i12 == i11) {
                    dVarA0.c(str.substring(i11, i13).trim(), (f13 - f16) - ((r9.length() - r7.length()) * f15));
                    i11 = i13;
                    i12 = i11;
                    f13 = f16;
                    f14 = f13;
                } else {
                    dVarA0.c(str.substring(i11, i12 - 1).trim(), ((f13 - f14) - ((r7.length() - r13.length()) * f15)) - f15);
                    f13 = f14;
                    i11 = i12;
                }
            }
        }
        if (f13 > 0.0f) {
            i10++;
            a0(i10).c(str.substring(i11), f13);
        }
        return this.K.subList(0, i10);
    }

    @Override // o1.b, i1.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, this.N.b().width(), this.N.b().height());
    }

    @Override // o1.b, l1.f
    public void h(Object obj, s1.c cVar) {
        super.h(obj, cVar);
        if (obj == m0.f4617a) {
            j1.a aVar = this.P;
            if (aVar != null) {
                I(aVar);
            }
            if (cVar == null) {
                this.P = null;
                return;
            }
            j1.q qVar = new j1.q(cVar);
            this.P = qVar;
            qVar.a(this);
            j(this.P);
            return;
        }
        if (obj == m0.f4618b) {
            j1.a aVar2 = this.R;
            if (aVar2 != null) {
                I(aVar2);
            }
            if (cVar == null) {
                this.R = null;
                return;
            }
            j1.q qVar2 = new j1.q(cVar);
            this.R = qVar2;
            qVar2.a(this);
            j(this.R);
            return;
        }
        if (obj == m0.f4635s) {
            j1.a aVar3 = this.T;
            if (aVar3 != null) {
                I(aVar3);
            }
            if (cVar == null) {
                this.T = null;
                return;
            }
            j1.q qVar3 = new j1.q(cVar);
            this.T = qVar3;
            qVar3.a(this);
            j(this.T);
            return;
        }
        if (obj == m0.f4636t) {
            j1.a aVar4 = this.V;
            if (aVar4 != null) {
                I(aVar4);
            }
            if (cVar == null) {
                this.V = null;
                return;
            }
            j1.q qVar4 = new j1.q(cVar);
            this.V = qVar4;
            qVar4.a(this);
            j(this.V);
            return;
        }
        if (obj == m0.F) {
            j1.a aVar5 = this.W;
            if (aVar5 != null) {
                I(aVar5);
            }
            if (cVar == null) {
                this.W = null;
                return;
            }
            j1.q qVar5 = new j1.q(cVar);
            this.W = qVar5;
            qVar5.a(this);
            j(this.W);
            return;
        }
        if (obj != m0.M) {
            if (obj == m0.O) {
                this.L.r(cVar);
                return;
            }
            return;
        }
        j1.a aVar6 = this.X;
        if (aVar6 != null) {
            I(aVar6);
        }
        if (cVar == null) {
            this.X = null;
            return;
        }
        j1.q qVar6 = new j1.q(cVar);
        this.X = qVar6;
        qVar6.a(this);
        j(this.X);
    }

    @Override // o1.b
    void u(Canvas canvas, Matrix matrix, int i10) {
        l1.b bVar = (l1.b) this.L.h();
        l1.c cVar = (l1.c) this.N.g().get(bVar.f13541b);
        if (cVar == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        R(bVar, i10);
        if (this.M.m1()) {
            Z(bVar, matrix, cVar, canvas);
        } else {
            Y(bVar, cVar, canvas);
        }
        canvas.restore();
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f14357a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f14358b;

        private d() {
            this.f14357a = "";
            this.f14358b = 0.0f;
        }

        void c(String str, float f10) {
            this.f14357a = str;
            this.f14358b = f10;
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }
}
