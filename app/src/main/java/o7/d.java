package o7;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class d extends f {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f14454g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f14455h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f14456i;

    public d(Context context) {
        super(context);
    }

    @Override // o7.f
    public int g() {
        return 1004;
    }

    public int l() {
        return this.f14456i;
    }

    public long m() {
        return this.f14454g;
    }

    public String n() {
        return this.f14455h;
    }

    public void o(int i10) {
        this.f14456i = i10;
        b("time", i10);
    }

    public void p(long j10) {
        this.f14454g = j10;
        c("time", j10);
    }

    public void q(String str) {
        this.f14455h = str;
        d("exception", str);
    }

    public String toString() {
        return "exception is :" + n() + "\ncount is :" + l() + "\ntime is :" + m() + "\n";
    }
}
