package okhttp3.internal.publicsuffix;

import i9.d;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.o;
import kotlin.io.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.c0;
import kotlin.jvm.internal.r;
import kotlin.sequences.i;
import n8.h0;
import p9.h;
import t9.f;
import t9.k;
import t9.n;

/* JADX INFO: loaded from: classes2.dex */
public final class PublicSuffixDatabase {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f14891e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final byte[] f14892f = {42};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final List f14893g = o.b("*");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final PublicSuffixDatabase f14894h = new PublicSuffixDatabase();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f14895a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CountDownLatch f14896b = new CountDownLatch(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f14897c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f14898d;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String b(byte[] bArr, byte[][] bArr2, int i10) {
            int i11;
            int iD;
            boolean z10;
            int iD2;
            int length = bArr.length;
            int i12 = 0;
            while (i12 < length) {
                int i13 = (i12 + length) / 2;
                while (i13 > -1 && bArr[i13] != 10) {
                    i13--;
                }
                int i14 = i13 + 1;
                int i15 = 1;
                while (true) {
                    i11 = i14 + i15;
                    if (bArr[i11] == 10) {
                        break;
                    }
                    i15++;
                }
                int i16 = i11 - i14;
                int i17 = i10;
                boolean z11 = false;
                int i18 = 0;
                int i19 = 0;
                while (true) {
                    if (z11) {
                        iD = 46;
                        z10 = false;
                    } else {
                        boolean z12 = z11;
                        iD = d.d(bArr2[i17][i18], 255);
                        z10 = z12;
                    }
                    iD2 = iD - d.d(bArr[i14 + i19], 255);
                    if (iD2 != 0) {
                        break;
                    }
                    i19++;
                    i18++;
                    if (i19 == i16) {
                        break;
                    }
                    if (bArr2[i17].length != i18) {
                        z11 = z10;
                    } else {
                        if (i17 == bArr2.length - 1) {
                            break;
                        }
                        i17++;
                        z11 = true;
                        i18 = -1;
                    }
                }
                if (iD2 >= 0) {
                    if (iD2 <= 0) {
                        int i20 = i16 - i19;
                        int length2 = bArr2[i17].length - i18;
                        int length3 = bArr2.length;
                        for (int i21 = i17 + 1; i21 < length3; i21++) {
                            length2 += bArr2[i21].length;
                        }
                        if (length2 >= i20) {
                            if (length2 <= i20) {
                                Charset UTF_8 = StandardCharsets.UTF_8;
                                r.d(UTF_8, "UTF_8");
                                return new String(bArr, i14, i16, UTF_8);
                            }
                        }
                    }
                    i12 = i11 + 1;
                }
                length = i13;
            }
            return null;
        }

        public final PublicSuffixDatabase c() {
            return PublicSuffixDatabase.f14894h;
        }

        private a() {
        }
    }

    private final List b(List list) {
        String str;
        String strB;
        String str2;
        List listH;
        List listH2;
        if (this.f14895a.get() || !this.f14895a.compareAndSet(false, true)) {
            try {
                this.f14896b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            e();
        }
        if (this.f14897c == null) {
            throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
        }
        int size = list.size();
        byte[][] bArr = new byte[size][];
        for (int i10 = 0; i10 < size; i10++) {
            String str3 = (String) list.get(i10);
            Charset UTF_8 = StandardCharsets.UTF_8;
            r.d(UTF_8, "UTF_8");
            byte[] bytes = str3.getBytes(UTF_8);
            r.d(bytes, "this as java.lang.String).getBytes(charset)");
            bArr[i10] = bytes;
        }
        int i11 = 0;
        while (true) {
            str = null;
            if (i11 >= size) {
                strB = null;
                break;
            }
            a aVar = f14891e;
            byte[] bArr2 = this.f14897c;
            if (bArr2 == null) {
                r.r("publicSuffixListBytes");
                bArr2 = null;
            }
            strB = aVar.b(bArr2, bArr, i11);
            if (strB != null) {
                break;
            }
            i11++;
        }
        if (size > 1) {
            byte[][] bArr3 = (byte[][]) bArr.clone();
            int length = bArr3.length - 1;
            for (int i12 = 0; i12 < length; i12++) {
                bArr3[i12] = f14892f;
                a aVar2 = f14891e;
                byte[] bArr4 = this.f14897c;
                if (bArr4 == null) {
                    r.r("publicSuffixListBytes");
                    bArr4 = null;
                }
                String strB2 = aVar2.b(bArr4, bArr3, i12);
                if (strB2 != null) {
                    str2 = strB2;
                    break;
                }
            }
            str2 = null;
        } else {
            str2 = null;
        }
        if (str2 != null) {
            int i13 = size - 1;
            int i14 = 0;
            while (true) {
                if (i14 >= i13) {
                    break;
                }
                a aVar3 = f14891e;
                byte[] bArr5 = this.f14898d;
                if (bArr5 == null) {
                    r.r("publicSuffixExceptionListBytes");
                    bArr5 = null;
                }
                String strB3 = aVar3.b(bArr5, bArr, i14);
                if (strB3 != null) {
                    str = strB3;
                    break;
                }
                i14++;
            }
        }
        if (str != null) {
            return kotlin.text.r.t0('!' + str, new char[]{'.'}, false, 0, 6, null);
        }
        if (strB == null && str2 == null) {
            return f14893g;
        }
        if (strB == null || (listH = kotlin.text.r.t0(strB, new char[]{'.'}, false, 0, 6, null)) == null) {
            listH = o.h();
        }
        if (str2 == null || (listH2 = kotlin.text.r.t0(str2, new char[]{'.'}, false, 0, 6, null)) == null) {
            listH2 = o.h();
        }
        return listH.size() > listH2.size() ? listH : listH2;
    }

    private final void d() {
        try {
            c0 c0Var = new c0();
            c0 c0Var2 = new c0();
            InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
            if (resourceAsStream == null) {
                return;
            }
            f fVarB = n.b(new k(n.e(resourceAsStream)));
            try {
                c0Var.element = fVarB.U(fVarB.K());
                c0Var2.element = fVarB.U(fVarB.K());
                h0 h0Var = h0.INSTANCE;
                c.a(fVarB, null);
                synchronized (this) {
                    Object obj = c0Var.element;
                    r.b(obj);
                    this.f14897c = (byte[]) obj;
                    Object obj2 = c0Var2.element;
                    r.b(obj2);
                    this.f14898d = (byte[]) obj2;
                }
            } finally {
            }
        } finally {
            this.f14896b.countDown();
        }
    }

    private final void e() {
        boolean z10 = false;
        while (true) {
            try {
                try {
                    d();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z10 = true;
                } catch (IOException e10) {
                    h.f15249a.g().j("Failed to read public suffix list", 5, e10);
                    if (z10) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private final List f(String str) {
        List listT0 = kotlin.text.r.t0(str, new char[]{'.'}, false, 0, 6, null);
        return r.a(o.c0(listT0), "") ? o.O(listT0, 1) : listT0;
    }

    public final String c(String domain) {
        int size;
        int size2;
        r.e(domain, "domain");
        String unicodeDomain = IDN.toUnicode(domain);
        r.d(unicodeDomain, "unicodeDomain");
        List listF = f(unicodeDomain);
        List listB = b(listF);
        if (listF.size() == listB.size() && ((String) listB.get(0)).charAt(0) != '!') {
            return null;
        }
        if (((String) listB.get(0)).charAt(0) == '!') {
            size = listF.size();
            size2 = listB.size();
        } else {
            size = listF.size();
            size2 = listB.size() + 1;
        }
        return i.n(i.h(o.L(f(domain)), size - size2), ".", null, null, 0, null, null, 62, null);
    }
}
