package androidx.profileinstaller;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final byte[] f3034a = {112, 114, 111, 0};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final byte[] f3035b = {112, 114, 109, 0};

    private static void A(byte[] bArr, int i10, int i11, d dVar) {
        int iM = m(i10, i11, dVar.f3022g);
        int i12 = iM / 8;
        bArr[i12] = (byte) ((1 << (iM % 8)) | bArr[i12]);
    }

    private static void B(InputStream inputStream) {
        e.h(inputStream);
        int iJ = e.j(inputStream);
        if (iJ == 6 || iJ == 7) {
            return;
        }
        while (iJ > 0) {
            e.j(inputStream);
            for (int iJ2 = e.j(inputStream); iJ2 > 0; iJ2--) {
                e.h(inputStream);
            }
            iJ--;
        }
    }

    static boolean C(OutputStream outputStream, byte[] bArr, d[] dVarArr) throws IOException {
        if (Arrays.equals(bArr, o.f3047a)) {
            P(outputStream, dVarArr);
            return true;
        }
        if (Arrays.equals(bArr, o.f3048b)) {
            O(outputStream, dVarArr);
            return true;
        }
        if (Arrays.equals(bArr, o.f3050d)) {
            M(outputStream, dVarArr);
            return true;
        }
        if (Arrays.equals(bArr, o.f3049c)) {
            N(outputStream, dVarArr);
            return true;
        }
        if (!Arrays.equals(bArr, o.f3051e)) {
            return false;
        }
        L(outputStream, dVarArr);
        return true;
    }

    private static void D(OutputStream outputStream, d dVar) throws IOException {
        int[] iArr = dVar.f3023h;
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = iArr[i10];
            e.p(outputStream, i12 - i11);
            i10++;
            i11 = i12;
        }
    }

    private static p E(d[] dVarArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            e.p(byteArrayOutputStream, dVarArr.length);
            int i10 = 2;
            for (d dVar : dVarArr) {
                e.q(byteArrayOutputStream, dVar.f3018c);
                e.q(byteArrayOutputStream, dVar.f3019d);
                e.q(byteArrayOutputStream, dVar.f3022g);
                String strJ = j(dVar.f3016a, dVar.f3017b, o.f3047a);
                int iK = e.k(strJ);
                e.p(byteArrayOutputStream, iK);
                i10 = i10 + 14 + iK;
                e.n(byteArrayOutputStream, strJ);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (i10 == byteArray.length) {
                p pVar = new p(f.DEX_FILES, i10, byteArray, false);
                byteArrayOutputStream.close();
                return pVar;
            }
            throw e.c("Expected size " + i10 + ", does not match actual size " + byteArray.length);
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static void F(OutputStream outputStream, byte[] bArr) throws IOException {
        outputStream.write(f3034a);
        outputStream.write(bArr);
    }

    private static void G(OutputStream outputStream, d dVar) throws IOException {
        K(outputStream, dVar);
        D(outputStream, dVar);
        I(outputStream, dVar);
    }

    private static void H(OutputStream outputStream, d dVar, String str) throws IOException {
        e.p(outputStream, e.k(str));
        e.p(outputStream, dVar.f3020e);
        e.q(outputStream, dVar.f3021f);
        e.q(outputStream, dVar.f3018c);
        e.q(outputStream, dVar.f3022g);
        e.n(outputStream, str);
    }

    private static void I(OutputStream outputStream, d dVar) throws IOException {
        byte[] bArr = new byte[k(dVar.f3022g)];
        for (Map.Entry entry : dVar.f3024i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            if ((iIntValue2 & 2) != 0) {
                A(bArr, 2, iIntValue, dVar);
            }
            if ((iIntValue2 & 4) != 0) {
                A(bArr, 4, iIntValue, dVar);
            }
        }
        outputStream.write(bArr);
    }

    private static void J(OutputStream outputStream, int i10, d dVar) throws IOException {
        byte[] bArr = new byte[l(i10, dVar.f3022g)];
        for (Map.Entry entry : dVar.f3024i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            int i11 = 0;
            for (int i12 = 1; i12 <= 4; i12 <<= 1) {
                if (i12 != 1 && (i12 & i10) != 0) {
                    if ((i12 & iIntValue2) == i12) {
                        int i13 = (dVar.f3022g * i11) + iIntValue;
                        int i14 = i13 / 8;
                        bArr[i14] = (byte) ((1 << (i13 % 8)) | bArr[i14]);
                    }
                    i11++;
                }
            }
        }
        outputStream.write(bArr);
    }

    private static void K(OutputStream outputStream, d dVar) throws IOException {
        int i10 = 0;
        for (Map.Entry entry : dVar.f3024i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                e.p(outputStream, iIntValue - i10);
                e.p(outputStream, 0);
                i10 = iIntValue;
            }
        }
    }

    private static void L(OutputStream outputStream, d[] dVarArr) throws IOException {
        e.p(outputStream, dVarArr.length);
        for (d dVar : dVarArr) {
            String strJ = j(dVar.f3016a, dVar.f3017b, o.f3051e);
            e.p(outputStream, e.k(strJ));
            e.p(outputStream, dVar.f3024i.size());
            e.p(outputStream, dVar.f3023h.length);
            e.q(outputStream, dVar.f3018c);
            e.n(outputStream, strJ);
            Iterator it = dVar.f3024i.keySet().iterator();
            while (it.hasNext()) {
                e.p(outputStream, ((Integer) it.next()).intValue());
            }
            for (int i10 : dVar.f3023h) {
                e.p(outputStream, i10);
            }
        }
    }

    private static void M(OutputStream outputStream, d[] dVarArr) throws IOException {
        e.r(outputStream, dVarArr.length);
        for (d dVar : dVarArr) {
            int size = dVar.f3024i.size() * 4;
            String strJ = j(dVar.f3016a, dVar.f3017b, o.f3050d);
            e.p(outputStream, e.k(strJ));
            e.p(outputStream, dVar.f3023h.length);
            e.q(outputStream, size);
            e.q(outputStream, dVar.f3018c);
            e.n(outputStream, strJ);
            Iterator it = dVar.f3024i.keySet().iterator();
            while (it.hasNext()) {
                e.p(outputStream, ((Integer) it.next()).intValue());
                e.p(outputStream, 0);
            }
            for (int i10 : dVar.f3023h) {
                e.p(outputStream, i10);
            }
        }
    }

    private static void N(OutputStream outputStream, d[] dVarArr) throws IOException {
        byte[] bArrB = b(dVarArr, o.f3049c);
        e.r(outputStream, dVarArr.length);
        e.m(outputStream, bArrB);
    }

    private static void O(OutputStream outputStream, d[] dVarArr) throws IOException {
        byte[] bArrB = b(dVarArr, o.f3048b);
        e.r(outputStream, dVarArr.length);
        e.m(outputStream, bArrB);
    }

    private static void P(OutputStream outputStream, d[] dVarArr) throws IOException {
        Q(outputStream, dVarArr);
    }

    private static void Q(OutputStream outputStream, d[] dVarArr) throws IOException {
        int length;
        ArrayList arrayList = new ArrayList(3);
        ArrayList arrayList2 = new ArrayList(3);
        arrayList.add(E(dVarArr));
        arrayList.add(c(dVarArr));
        arrayList.add(d(dVarArr));
        long length2 = ((long) o.f3047a.length) + ((long) f3034a.length) + 4 + ((long) (arrayList.size() * 16));
        e.q(outputStream, arrayList.size());
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            p pVar = (p) arrayList.get(i10);
            e.q(outputStream, pVar.f3054a.getValue());
            e.q(outputStream, length2);
            if (pVar.f3057d) {
                byte[] bArr = pVar.f3056c;
                long length3 = bArr.length;
                byte[] bArrB = e.b(bArr);
                arrayList2.add(bArrB);
                e.q(outputStream, bArrB.length);
                e.q(outputStream, length3);
                length = bArrB.length;
            } else {
                arrayList2.add(pVar.f3056c);
                e.q(outputStream, pVar.f3056c.length);
                e.q(outputStream, 0L);
                length = pVar.f3056c.length;
            }
            length2 += (long) length;
        }
        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
            outputStream.write((byte[]) arrayList2.get(i11));
        }
    }

    private static int a(d dVar) {
        Iterator it = dVar.f3024i.entrySet().iterator();
        int iIntValue = 0;
        while (it.hasNext()) {
            iIntValue |= ((Integer) ((Map.Entry) it.next()).getValue()).intValue();
        }
        return iIntValue;
    }

    private static byte[] b(d[] dVarArr, byte[] bArr) throws IOException {
        int i10 = 0;
        int iK = 0;
        for (d dVar : dVarArr) {
            iK += e.k(j(dVar.f3016a, dVar.f3017b, bArr)) + 16 + (dVar.f3020e * 2) + dVar.f3021f + k(dVar.f3022g);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(iK);
        if (Arrays.equals(bArr, o.f3049c)) {
            int length = dVarArr.length;
            while (i10 < length) {
                d dVar2 = dVarArr[i10];
                H(byteArrayOutputStream, dVar2, j(dVar2.f3016a, dVar2.f3017b, bArr));
                G(byteArrayOutputStream, dVar2);
                i10++;
            }
        } else {
            for (d dVar3 : dVarArr) {
                H(byteArrayOutputStream, dVar3, j(dVar3.f3016a, dVar3.f3017b, bArr));
            }
            int length2 = dVarArr.length;
            while (i10 < length2) {
                G(byteArrayOutputStream, dVarArr[i10]);
                i10++;
            }
        }
        if (byteArrayOutputStream.size() == iK) {
            return byteArrayOutputStream.toByteArray();
        }
        throw e.c("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + iK);
    }

    private static p c(d[] dVarArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        for (int i11 = 0; i11 < dVarArr.length; i11++) {
            try {
                d dVar = dVarArr[i11];
                e.p(byteArrayOutputStream, i11);
                e.p(byteArrayOutputStream, dVar.f3020e);
                i10 = i10 + 4 + (dVar.f3020e * 2);
                D(byteArrayOutputStream, dVar);
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i10 == byteArray.length) {
            p pVar = new p(f.CLASSES, i10, byteArray, true);
            byteArrayOutputStream.close();
            return pVar;
        }
        throw e.c("Expected size " + i10 + ", does not match actual size " + byteArray.length);
    }

    private static p d(d[] dVarArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        for (int i11 = 0; i11 < dVarArr.length; i11++) {
            try {
                d dVar = dVarArr[i11];
                int iA = a(dVar);
                byte[] bArrE = e(iA, dVar);
                byte[] bArrF = f(dVar);
                e.p(byteArrayOutputStream, i11);
                int length = bArrE.length + 2 + bArrF.length;
                e.q(byteArrayOutputStream, length);
                e.p(byteArrayOutputStream, iA);
                byteArrayOutputStream.write(bArrE);
                byteArrayOutputStream.write(bArrF);
                i10 = i10 + 6 + length;
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i10 == byteArray.length) {
            p pVar = new p(f.METHODS, i10, byteArray, true);
            byteArrayOutputStream.close();
            return pVar;
        }
        throw e.c("Expected size " + i10 + ", does not match actual size " + byteArray.length);
    }

    private static byte[] e(int i10, d dVar) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            J(byteArrayOutputStream, i10, dVar);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static byte[] f(d dVar) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            K(byteArrayOutputStream, dVar);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String g(String str, String str2) {
        return "!".equals(str2) ? str.replace(":", "!") : ":".equals(str2) ? str.replace("!", ":") : str;
    }

    private static String h(String str) {
        int iIndexOf = str.indexOf("!");
        if (iIndexOf < 0) {
            iIndexOf = str.indexOf(":");
        }
        return iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
    }

    private static d i(d[] dVarArr, String str) {
        if (dVarArr.length <= 0) {
            return null;
        }
        String strH = h(str);
        for (int i10 = 0; i10 < dVarArr.length; i10++) {
            if (dVarArr[i10].f3017b.equals(strH)) {
                return dVarArr[i10];
            }
        }
        return null;
    }

    private static String j(String str, String str2, byte[] bArr) {
        String strA = o.a(bArr);
        if (str.length() <= 0) {
            return g(str2, strA);
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (str2.contains("!") || str2.contains(":")) {
            return g(str2, strA);
        }
        if (str2.endsWith(".apk")) {
            return str2;
        }
        return str + o.a(bArr) + str2;
    }

    private static int k(int i10) {
        return z(i10 * 2) / 8;
    }

    private static int l(int i10, int i11) {
        return z(Integer.bitCount(i10 & (-2)) * i11) / 8;
    }

    private static int m(int i10, int i11, int i12) {
        if (i10 == 1) {
            throw e.c("HOT methods are not stored in the bitmap");
        }
        if (i10 == 2) {
            return i11;
        }
        if (i10 == 4) {
            return i11 + i12;
        }
        throw e.c("Unexpected flag: " + i10);
    }

    private static int[] n(InputStream inputStream, int i10) {
        int[] iArr = new int[i10];
        int iH = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            iH += e.h(inputStream);
            iArr[i11] = iH;
        }
        return iArr;
    }

    private static int o(BitSet bitSet, int i10, int i11) {
        int i12 = bitSet.get(m(2, i10, i11)) ? 2 : 0;
        return bitSet.get(m(4, i10, i11)) ? i12 | 4 : i12;
    }

    static byte[] p(InputStream inputStream, byte[] bArr) {
        if (Arrays.equals(bArr, e.d(inputStream, bArr.length))) {
            return e.d(inputStream, o.f3048b.length);
        }
        throw e.c("Invalid magic");
    }

    private static void q(InputStream inputStream, d dVar) {
        int iAvailable = inputStream.available() - dVar.f3021f;
        int iH = 0;
        while (inputStream.available() > iAvailable) {
            iH += e.h(inputStream);
            dVar.f3024i.put(Integer.valueOf(iH), 1);
            for (int iH2 = e.h(inputStream); iH2 > 0; iH2--) {
                B(inputStream);
            }
        }
        if (inputStream.available() != iAvailable) {
            throw e.c("Read too much data during profile line parse");
        }
    }

    static d[] r(InputStream inputStream, byte[] bArr, byte[] bArr2, d[] dVarArr) {
        if (Arrays.equals(bArr, o.f3052f)) {
            if (Arrays.equals(o.f3047a, bArr2)) {
                throw e.c("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
            }
            return s(inputStream, bArr, dVarArr);
        }
        if (Arrays.equals(bArr, o.f3053g)) {
            return u(inputStream, bArr2, dVarArr);
        }
        throw e.c("Unsupported meta version");
    }

    static d[] s(InputStream inputStream, byte[] bArr, d[] dVarArr) throws IOException {
        if (!Arrays.equals(bArr, o.f3052f)) {
            throw e.c("Unsupported meta version");
        }
        int iJ = e.j(inputStream);
        byte[] bArrE = e.e(inputStream, (int) e.i(inputStream), (int) e.i(inputStream));
        if (inputStream.read() > 0) {
            throw e.c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrE);
        try {
            d[] dVarArrT = t(byteArrayInputStream, iJ, dVarArr);
            byteArrayInputStream.close();
            return dVarArrT;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static d[] t(InputStream inputStream, int i10, d[] dVarArr) {
        if (inputStream.available() == 0) {
            return new d[0];
        }
        if (i10 != dVarArr.length) {
            throw e.c("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i10];
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int iH = e.h(inputStream);
            iArr[i11] = e.h(inputStream);
            strArr[i11] = e.f(inputStream, iH);
        }
        for (int i12 = 0; i12 < i10; i12++) {
            d dVar = dVarArr[i12];
            if (!dVar.f3017b.equals(strArr[i12])) {
                throw e.c("Order of dexfiles in metadata did not match baseline");
            }
            int i13 = iArr[i12];
            dVar.f3020e = i13;
            dVar.f3023h = n(inputStream, i13);
        }
        return dVarArr;
    }

    static d[] u(InputStream inputStream, byte[] bArr, d[] dVarArr) throws IOException {
        int iH = e.h(inputStream);
        byte[] bArrE = e.e(inputStream, (int) e.i(inputStream), (int) e.i(inputStream));
        if (inputStream.read() > 0) {
            throw e.c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrE);
        try {
            d[] dVarArrV = v(byteArrayInputStream, bArr, iH, dVarArr);
            byteArrayInputStream.close();
            return dVarArrV;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static d[] v(InputStream inputStream, byte[] bArr, int i10, d[] dVarArr) {
        if (inputStream.available() == 0) {
            return new d[0];
        }
        if (i10 != dVarArr.length) {
            throw e.c("Mismatched number of dex files found in metadata");
        }
        for (int i11 = 0; i11 < i10; i11++) {
            e.h(inputStream);
            String strF = e.f(inputStream, e.h(inputStream));
            long jI = e.i(inputStream);
            int iH = e.h(inputStream);
            d dVarI = i(dVarArr, strF);
            if (dVarI == null) {
                throw e.c("Missing profile key: " + strF);
            }
            dVarI.f3019d = jI;
            int[] iArrN = n(inputStream, iH);
            if (Arrays.equals(bArr, o.f3051e)) {
                dVarI.f3020e = iH;
                dVarI.f3023h = iArrN;
            }
        }
        return dVarArr;
    }

    private static void w(InputStream inputStream, d dVar) {
        BitSet bitSetValueOf = BitSet.valueOf(e.d(inputStream, e.a(dVar.f3022g * 2)));
        int i10 = 0;
        while (true) {
            int i11 = dVar.f3022g;
            if (i10 >= i11) {
                return;
            }
            int iO = o(bitSetValueOf, i10, i11);
            if (iO != 0) {
                Integer num = (Integer) dVar.f3024i.get(Integer.valueOf(i10));
                if (num == null) {
                    num = 0;
                }
                dVar.f3024i.put(Integer.valueOf(i10), Integer.valueOf(iO | num.intValue()));
            }
            i10++;
        }
    }

    static d[] x(InputStream inputStream, byte[] bArr, String str) throws IOException {
        if (!Arrays.equals(bArr, o.f3048b)) {
            throw e.c("Unsupported version");
        }
        int iJ = e.j(inputStream);
        byte[] bArrE = e.e(inputStream, (int) e.i(inputStream), (int) e.i(inputStream));
        if (inputStream.read() > 0) {
            throw e.c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrE);
        try {
            d[] dVarArrY = y(byteArrayInputStream, str, iJ);
            byteArrayInputStream.close();
            return dVarArrY;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static d[] y(InputStream inputStream, String str, int i10) {
        if (inputStream.available() == 0) {
            return new d[0];
        }
        d[] dVarArr = new d[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int iH = e.h(inputStream);
            int iH2 = e.h(inputStream);
            dVarArr[i11] = new d(str, e.f(inputStream, iH), e.i(inputStream), 0L, iH2, (int) e.i(inputStream), (int) e.i(inputStream), new int[iH2], new TreeMap());
        }
        for (int i12 = 0; i12 < i10; i12++) {
            d dVar = dVarArr[i12];
            q(inputStream, dVar);
            dVar.f3023h = n(inputStream, dVar.f3020e);
            w(inputStream, dVar);
        }
        return dVarArr;
    }

    private static int z(int i10) {
        return (i10 + 7) & (-8);
    }
}
