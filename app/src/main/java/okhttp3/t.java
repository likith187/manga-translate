package okhttp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class t implements Iterable, x8.a {

    /* JADX INFO: renamed from: b */
    public static final b f14956b = new b(null);

    /* JADX INFO: renamed from: a */
    private final String[] f14957a;

    public static final class a {

        /* JADX INFO: renamed from: a */
        private final List f14958a = new ArrayList(20);

        public final a a(String name, String value) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(value, "value");
            b bVar = t.f14956b;
            bVar.d(name);
            bVar.e(value, name);
            c(name, value);
            return this;
        }

        public final a b(String line) {
            kotlin.jvm.internal.r.e(line, "line");
            int iV = kotlin.text.r.V(line, ':', 1, false, 4, null);
            if (iV != -1) {
                String strSubstring = line.substring(0, iV);
                kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                String strSubstring2 = line.substring(iV + 1);
                kotlin.jvm.internal.r.d(strSubstring2, "this as java.lang.String).substring(startIndex)");
                c(strSubstring, strSubstring2);
            } else if (line.charAt(0) == ':') {
                String strSubstring3 = line.substring(1);
                kotlin.jvm.internal.r.d(strSubstring3, "this as java.lang.String).substring(startIndex)");
                c("", strSubstring3);
            } else {
                c("", line);
            }
            return this;
        }

        public final a c(String name, String value) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(value, "value");
            this.f14958a.add(name);
            this.f14958a.add(kotlin.text.r.N0(value).toString());
            return this;
        }

        public final t d() {
            return new t((String[]) this.f14958a.toArray(new String[0]), null);
        }

        public final List e() {
            return this.f14958a;
        }

        public final a f(String name) {
            kotlin.jvm.internal.r.e(name, "name");
            int i10 = 0;
            while (i10 < this.f14958a.size()) {
                if (kotlin.text.r.v(name, (String) this.f14958a.get(i10), true)) {
                    this.f14958a.remove(i10);
                    this.f14958a.remove(i10);
                    i10 -= 2;
                }
                i10 += 2;
            }
            return this;
        }

        public final a g(String name, String value) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(value, "value");
            b bVar = t.f14956b;
            bVar.d(name);
            bVar.e(value, name);
            f(name);
            c(name, value);
            return this;
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void d(String str) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                char cCharAt = str.charAt(i10);
                if ('!' > cCharAt || cCharAt >= 127) {
                    throw new IllegalArgumentException(i9.d.s("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i10), str).toString());
                }
            }
        }

        public final void e(String str, String str2) {
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                char cCharAt = str.charAt(i10);
                if (cCharAt != '\t' && (' ' > cCharAt || cCharAt >= 127)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(i9.d.s("Unexpected char %#04x at %d in %s value", Integer.valueOf(cCharAt), Integer.valueOf(i10), str2));
                    sb.append(i9.d.F(str2) ? "" : ": " + str);
                    throw new IllegalArgumentException(sb.toString().toString());
                }
            }
        }

        public final String f(String[] strArr, String str) {
            int length = strArr.length - 2;
            int iB = s8.c.b(length, 0, -2);
            if (iB > length) {
                return null;
            }
            while (!kotlin.text.r.v(str, strArr[length], true)) {
                if (length == iB) {
                    return null;
                }
                length -= 2;
            }
            return strArr[length + 1];
        }

        public final t g(String... namesAndValues) {
            kotlin.jvm.internal.r.e(namesAndValues, "namesAndValues");
            if (namesAndValues.length % 2 != 0) {
                throw new IllegalArgumentException("Expected alternating header names and values");
            }
            String[] strArr = (String[]) namesAndValues.clone();
            int length = strArr.length;
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                String str = strArr[i11];
                if (str == null) {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
                strArr[i11] = kotlin.text.r.N0(str).toString();
            }
            int iB = s8.c.b(0, strArr.length - 1, 2);
            if (iB >= 0) {
                while (true) {
                    String str2 = strArr[i10];
                    String str3 = strArr[i10 + 1];
                    d(str2);
                    e(str3, str2);
                    if (i10 == iB) {
                        break;
                    }
                    i10 += 2;
                }
            }
            return new t(strArr, null);
        }

        private b() {
        }
    }

    public /* synthetic */ t(String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(strArr);
    }

    public final String a(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        return f14956b.f(this.f14957a, name);
    }

    public final String c(int i10) {
        return this.f14957a[i10 * 2];
    }

    public final a d() {
        a aVar = new a();
        kotlin.collections.o.w(aVar.e(), this.f14957a);
        return aVar;
    }

    public final String e(int i10) {
        return this.f14957a[(i10 * 2) + 1];
    }

    public boolean equals(Object obj) {
        return (obj instanceof t) && Arrays.equals(this.f14957a, ((t) obj).f14957a);
    }

    public final List f(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        int size = size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            if (kotlin.text.r.v(name, c(i10), true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(e(i10));
            }
        }
        if (arrayList == null) {
            return kotlin.collections.o.h();
        }
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        kotlin.jvm.internal.r.d(listUnmodifiableList, "{\n      Collections.unmodifiableList(result)\n    }");
        return listUnmodifiableList;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f14957a);
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        int size = size();
        n8.q[] qVarArr = new n8.q[size];
        for (int i10 = 0; i10 < size; i10++) {
            qVarArr[i10] = n8.w.a(c(i10), e(i10));
        }
        return kotlin.jvm.internal.b.a(qVarArr);
    }

    public final int size() {
        return this.f14957a.length / 2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            String strC = c(i10);
            String strE = e(i10);
            sb.append(strC);
            sb.append(": ");
            if (i9.d.F(strC)) {
                strE = "██";
            }
            sb.append(strE);
            sb.append("\n");
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    private t(String[] strArr) {
        this.f14957a = strArr;
    }
}
