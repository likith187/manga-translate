package j8;

import android.util.Size;
import j8.n0;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.IntUnaryOperator;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import l8.f;
import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.imgproc.Imgproc;
import org.opencv.photo.Photo;

/* JADX INFO: loaded from: classes2.dex */
abstract class u0 {

    /* JADX INFO: renamed from: a */
    private static final String f12859a = "j8.u0";

    /* JADX INFO: renamed from: b */
    private static Mat f12860b = Imgproc.d(0, new aa.h(3.0d, 3.0d));

    public static void g(Mat mat, List list, final n0.a aVar) {
        List list2 = (List) list.stream().filter(new Predicate() { // from class: j8.p0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return u0.p((m0) obj);
            }
        }).collect(Collectors.toList());
        if (list2.isEmpty()) {
            return;
        }
        final f.a aVarH = h(mat, aVar);
        final Mat mat2 = new Mat();
        Imgproc.h(mat, mat2, new aa.h(aVarH.c().getWidth(), aVarH.c().getHeight()));
        list2.stream().forEach(new Consumer() { // from class: j8.q0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                u0.q(mat2, aVarH, aVar, (m0) obj);
            }
        });
        mat2.u();
    }

    private static f.a h(Mat mat, n0.a aVar) {
        Size size = new Size(mat.d(), mat.v());
        double dMin = Math.min(size.getWidth(), size.getHeight());
        c1 c1Var = aVar.f12843i;
        double d10 = c1Var.f12782c;
        double d11 = d10 * dMin;
        double d12 = c1Var.f12783d;
        if (d11 > d12) {
            d10 = d12 / dMin;
        }
        double d13 = d10 * dMin;
        double d14 = c1Var.f12784e;
        if (d13 < d14) {
            d10 = d14 / dMin;
        }
        return new f.a(size, d10);
    }

    private static void i(m0 m0Var, int i10, int i11) {
        int i12 = i11 + i10;
        int i13 = i12 * 2;
        if (m0Var.f12823g.d() < i13 || m0Var.f12823g.v() < i13) {
            return;
        }
        l8.d.d().e("cleanBorder", f12859a);
        if (m0Var.f12825i == null) {
            m0Var.f12825i = n(m0Var.f12823g, i10);
        }
        m0Var.f12823g = j(m0Var.f12823g, i12, m0Var.f12825i);
        l8.d.d().c("cleanBorder");
    }

    private static Mat j(Mat mat, int i10, int[] iArr) {
        int i11 = iArr[0] + iArr[1] + iArr[2];
        int iV = mat.v();
        int iD = mat.d();
        byte[] bArr = (byte[]) k8.i.m(mat);
        int i12 = iV - (i10 * 2);
        for (aa.e eVar : Arrays.asList(new aa.e(0, 0, iD, i10), new aa.e(0, iV - i10, iD, i10), new aa.e(0, i10, i10, i12), new aa.e(iD - i10, i10, i10, i12))) {
            for (int i13 = eVar.f140b; i13 < eVar.f140b + eVar.f142f; i13++) {
                for (int i14 = eVar.f139a; i14 < eVar.f139a + eVar.f141c; i14++) {
                    int i15 = (i13 * iD * 3) + (i14 * 3);
                    int i16 = i15 + 1;
                    int i17 = i15 + 2;
                    if (Math.abs((((bArr[i15] & 255) + (bArr[i16] & 255)) + (bArr[i17] & 255)) - i11) > 30) {
                        bArr[i15] = (byte) iArr[0];
                        bArr[i16] = (byte) iArr[1];
                        bArr[i17] = (byte) iArr[2];
                    }
                }
            }
        }
        Mat mat2 = new Mat(iV, iD, aa.a.f113c);
        mat2.r(0, 0, bArr);
        return mat2;
    }

    private static int k(byte b10, byte b11, byte b12) {
        return (((b10 & 255) >> 3) << 11) | (((b11 & 255) >> 2) << 5) | ((b12 & 255) >> 3);
    }

    public static void l(Mat mat, List list, n0.a aVar) {
        final f.a aVarH = h(mat, aVar);
        Mat mat2 = new Mat();
        Imgproc.h(mat, mat2, new aa.h(aVarH.c().getWidth(), aVarH.c().getHeight()));
        List list2 = (List) list.stream().map(new Function() { // from class: j8.o0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u0.r(aVarH, (m0) obj);
            }
        }).collect(Collectors.toList());
        int i10 = (int) (((double) aVar.f12843i.f12781b) * aVarH.f13648a);
        if (i10 <= 2) {
            i10 = 2;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            m0 m0Var = (m0) list.get(i11);
            m0Var.f12823g = k8.i.u(mat2, (List) list2.get(i11));
            v(m0Var, i11, i10, aVar);
            Mat mat3 = m0Var.f12823g;
            Imgproc.h(mat3, mat3, k8.e.t(m0Var.f12822f.f12833c));
        }
        mat2.u();
    }

    private static void m(Mat mat, List list) {
        l8.d.d().e("eraseText", f12859a);
        Mat matA = Mat.A(mat.x(), 0);
        Imgproc.b(matA, (List) list.stream().map(new Function() { // from class: j8.r0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u0.s((List) obj);
            }
        }).collect(Collectors.toList()), new aa.g(255.0d));
        Mat matA2 = Mat.A(mat.x(), 0);
        Mat mat2 = new Mat();
        if (mat.a() == 4) {
            Imgproc.a(mat, mat2, 10);
        } else {
            Imgproc.a(mat, mat2, 6);
        }
        Imgproc.f(mat2, matA2, 4, f12860b);
        Imgproc.i(matA2, matA2, 20.0d, 255.0d, 0);
        Core.a(matA, matA2, matA);
        Imgproc.i(matA, matA, 0.0d, 255.0d, 0);
        matA.e(matA, 0);
        l8.d.d().a("prepare");
        Photo.a(mat, matA, mat, 2.0d, 0);
        l8.d.d().c("eraseText");
    }

    private static int[] n(final Mat mat, int i10) {
        final List listAsList;
        int iD = mat.d();
        int iV = mat.v();
        final int iA = mat.a();
        int i11 = i10 * 2;
        if (iV <= i11 || iD <= i11) {
            listAsList = Arrays.asList(new aa.e(0, 0, iD, iV));
        } else {
            aa.e eVar = new aa.e(0, 0, iD, i10);
            aa.e eVar2 = new aa.e(0, iV - i10, iD, i10);
            int i12 = iV - i11;
            listAsList = Arrays.asList(eVar, eVar2, new aa.e(0, i10, i10, i12), new aa.e(iD - i10, i10, i10, i12));
        }
        int[] array = IntStream.range(0, listAsList.size()).flatMap(new IntFunction() { // from class: j8.s0
            @Override // java.util.function.IntFunction
            public final Object apply(int i13) {
                return u0.t(mat, listAsList, iA, i13);
            }
        }).toArray();
        int[] iArr = new int[65536];
        int i13 = 0;
        int i14 = 0;
        for (int i15 : array) {
            int i16 = iArr[i15] + 1;
            iArr[i15] = i16;
            if (i16 > i14) {
                i13 = i15;
                i14 = i16;
            }
        }
        return o(i13);
    }

    private static int[] o(int i10) {
        return new int[]{i10 >> 8, (i10 & 2016) >> 3, (i10 & 31) << 3};
    }

    public static /* synthetic */ boolean p(m0 m0Var) {
        return m0Var.f12825i == null;
    }

    public static /* synthetic */ void q(Mat mat, f.a aVar, n0.a aVar2, m0 m0Var) {
        Mat matU = k8.i.u(mat, k8.e.z(m0Var.f12822f.f12833c, aVar));
        m0Var.f12825i = n(matU, aVar2.f12843i.f12781b);
        matU.u();
    }

    public static /* synthetic */ List r(f.a aVar, m0 m0Var) {
        return k8.e.z(m0Var.f12822f.f12833c, aVar);
    }

    public static /* synthetic */ aa.c s(List list) {
        aa.c cVar = new aa.c();
        cVar.D(list);
        return cVar;
    }

    public static /* synthetic */ IntStream t(Mat mat, List list, final int i10, int i11) {
        final byte[] bArrN = k8.i.n(new Mat(mat, (aa.e) list.get(i11)));
        return IntStream.range(0, bArrN.length / i10).map(new IntUnaryOperator() { // from class: j8.t0
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i12) {
                return u0.u(i10, bArrN, i12);
            }
        });
    }

    public static /* synthetic */ int u(int i10, byte[] bArr, int i11) {
        int i12 = i11 * i10;
        return k(bArr[i12], bArr[i12 + 1], bArr[i12 + 2]);
    }

    private static void v(m0 m0Var, int i10, int i11, n0.a aVar) {
        if (aVar.f12841g) {
            i(m0Var, i11, 4);
            k8.i.k(f12859a, "backgroundMat_" + i10, m0Var.f12823g);
        }
        double d10 = i11;
        m(m0Var.f12823g, Arrays.asList(k8.e.v(d10, d10, r9.d() - i11, m0Var.f12823g.v() - i11)));
    }
}
