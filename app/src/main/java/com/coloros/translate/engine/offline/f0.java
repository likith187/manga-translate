package com.coloros.translate.engine.offline;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class f0 {

    /* JADX INFO: renamed from: a */
    a f5032a;

    /* JADX INFO: renamed from: b */
    boolean f5033b;

    /* JADX INFO: renamed from: c */
    int f5034c;

    /* JADX INFO: renamed from: d */
    long f5035d;

    /* JADX INFO: renamed from: e */
    long f5036e;

    /* JADX INFO: renamed from: f */
    int f5037f;

    /* JADX INFO: renamed from: g */
    String f5038g;

    /* JADX INFO: renamed from: h */
    String f5039h;

    /* JADX INFO: renamed from: i */
    String f5040i;

    /* JADX INFO: renamed from: j */
    String f5041j;

    /* JADX INFO: renamed from: k */
    long f5042k;

    /* JADX INFO: renamed from: l */
    long f5043l;

    /* JADX INFO: renamed from: m */
    int f5044m;

    /* JADX INFO: renamed from: n */
    int f5045n;

    public enum a {
        NOEXIST,
        PENDING,
        DOWNLOADING,
        PAUSE,
        DOWNLOADFIALED,
        COMPRESSING,
        COMPRESSED,
        NEEDUPDATE
    }

    f0(String str, boolean z10, int i10, long j10, boolean z11, int i11) {
        this.f5032a = a.NOEXIST;
        this.f5038g = str;
        this.f5033b = z10;
        this.f5037f = i10;
        this.f5043l = j10;
        this.f5044m = i11;
        if (z11) {
            this.f5032a = a.COMPRESSED;
        }
    }

    public void a() {
        this.f5032a = a.COMPRESSED;
    }

    public void b(Context context) {
        if (d(context)) {
            this.f5032a = a.COMPRESSED;
        } else {
            this.f5032a = a.NOEXIST;
        }
    }

    void c(Context context, boolean z10) {
        g languagePackage = g.getLanguagePackage(this.f5038g);
        if (languagePackage != null) {
            languagePackage.deleteNativeFile(context);
            k0.e().c(this.f5038g);
        }
        if (z10) {
            return;
        }
        com.coloros.translate.utils.l0.f7130a.j(context, this.f5038g, 0);
        f();
    }

    boolean d(Context context) {
        g languagePackage = g.getLanguagePackage(this.f5038g);
        if (languagePackage != null) {
            return languagePackage.existsNativeFile(context);
        }
        return false;
    }

    int e() {
        return (int) ((this.f5042k / this.f5043l) * 100.0f);
    }

    void f() {
        if (this.f5033b) {
            return;
        }
        this.f5032a = a.NOEXIST;
        this.f5036e = -1L;
        this.f5042k = 0L;
    }

    void g(Context context, t1.a aVar, boolean z10) {
        this.f5038g = aVar.f15673r;
        this.f5036e = aVar.f15656a;
        this.f5042k = aVar.f15666k;
        long j10 = aVar.f15665j;
        if (j10 > 0) {
            this.f5043l = j10;
        }
        int i10 = aVar.f15662g;
        this.f5034c = i10;
        this.f5035d = aVar.f15671p;
        if (i10 == 1) {
            this.f5032a = a.PENDING;
            return;
        }
        if (i10 == 2) {
            this.f5032a = a.DOWNLOADING;
            return;
        }
        if (i10 == 4) {
            this.f5032a = a.PAUSE;
            return;
        }
        if (i10 != 8) {
            if (i10 != 16) {
                this.f5032a = a.NOEXIST;
                return;
            } else {
                this.f5032a = a.DOWNLOADFIALED;
                return;
            }
        }
        if (z10 && d(context)) {
            this.f5032a = a.COMPRESSED;
        }
    }

    public void h(int i10) {
        int i11 = this.f5044m;
        if (i11 != 0 && i10 > i11 && this.f5032a == a.COMPRESSED) {
            this.f5032a = a.NEEDUPDATE;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("OfflinePackageData:");
        sb.append("\nmState:" + this.f5032a);
        sb.append("\nmBusiness:" + this.f5038g);
        sb.append("\nmFileName:" + com.coloros.translate.utils.c0.l(this.f5041j));
        sb.append("\nmDownloadId:" + this.f5036e);
        sb.append("\nmUrl:" + com.coloros.translate.utils.c0.l(this.f5040i));
        return sb.toString();
    }
}
