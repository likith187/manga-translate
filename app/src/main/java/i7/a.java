package i7;

import android.text.TextUtils;
import com.oplus.backup.sdk.common.utils.Constants;
import h7.d;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import k7.h;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a */
    private final String f12653a;

    /* JADX INFO: renamed from: b */
    private final int f12654b;

    /* JADX INFO: renamed from: c */
    private final byte[] f12655c;

    /* JADX INFO: renamed from: d */
    private long f12656d;

    /* JADX INFO: renamed from: e */
    private Map f12657e;

    /* JADX INFO: renamed from: f */
    private String f12658f;

    /* JADX INFO: renamed from: g */
    private final String f12659g;

    public a(String str, int i10, byte[] bArr, String str2) {
        this.f12653a = str;
        this.f12654b = i10;
        this.f12655c = bArr;
        this.f12659g = str2;
    }

    public boolean a(String str, String str2) {
        d dVar = (d) this.f12657e.get(str);
        if (dVar != null) {
            return dVar.a(str2);
        }
        return false;
    }

    public String b() {
        return this.f12659g;
    }

    public int c() {
        return this.f12654b;
    }

    public String d() {
        return this.f12658f;
    }

    public void e() {
        this.f12657e = new ConcurrentHashMap();
        for (String str : h.c(new String(this.f12655c), Constants.DataMigration.SPLIT_TAG)) {
            int iIndexOf = str.indexOf(",");
            if (iIndexOf != -1) {
                String strSubstring = str.substring(0, iIndexOf);
                String strSubstring2 = str.substring(iIndexOf + 1);
                if (TextUtils.equals(strSubstring, "epona") || TextUtils.equals(strSubstring, "tingle")) {
                    this.f12657e.put(strSubstring, new d(strSubstring2));
                    k7.d.b("Package : " + this.f12653a + " Permission : type [" + strSubstring + "] -" + h.c(strSubstring2, ","));
                }
            }
        }
    }

    public boolean f() {
        return System.currentTimeMillis() - this.f12656d > g7.a.f12110a;
    }

    public void g(String str) {
        this.f12658f = str;
    }

    public void h() {
        this.f12656d = System.currentTimeMillis();
    }
}
