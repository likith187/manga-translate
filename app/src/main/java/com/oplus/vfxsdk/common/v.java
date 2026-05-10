package com.oplus.vfxsdk.common;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class v {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f11303e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private double f11307a = -1.0d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double f11308b = -1.0d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f11309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f11302d = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f11304f = "h";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f11305g = "H";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f11306h = "mm";

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            return v.f11303e;
        }

        private a() {
        }
    }

    public final double b(double d10) {
        if (this.f11307a < 0.0d) {
            this.f11307a = d10;
            this.f11308b = d10;
            this.f11309c = 0.0d;
        }
        double d11 = this.f11308b;
        if (d10 - d11 > 0.5d) {
            this.f11309c += d10 - d11;
        }
        this.f11308b = d10;
        return (d10 - this.f11307a) - this.f11309c;
    }
}
