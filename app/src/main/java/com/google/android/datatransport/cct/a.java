package com.google.android.datatransport.cct;

import com.oplus.backup.sdk.common.plugin.BRPluginConfigParser;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import y2.f;

/* JADX INFO: loaded from: classes.dex */
public final class a implements f {
    public static final a INSTANCE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f7478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f7479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f7480e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set f7481f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f7482g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7484b;

    static {
        String strA = e.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f7478c = strA;
        String strA2 = e.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f7479d = strA2;
        String strA3 = e.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f7480e = strA3;
        f7481f = Collections.unmodifiableSet(new HashSet(Arrays.asList(w2.b.b("proto"), w2.b.b(BRPluginConfigParser.JSON_ENCODE))));
        INSTANCE = new a(strA, null);
        f7482g = new a(strA2, strA3);
    }

    public a(String str, String str2) {
        this.f7483a = str;
        this.f7484b = str2;
    }

    public static a c(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote("\\"), 2);
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new a(str2, str3);
    }

    @Override // y2.f
    public Set a() {
        return f7481f;
    }

    public byte[] b() {
        String str = this.f7484b;
        if (str == null && this.f7483a == null) {
            return null;
        }
        String str2 = this.f7483a;
        if (str == null) {
            str = "";
        }
        return String.format("%s%s%s%s", "1$", str2, "\\", str).getBytes(Charset.forName("UTF-8"));
    }

    public String d() {
        return this.f7484b;
    }

    public String e() {
        return this.f7483a;
    }

    @Override // y2.e
    public byte[] getExtras() {
        return b();
    }

    @Override // y2.e
    public String getName() {
        return "cct";
    }
}
