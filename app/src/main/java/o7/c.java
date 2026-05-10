package o7;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c extends f {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f14450g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f14451h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f14452i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f14453j;

    public c(Context context) {
        super(context);
        this.f14450g = "";
        this.f14451h = "";
        this.f14452i = "";
        this.f14453j = 0;
    }

    @Override // o7.f
    public int g() {
        return 1006;
    }

    public int l() {
        return this.f14453j;
    }

    public String m() {
        return this.f14452i;
    }

    public String n() {
        return this.f14450g;
    }

    public String o() {
        return this.f14451h;
    }

    public void p(String str) {
        this.f14452i = str;
        d("eventID", str);
    }

    public void q(Map map) {
        String string = s7.e.a(map).toString();
        this.f14450g = string;
        d("logMap", string);
    }

    public void r(String str) {
        this.f14451h = str;
        d("logTag", str);
    }

    public String toString() {
        return " type is :" + g() + ", tag is :" + o() + ", eventID is :" + m() + ", map is :" + n();
    }

    public c(Context context, String str, String str2, String str3) {
        super(context);
        this.f14450g = "";
        this.f14453j = 0;
        this.f14451h = str2;
        this.f14452i = str3;
        k(str);
        d("logTag", this.f14451h);
        d("eventID", this.f14452i);
    }
}
