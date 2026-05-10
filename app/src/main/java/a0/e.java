package a0;

import android.util.Base64;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f27a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f28b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f29c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f30d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f31e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f32f;

    public e(String str, String str2, String str3, List list) {
        this.f27a = (String) c0.h.e(str);
        this.f28b = (String) c0.h.e(str2);
        this.f29c = (String) c0.h.e(str3);
        this.f30d = (List) c0.h.e(list);
        this.f32f = a(str, str2, str3);
    }

    private String a(String str, String str2, String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    public List b() {
        return this.f30d;
    }

    public int c() {
        return this.f31e;
    }

    String d() {
        return this.f32f;
    }

    public String e() {
        return this.f27a;
    }

    public String f() {
        return this.f28b;
    }

    public String g() {
        return this.f29c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f27a + ", mProviderPackage: " + this.f28b + ", mQuery: " + this.f29c + ", mCertificates:");
        for (int i10 = 0; i10 < this.f30d.size(); i10++) {
            sb.append(" [");
            List list = (List) this.f30d.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list.get(i11), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f31e);
        return sb.toString();
    }
}
