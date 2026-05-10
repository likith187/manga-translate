package i9;

import com.oplus.aiunit.download.core.ErrorCode;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.collections.h0;
import kotlin.collections.i;
import kotlin.collections.j0;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlin.text.n;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import n8.e;
import okhttp3.a0;
import okhttp3.b0;
import okhttp3.c0;
import okhttp3.q;
import okhttp3.t;
import okhttp3.u;
import okhttp3.x;
import t9.f;
import t9.g;
import t9.q;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    /* JADX INFO: renamed from: a */
    public static final byte[] f12667a;

    /* JADX INFO: renamed from: b */
    public static final t f12668b = t.f14956b.g(new String[0]);

    /* JADX INFO: renamed from: c */
    public static final c0 f12669c;

    /* JADX INFO: renamed from: d */
    public static final a0 f12670d;

    /* JADX INFO: renamed from: e */
    private static final q f12671e;

    /* JADX INFO: renamed from: f */
    public static final TimeZone f12672f;

    /* JADX INFO: renamed from: g */
    private static final n f12673g;

    /* JADX INFO: renamed from: h */
    public static final boolean f12674h;

    /* JADX INFO: renamed from: i */
    public static final String f12675i;

    static {
        byte[] bArr = new byte[0];
        f12667a = bArr;
        f12669c = c0.a.c(c0.f14692a, bArr, null, 1, null);
        f12670d = a0.a.b(a0.f14656a, bArr, null, 0, 0, 7, null);
        q.a aVar = q.f15773c;
        g.a aVar2 = g.Companion;
        f12671e = aVar.d(aVar2.b("efbbbf"), aVar2.b("feff"), aVar2.b("fffe"), aVar2.b("0000ffff"), aVar2.b("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        r.b(timeZone);
        f12672f = timeZone;
        f12673g = new n("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        f12674h = false;
        String name = x.class.getName();
        r.d(name, "OkHttpClient::class.java.name");
        f12675i = kotlin.text.r.o0(kotlin.text.r.n0(name, "okhttp3."), "Client");
    }

    public static final int A(String str, int i10, int i11) {
        r.e(str, "<this>");
        int i12 = i11 - 1;
        if (i10 <= i12) {
            while (true) {
                char cCharAt = str.charAt(i12);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i12 + 1;
                }
                if (i12 == i10) {
                    break;
                }
                i12--;
            }
        }
        return i10;
    }

    public static /* synthetic */ int B(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return A(str, i10, i11);
    }

    public static final int C(String str, int i10) {
        r.e(str, "<this>");
        int length = str.length();
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt != ' ' && cCharAt != '\t') {
                return i10;
            }
            i10++;
        }
        return str.length();
    }

    public static final String[] D(String[] strArr, String[] other, Comparator comparator) {
        r.e(strArr, "<this>");
        r.e(other, "other");
        r.e(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = other.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                if (comparator.compare(str, other[i10]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i10++;
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final boolean E(Socket socket, f source) {
        r.e(socket, "<this>");
        r.e(source, "source");
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                boolean z10 = !source.S();
                socket.setSoTimeout(soTimeout);
                return z10;
            } catch (Throwable th) {
                socket.setSoTimeout(soTimeout);
                throw th;
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final boolean F(String name) {
        r.e(name, "name");
        return kotlin.text.r.v(name, "Authorization", true) || kotlin.text.r.v(name, "Cookie", true) || kotlin.text.r.v(name, "Proxy-Authorization", true) || kotlin.text.r.v(name, "Set-Cookie", true);
    }

    public static final int G(char c10) {
        if ('0' <= c10 && c10 < ':') {
            return c10 - '0';
        }
        if ('a' <= c10 && c10 < 'g') {
            return c10 - 'W';
        }
        if ('A' > c10 || c10 >= 'G') {
            return -1;
        }
        return c10 - '7';
    }

    public static final int H(f fVar) {
        r.e(fVar, "<this>");
        return d(fVar.C0(), 255) | (d(fVar.C0(), 255) << 16) | (d(fVar.C0(), 255) << 8);
    }

    public static final int I(t9.d dVar, byte b10) throws EOFException {
        r.e(dVar, "<this>");
        int i10 = 0;
        while (!dVar.S() && dVar.D(0L) == b10) {
            i10++;
            dVar.C0();
        }
        return i10;
    }

    public static final boolean J(t9.a0 a0Var, int i10, TimeUnit timeUnit) {
        r.e(a0Var, "<this>");
        r.e(timeUnit, "timeUnit");
        long jNanoTime = System.nanoTime();
        long jC = a0Var.f().e() ? a0Var.f().c() - jNanoTime : Long.MAX_VALUE;
        a0Var.f().d(Math.min(jC, timeUnit.toNanos(i10)) + jNanoTime);
        try {
            t9.d dVar = new t9.d();
            while (a0Var.i0(dVar, 8192L) != -1) {
                dVar.i();
            }
            if (jC == Long.MAX_VALUE) {
                a0Var.f().a();
            } else {
                a0Var.f().d(jNanoTime + jC);
            }
            return true;
        } catch (InterruptedIOException unused) {
            if (jC == Long.MAX_VALUE) {
                a0Var.f().a();
            } else {
                a0Var.f().d(jNanoTime + jC);
            }
            return false;
        } catch (Throwable th) {
            if (jC == Long.MAX_VALUE) {
                a0Var.f().a();
            } else {
                a0Var.f().d(jNanoTime + jC);
            }
            throw th;
        }
    }

    public static final ThreadFactory K(final String name, final boolean z10) {
        r.e(name, "name");
        return new ThreadFactory() { // from class: i9.c
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return d.L(name, z10, runnable);
            }
        };
    }

    public static final Thread L(String name, boolean z10, Runnable runnable) {
        r.e(name, "$name");
        Thread thread = new Thread(runnable, name);
        thread.setDaemon(z10);
        return thread;
    }

    public static final List M(t tVar) {
        r.e(tVar, "<this>");
        b9.c cVarL = b9.d.l(0, tVar.size());
        ArrayList arrayList = new ArrayList(o.r(cVarL, 10));
        Iterator it = cVarL.iterator();
        while (it.hasNext()) {
            int iA = ((h0) it).a();
            arrayList.add(new o9.c(tVar.c(iA), tVar.e(iA)));
        }
        return arrayList;
    }

    public static final t N(List list) {
        r.e(list, "<this>");
        t.a aVar = new t.a();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            o9.c cVar = (o9.c) it.next();
            aVar.c(cVar.a().utf8(), cVar.b().utf8());
        }
        return aVar.d();
    }

    public static final String O(u uVar, boolean z10) {
        String strH;
        r.e(uVar, "<this>");
        if (kotlin.text.r.K(uVar.h(), ":", false, 2, null)) {
            strH = AbstractJsonLexerKt.BEGIN_LIST + uVar.h() + AbstractJsonLexerKt.END_LIST;
        } else {
            strH = uVar.h();
        }
        if (!z10 && uVar.m() == u.f14959k.c(uVar.q())) {
            return strH;
        }
        return strH + ':' + uVar.m();
    }

    public static /* synthetic */ String P(u uVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return O(uVar, z10);
    }

    public static final List Q(List list) {
        r.e(list, "<this>");
        List listUnmodifiableList = Collections.unmodifiableList(o.t0(list));
        r.d(listUnmodifiableList, "unmodifiableList(toMutableList())");
        return listUnmodifiableList;
    }

    public static final Map R(Map map) {
        r.e(map, "<this>");
        if (map.isEmpty()) {
            return j0.h();
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(map));
        r.d(mapUnmodifiableMap, "{\n    Collections.unmodi…(LinkedHashMap(this))\n  }");
        return mapUnmodifiableMap;
    }

    public static final long S(String str, long j10) {
        r.e(str, "<this>");
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j10;
        }
    }

    public static final int T(String str, int i10) {
        if (str != null) {
            try {
                long j10 = Long.parseLong(str);
                if (j10 > 2147483647L) {
                    return Integer.MAX_VALUE;
                }
                if (j10 < 0) {
                    return 0;
                }
                return (int) j10;
            } catch (NumberFormatException unused) {
            }
        }
        return i10;
    }

    public static final String U(String str, int i10, int i11) {
        r.e(str, "<this>");
        int iY = y(str, i10, i11);
        String strSubstring = str.substring(iY, A(str, iY, i11));
        r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String V(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return U(str, i10, i11);
    }

    public static final Throwable W(Exception exc, List suppressed) {
        r.e(exc, "<this>");
        r.e(suppressed, "suppressed");
        Iterator it = suppressed.iterator();
        while (it.hasNext()) {
            e.a(exc, (Exception) it.next());
        }
        return exc;
    }

    public static final void X(t9.e eVar, int i10) {
        r.e(eVar, "<this>");
        eVar.T((i10 >>> 16) & 255);
        eVar.T((i10 >>> 8) & 255);
        eVar.T(i10 & 255);
    }

    public static final void c(List list, Object obj) {
        r.e(list, "<this>");
        if (list.contains(obj)) {
            return;
        }
        list.add(obj);
    }

    public static final int d(byte b10, int i10) {
        return b10 & i10;
    }

    public static final int e(short s10, int i10) {
        return s10 & i10;
    }

    public static final long f(int i10, long j10) {
        return ((long) i10) & j10;
    }

    public static final q.c g(final okhttp3.q qVar) {
        r.e(qVar, "<this>");
        return new q.c() { // from class: i9.b
            @Override // okhttp3.q.c
            public final okhttp3.q a(okhttp3.e eVar) {
                return d.h(qVar, eVar);
            }
        };
    }

    public static final okhttp3.q h(okhttp3.q this_asFactory, okhttp3.e it) {
        r.e(this_asFactory, "$this_asFactory");
        r.e(it, "it");
        return this_asFactory;
    }

    public static final boolean i(String str) {
        r.e(str, "<this>");
        return f12673g.matches(str);
    }

    public static final boolean j(u uVar, u other) {
        r.e(uVar, "<this>");
        r.e(other, "other");
        return r.a(uVar.h(), other.h()) && uVar.m() == other.m() && r.a(uVar.q(), other.q());
    }

    public static final void k(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final void l(Closeable closeable) {
        r.e(closeable, "<this>");
        try {
            closeable.close();
        } catch (RuntimeException e10) {
            throw e10;
        } catch (Exception unused) {
        }
    }

    public static final void m(Socket socket) {
        r.e(socket, "<this>");
        try {
            socket.close();
        } catch (AssertionError e10) {
            throw e10;
        } catch (RuntimeException e11) {
            if (!r.a(e11.getMessage(), "bio == null")) {
                throw e11;
            }
        } catch (Exception unused) {
        }
    }

    public static final String[] n(String[] strArr, String value) {
        r.e(strArr, "<this>");
        r.e(value, "value");
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length + 1);
        r.d(objArrCopyOf, "copyOf(this, newSize)");
        String[] strArr2 = (String[]) objArrCopyOf;
        strArr2[i.G(strArr2)] = value;
        return strArr2;
    }

    public static final int o(String str, char c10, int i10, int i11) {
        r.e(str, "<this>");
        while (i10 < i11) {
            if (str.charAt(i10) == c10) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static final int p(String str, String delimiters, int i10, int i11) {
        r.e(str, "<this>");
        r.e(delimiters, "delimiters");
        while (i10 < i11) {
            if (kotlin.text.r.J(delimiters, str.charAt(i10), false, 2, null)) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static /* synthetic */ int q(String str, char c10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = str.length();
        }
        return o(str, c10, i10, i11);
    }

    public static final boolean r(t9.a0 a0Var, int i10, TimeUnit timeUnit) {
        r.e(a0Var, "<this>");
        r.e(timeUnit, "timeUnit");
        try {
            return J(a0Var, i10, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static final String s(String format, Object... args) {
        r.e(format, "format");
        r.e(args, "args");
        kotlin.jvm.internal.h0 h0Var = kotlin.jvm.internal.h0.INSTANCE;
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(args, args.length);
        String str = String.format(locale, format, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        r.d(str, "format(locale, format, *args)");
        return str;
    }

    public static final boolean t(String[] strArr, String[] strArr2, Comparator comparator) {
        r.e(strArr, "<this>");
        r.e(comparator, "comparator");
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            for (String str : strArr) {
                Iterator itA = kotlin.jvm.internal.b.a(strArr2);
                while (itA.hasNext()) {
                    if (comparator.compare(str, (String) itA.next()) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final long u(b0 b0Var) {
        r.e(b0Var, "<this>");
        String strA = b0Var.N().a("Content-Length");
        if (strA != null) {
            return S(strA, -1L);
        }
        return -1L;
    }

    public static final List v(Object... elements) {
        r.e(elements, "elements");
        Object[] objArr = (Object[]) elements.clone();
        List listUnmodifiableList = Collections.unmodifiableList(o.k(Arrays.copyOf(objArr, objArr.length)));
        r.d(listUnmodifiableList, "unmodifiableList(listOf(*elements.clone()))");
        return listUnmodifiableList;
    }

    public static final int w(String[] strArr, String value, Comparator comparator) {
        r.e(strArr, "<this>");
        r.e(value, "value");
        r.e(comparator, "comparator");
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (comparator.compare(strArr[i10], value) == 0) {
                return i10;
            }
        }
        return -1;
    }

    public static final int x(String str) {
        r.e(str, "<this>");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (r.f(cCharAt, 31) <= 0 || r.f(cCharAt, ErrorCode.CODE_SERVICE_DIED) >= 0) {
                return i10;
            }
        }
        return -1;
    }

    public static final int y(String str, int i10, int i11) {
        r.e(str, "<this>");
        while (i10 < i11) {
            char cCharAt = str.charAt(i10);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static /* synthetic */ int z(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return y(str, i10, i11);
    }
}
