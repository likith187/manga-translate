package com.coloros.translate.engine.offline;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class g0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f5046d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f5047e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f5048f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f5049g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f5050h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static g0 f5051i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f5052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private File f5053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private File f5054c;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(".data");
        char c10 = File.separatorChar;
        sb.append(c10);
        sb.append("ziyan");
        sb.append(c10);
        f5046d = sb.toString();
        f5047e = ".data" + c10 + "ziyan" + c10 + "model";
        f5048f = ".data" + c10 + "ziyan" + c10 + "tmp";
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ziyan");
        sb2.append(c10);
        sb2.append("tmp");
        f5049g = sb2.toString();
        f5050h = "ziyan" + c10 + "model";
        f5051i = new g0();
    }

    public static g0 b() {
        return f5051i;
    }

    private static String d(String str) {
        File file = new File(str);
        if (!file.isDirectory() && !file.mkdirs()) {
            com.coloros.translate.utils.c0.o("LocalFileManager", "getOrCreateDir mkdirs fail!");
        }
        return file.getPath();
    }

    private String f(String str) {
        if (TextUtils.equals(g.getCELanguageCode(), str)) {
            return "zhen.zip";
        }
        if (TextUtils.equals(g.getCFLanguageCode(), str)) {
            return "zhfr.zip";
        }
        if (TextUtils.equals(g.getCJLanguageCode(), str)) {
            return "zhja.zip";
        }
        if (TextUtils.equals(g.getCKLanguageCode(), str)) {
            return "zhko.zip";
        }
        if (TextUtils.equals(g.getCSLanguageCode(), str)) {
            return "zhes.zip";
        }
        if (TextUtils.equals(g.getCVLanguageCode(), str)) {
            return "zhvi.zip";
        }
        if (TextUtils.equals(g.getCILanguageCode(), str)) {
            return "zhit.zip";
        }
        if (TextUtils.equals(g.getCGLanguageCode(), str)) {
            return "zhde.zip";
        }
        if (TextUtils.equals(g.getEHLanguageCode(), str)) {
            return "hien.zip";
        }
        if (TextUtils.equals(g.getEVLanguageCode(), str)) {
            return "vien.zip";
        }
        if (TextUtils.equals(g.getETLanguageCode(), str)) {
            return "then.zip";
        }
        if (TextUtils.equals(g.getESLanguageCode(), str)) {
            return "esen.zip";
        }
        if (TextUtils.equals(g.getEILanguageCode(), str)) {
            return "iden.zip";
        }
        return null;
    }

    public String a() {
        StringBuilder sb = new StringBuilder(new File(this.f5052a.getExternalCacheDir(), f5050h).getPath());
        d(sb.toString());
        sb.append(File.separatorChar);
        return sb.toString();
    }

    public String c() {
        if (this.f5052a == null) {
            this.f5052a = com.coloros.translate.utils.m.f7131a;
        }
        if (this.f5053b == null) {
            this.f5053b = com.coloros.translate.utils.y.g(this.f5052a, f5047e);
        }
        StringBuilder sb = new StringBuilder(this.f5053b.getPath());
        d(sb.toString());
        sb.append(File.separatorChar);
        return sb.toString();
    }

    public String e() {
        if (this.f5052a == null) {
            this.f5052a = com.coloros.translate.utils.m.f7131a;
        }
        if (this.f5054c == null) {
            this.f5054c = com.coloros.translate.utils.y.g(this.f5052a, f5048f);
        }
        StringBuilder sb = new StringBuilder(this.f5054c.getPath());
        d(sb.toString());
        sb.append(File.separatorChar);
        return sb.toString();
    }

    public String g(String str) {
        return a() + f(str);
    }

    public void h(Context context) {
        this.f5052a = context;
        this.f5053b = com.coloros.translate.utils.y.g(context, f5047e);
        this.f5054c = com.coloros.translate.utils.y.g(this.f5052a, f5048f);
    }
}
