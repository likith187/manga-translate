package u5;

import android.text.TextUtils;
import com.oplus.backup.sdk.common.utils.Constants;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import s5.e;
import w5.d;
import w5.h;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f15861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f15862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f15863c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f15864d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map f15865e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f15866f;

    public a(String str, int i10, byte[] bArr) {
        this.f15861a = str;
        this.f15862b = i10;
        this.f15863c = bArr;
    }

    public boolean a(String str, String str2) {
        e eVar = (e) this.f15865e.get(str);
        if (eVar != null) {
            return eVar.a(str2);
        }
        return false;
    }

    public int b() {
        return this.f15862b;
    }

    public byte[] c() {
        return this.f15863c;
    }

    public String d() {
        return this.f15866f;
    }

    public void e() {
        this.f15865e = new ConcurrentHashMap();
        for (String str : h.c(new String(this.f15863c), Constants.DataMigration.SPLIT_TAG)) {
            int iIndexOf = str.indexOf(",");
            if (iIndexOf != -1) {
                String strSubstring = str.substring(0, iIndexOf);
                String strSubstring2 = str.substring(iIndexOf + 1);
                if (TextUtils.equals(strSubstring, "epona") || TextUtils.equals(strSubstring, "tingle")) {
                    this.f15865e.put(strSubstring, new e(strSubstring2));
                    d.b("Package : " + this.f15861a + " Permission : type [" + strSubstring + "] -" + h.c(strSubstring2, ","));
                }
            }
        }
    }

    public boolean f() {
        return System.currentTimeMillis() - this.f15864d > r5.a.f15438a;
    }

    public void g(String str) {
        this.f15866f = str;
    }

    public void h() {
        this.f15864d = System.currentTimeMillis();
    }
}
