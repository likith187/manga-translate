package kotlin.text;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    public static final d INSTANCE = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f13110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f13111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f13112c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Charset f13113d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Charset f13114e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Charset f13115f;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        kotlin.jvm.internal.r.d(charsetForName, "forName(...)");
        f13110a = charsetForName;
        Charset charsetForName2 = Charset.forName("UTF-16");
        kotlin.jvm.internal.r.d(charsetForName2, "forName(...)");
        f13111b = charsetForName2;
        Charset charsetForName3 = Charset.forName("UTF-16BE");
        kotlin.jvm.internal.r.d(charsetForName3, "forName(...)");
        f13112c = charsetForName3;
        Charset charsetForName4 = Charset.forName("UTF-16LE");
        kotlin.jvm.internal.r.d(charsetForName4, "forName(...)");
        f13113d = charsetForName4;
        Charset charsetForName5 = Charset.forName("US-ASCII");
        kotlin.jvm.internal.r.d(charsetForName5, "forName(...)");
        f13114e = charsetForName5;
        Charset charsetForName6 = Charset.forName("ISO-8859-1");
        kotlin.jvm.internal.r.d(charsetForName6, "forName(...)");
        f13115f = charsetForName6;
    }

    private d() {
    }
}
