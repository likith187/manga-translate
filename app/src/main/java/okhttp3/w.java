package okhttp3;

import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f14980e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f14981f = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f14982g = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f14984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f14985c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String[] f14986d;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final w a(String str) {
            kotlin.jvm.internal.r.e(str, "<this>");
            Matcher matcher = w.f14981f.matcher(str);
            if (!matcher.lookingAt()) {
                throw new IllegalArgumentException(("No subtype found for: \"" + str + AbstractJsonLexerKt.STRING).toString());
            }
            String strGroup = matcher.group(1);
            kotlin.jvm.internal.r.d(strGroup, "typeSubtype.group(1)");
            Locale US = Locale.US;
            kotlin.jvm.internal.r.d(US, "US");
            String lowerCase = strGroup.toLowerCase(US);
            kotlin.jvm.internal.r.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            String strGroup2 = matcher.group(2);
            kotlin.jvm.internal.r.d(strGroup2, "typeSubtype.group(2)");
            kotlin.jvm.internal.r.d(US, "US");
            String lowerCase2 = strGroup2.toLowerCase(US);
            kotlin.jvm.internal.r.d(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            ArrayList arrayList = new ArrayList();
            Matcher matcher2 = w.f14982g.matcher(str);
            int iEnd = matcher.end();
            while (iEnd < str.length()) {
                matcher2.region(iEnd, str.length());
                if (!matcher2.lookingAt()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Parameter is not formatted correctly: \"");
                    String strSubstring = str.substring(iEnd);
                    kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String).substring(startIndex)");
                    sb.append(strSubstring);
                    sb.append("\" for: \"");
                    sb.append(str);
                    sb.append(AbstractJsonLexerKt.STRING);
                    throw new IllegalArgumentException(sb.toString().toString());
                }
                String strGroup3 = matcher2.group(1);
                if (strGroup3 == null) {
                    iEnd = matcher2.end();
                } else {
                    String strGroup4 = matcher2.group(2);
                    if (strGroup4 == null) {
                        strGroup4 = matcher2.group(3);
                    } else if (kotlin.text.r.F(strGroup4, "'", false, 2, null) && kotlin.text.r.u(strGroup4, "'", false, 2, null) && strGroup4.length() > 2) {
                        strGroup4 = strGroup4.substring(1, strGroup4.length() - 1);
                        kotlin.jvm.internal.r.d(strGroup4, "this as java.lang.String…ing(startIndex, endIndex)");
                    }
                    arrayList.add(strGroup3);
                    arrayList.add(strGroup4);
                    iEnd = matcher2.end();
                }
            }
            return new w(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]), null);
        }

        private a() {
        }
    }

    public /* synthetic */ w(String str, String str2, String str3, String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, strArr);
    }

    public boolean equals(Object obj) {
        return (obj instanceof w) && kotlin.jvm.internal.r.a(((w) obj).f14983a, this.f14983a);
    }

    public int hashCode() {
        return this.f14983a.hashCode();
    }

    public String toString() {
        return this.f14983a;
    }

    private w(String str, String str2, String str3, String[] strArr) {
        this.f14983a = str;
        this.f14984b = str2;
        this.f14985c = str3;
        this.f14986d = strArr;
    }
}
