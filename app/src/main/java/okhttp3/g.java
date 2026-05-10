package okhttp3;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f14729b;

    public g(String scheme, Map authParams) {
        String lowerCase;
        kotlin.jvm.internal.r.e(scheme, "scheme");
        kotlin.jvm.internal.r.e(authParams, "authParams");
        this.f14728a = scheme;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : authParams.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (str != null) {
                Locale US = Locale.US;
                kotlin.jvm.internal.r.d(US, "US");
                lowerCase = str.toLowerCase(US);
                kotlin.jvm.internal.r.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            } else {
                lowerCase = null;
            }
            linkedHashMap.put(lowerCase, str2);
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        kotlin.jvm.internal.r.d(mapUnmodifiableMap, "unmodifiableMap<String?, String>(newAuthParams)");
        this.f14729b = mapUnmodifiableMap;
    }

    public final Charset a() {
        String str = (String) this.f14729b.get("charset");
        if (str != null) {
            try {
                Charset charsetForName = Charset.forName(str);
                kotlin.jvm.internal.r.d(charsetForName, "forName(charset)");
                return charsetForName;
            } catch (Exception unused) {
            }
        }
        Charset ISO_8859_1 = StandardCharsets.ISO_8859_1;
        kotlin.jvm.internal.r.d(ISO_8859_1, "ISO_8859_1");
        return ISO_8859_1;
    }

    public final String b() {
        return (String) this.f14729b.get("realm");
    }

    public final String c() {
        return this.f14728a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (kotlin.jvm.internal.r.a(gVar.f14728a, this.f14728a) && kotlin.jvm.internal.r.a(gVar.f14729b, this.f14729b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((899 + this.f14728a.hashCode()) * 31) + this.f14729b.hashCode();
    }

    public String toString() {
        return this.f14728a + " authParams=" + this.f14729b;
    }
}
