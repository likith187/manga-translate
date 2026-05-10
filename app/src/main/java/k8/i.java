package k8;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;
import java.util.function.Function;
import java.util.function.IntToDoubleFunction;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import org.opencv.core.Mat;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f12992a = "k8.i";

    public static void A(Mat mat, Mat mat2, List list, aa.h hVar) {
        int iV = mat.v();
        double d10 = mat.d();
        double d11 = iV;
        y(mat, mat2, Arrays.asList(new aa.d(0.0d, 0.0d), new aa.d(d10, 0.0d), new aa.d(d10, d11), new aa.d(0.0d, d11)), list, hVar);
    }

    public static ByteBuffer d(ByteBuffer byteBuffer, Mat mat) {
        int iJ = aa.a.j(mat.z());
        if (iJ == 0) {
            l8.b.a(byteBuffer, (byte[]) m(mat));
        } else if (iJ == 2 || iJ == 3) {
            byteBuffer.asShortBuffer().put(t(mat));
        } else if (iJ == 4) {
            byteBuffer.asIntBuffer().put(r(mat));
        } else {
            if (iJ != 5) {
                throw new UnsupportedOperationException("Unknown Mat data type" + mat.z());
            }
            l8.b.b(byteBuffer, (float[]) m(mat));
        }
        if (aa.a.j(mat.z()) != 0) {
            byteBuffer.position(byteBuffer.position() + ((int) (mat.y() * mat.j())));
        }
        return byteBuffer;
    }

    public static void e(Mat mat, List list, aa.g gVar, int i10) {
        Imgproc.g(mat, (List) list.stream().map(new Function() { // from class: k8.f
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return i.s((List) obj);
            }
        }).collect(Collectors.toList()), true, gVar, i10);
    }

    public static List f(Mat mat, List list, final int i10) {
        final int iD = mat.d();
        final int iA = mat.a();
        final byte[] bArr = (byte[]) m(mat);
        return (List) list.stream().flatMap(new Function() { // from class: k8.g
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return i.i(bArr, iD, iA, i10, (aa.e) obj);
            }
        }).collect(Collectors.toList());
    }

    public static double[][] g(final byte[] bArr, int i10, int i11, aa.e eVar, int i12) {
        double[][] dArr = new double[(((eVar.f141c - 1) / i12) + 1) * (((eVar.f142f - 1) / i12) + 1)][];
        int i13 = eVar.f140b;
        int i14 = 0;
        while (i13 < eVar.f140b + eVar.f142f) {
            int i15 = eVar.f139a;
            while (i15 < eVar.f139a + eVar.f141c) {
                int i16 = (i13 * i10 * i11) + (i15 * i11);
                dArr[i14] = IntStream.range(i16, i16 + 3).mapToDouble(new IntToDoubleFunction() { // from class: k8.h
                    @Override // java.util.function.IntToDoubleFunction
                    public final double applyAsDouble(int i17) {
                        return i.j(bArr, i17);
                    }
                }).toArray();
                i15 += i12;
                i14++;
            }
            i13 += i12;
        }
        return dArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream i(byte[] bArr, int i10, int i11, int i12, aa.e eVar) {
        return Arrays.stream(g(bArr, i10, i11, eVar, i12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double j(byte[] bArr, int i10) {
        return bArr[i10] & 255;
    }

    public static void k(String str, String str2, Mat mat) {
        String str3;
        l8.c.d(str, String.format("%s: %s %d", str2, mat.toString(), Long.valueOf(mat.y())));
        if (!l8.c.c() || (str3 = l8.c.f13635b) == null) {
            return;
        }
        l(mat, String.format("%s/%s_%d_%d_%s.raw", str3, str2, Integer.valueOf(mat.v()), Integer.valueOf(mat.d()), aa.a.l(mat.z())));
    }

    public static void l(Mat mat, String str) {
        l8.c.d(f12992a, "saveRaw " + str + " : " + mat.toString());
        l8.b.c(o(mat), str);
    }

    public static Object m(Mat mat) {
        int iJ = aa.a.j(mat.z());
        if (iJ == 0) {
            return n(mat);
        }
        if (iJ == 2 || iJ == 3) {
            return t(mat);
        }
        if (iJ == 4) {
            return r(mat);
        }
        if (iJ == 5) {
            return q(mat);
        }
        if (iJ == 6) {
            return p(mat);
        }
        throw new UnsupportedOperationException("Unknown Mat data type" + mat.z());
    }

    public static byte[] n(Mat mat) {
        byte[] bArr = new byte[(int) (mat.y() * ((long) mat.a()))];
        mat.k(0, 0, bArr);
        return bArr;
    }

    public static ByteBuffer o(Mat... matArr) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect((int) (((long) matArr.length) * matArr[0].y() * matArr[0].j()));
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        for (Mat mat : matArr) {
            d(byteBufferAllocateDirect, mat);
        }
        byteBufferAllocateDirect.rewind();
        return byteBufferAllocateDirect;
    }

    public static double[] p(Mat mat) {
        double[] dArr = new double[(int) (mat.y() * ((long) mat.a()))];
        mat.l(0, 0, dArr);
        return dArr;
    }

    public static float[] q(Mat mat) {
        float[] fArr = new float[(int) (mat.y() * ((long) mat.a()))];
        mat.m(0, 0, fArr);
        return fArr;
    }

    public static int[] r(Mat mat) {
        int[] iArr = new int[(int) (mat.y() * ((long) mat.a()))];
        mat.n(0, 0, iArr);
        return iArr;
    }

    public static aa.c s(List list) {
        aa.c cVar = new aa.c();
        cVar.D(list);
        return cVar;
    }

    public static short[] t(Mat mat) {
        short[] sArr = new short[(int) (mat.y() * ((long) mat.a()))];
        mat.o(0, 0, sArr);
        return sArr;
    }

    public static Mat u(Mat mat, List list) {
        Mat mat2 = new Mat();
        v(mat, mat2, list);
        return mat2;
    }

    public static void v(Mat mat, Mat mat2, List list) {
        w(mat, mat2, list, 0);
    }

    public static void w(Mat mat, Mat mat2, List list, int i10) {
        x(mat, mat2, list, null, i10);
    }

    public static void x(Mat mat, Mat mat2, List list, aa.h hVar, int i10) {
        if (hVar == null) {
            hVar = e.u((aa.d[]) list.toArray(new aa.d[list.size()]));
        }
        if (i10 == 270) {
            i10 = -90;
        }
        if (i10 == 90 || i10 == -90) {
            hVar = new aa.h(hVar.f148b, hVar.f147a);
        }
        int i11 = (int) hVar.f148b;
        double d10 = (int) hVar.f147a;
        double d11 = i11;
        y(mat, mat2, e.w(list, i10), Arrays.asList(new aa.d(0.0d, 0.0d), new aa.d(d10, 0.0d), new aa.d(d10, d11), new aa.d(0.0d, d11)), hVar);
    }

    public static void y(Mat mat, Mat mat2, List list, List list2, aa.h hVar) {
        aa.b bVar = new aa.b();
        bVar.D(list);
        aa.b bVar2 = new aa.b();
        bVar2.D(list2);
        Imgproc.j(mat, mat2, Imgproc.c(bVar, bVar2), hVar);
    }

    public static Mat z(Mat mat, List list, aa.h hVar) {
        Mat mat2 = new Mat();
        A(mat, mat2, list, hVar);
        return mat2;
    }
}
