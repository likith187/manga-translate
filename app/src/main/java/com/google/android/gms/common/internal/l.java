package com.google.android.gms.common.internal;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static l f7898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final RootTelemetryConfiguration f7899c = new RootTelemetryConfiguration(0, false, false, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RootTelemetryConfiguration f7900a;

    private l() {
    }

    public static synchronized l b() {
        try {
            if (f7898b == null) {
                f7898b = new l();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f7898b;
    }

    public RootTelemetryConfiguration a() {
        return this.f7900a;
    }

    public final synchronized void c(RootTelemetryConfiguration rootTelemetryConfiguration) {
        if (rootTelemetryConfiguration == null) {
            this.f7900a = f7899c;
            return;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration2 = this.f7900a;
        if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.l0() < rootTelemetryConfiguration.l0()) {
            this.f7900a = rootTelemetryConfiguration;
        }
    }
}
