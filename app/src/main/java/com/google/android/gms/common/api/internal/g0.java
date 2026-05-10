package com.google.android.gms.common.api.internal;

import android.os.SystemClock;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;

/* JADX INFO: loaded from: classes.dex */
final class g0 implements w3.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f7640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f7642c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f7643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f7644e;

    g0(e eVar, int i10, b bVar, long j10, long j11, String str, String str2) {
        this.f7640a = eVar;
        this.f7641b = i10;
        this.f7642c = bVar;
        this.f7643d = j10;
        this.f7644e = j11;
    }

    static g0 b(e eVar, int i10, b bVar) {
        boolean zG0;
        if (!eVar.d()) {
            return null;
        }
        RootTelemetryConfiguration rootTelemetryConfigurationA = com.google.android.gms.common.internal.l.b().a();
        if (rootTelemetryConfigurationA == null) {
            zG0 = true;
        } else {
            if (!rootTelemetryConfigurationA.F0()) {
                return null;
            }
            zG0 = rootTelemetryConfigurationA.G0();
            x xVarS = eVar.s(bVar);
            if (xVarS != null) {
                if (!(xVarS.v() instanceof com.google.android.gms.common.internal.d)) {
                    return null;
                }
                com.google.android.gms.common.internal.d dVar = (com.google.android.gms.common.internal.d) xVarS.v();
                if (dVar.H() && !dVar.h()) {
                    ConnectionTelemetryConfiguration connectionTelemetryConfigurationC = c(xVarS, dVar, i10);
                    if (connectionTelemetryConfigurationC == null) {
                        return null;
                    }
                    xVarS.G();
                    zG0 = connectionTelemetryConfigurationC.H0();
                }
            }
        }
        return new g0(eVar, i10, bVar, zG0 ? System.currentTimeMillis() : 0L, zG0 ? SystemClock.elapsedRealtime() : 0L, null, null);
    }

    private static ConnectionTelemetryConfiguration c(x xVar, com.google.android.gms.common.internal.d dVar, int i10) {
        int[] iArrE0;
        int[] iArrF0;
        ConnectionTelemetryConfiguration connectionTelemetryConfigurationF = dVar.F();
        if (connectionTelemetryConfigurationF == null || !connectionTelemetryConfigurationF.G0() || ((iArrE0 = connectionTelemetryConfigurationF.E0()) != null ? !r3.a.a(iArrE0, i10) : !((iArrF0 = connectionTelemetryConfigurationF.F0()) == null || !r3.a.a(iArrF0, i10))) || xVar.t() >= connectionTelemetryConfigurationF.D0()) {
            return null;
        }
        return connectionTelemetryConfigurationF;
    }

    @Override // w3.d
    public final void a(w3.i iVar) {
        x xVarS;
        int iL0;
        int i10;
        int i11;
        int iD0;
        long j10;
        long j11;
        int iElapsedRealtime;
        if (this.f7640a.d()) {
            RootTelemetryConfiguration rootTelemetryConfigurationA = com.google.android.gms.common.internal.l.b().a();
            if ((rootTelemetryConfigurationA == null || rootTelemetryConfigurationA.F0()) && (xVarS = this.f7640a.s(this.f7642c)) != null && (xVarS.v() instanceof com.google.android.gms.common.internal.d)) {
                com.google.android.gms.common.internal.d dVar = (com.google.android.gms.common.internal.d) xVarS.v();
                int i12 = 0;
                boolean zG0 = this.f7643d > 0;
                int iX = dVar.x();
                int iF0 = 100;
                if (rootTelemetryConfigurationA != null) {
                    zG0 &= rootTelemetryConfigurationA.G0();
                    int iD02 = rootTelemetryConfigurationA.D0();
                    int iE0 = rootTelemetryConfigurationA.E0();
                    iL0 = rootTelemetryConfigurationA.l0();
                    if (dVar.H() && !dVar.h()) {
                        ConnectionTelemetryConfiguration connectionTelemetryConfigurationC = c(xVarS, dVar, this.f7641b);
                        if (connectionTelemetryConfigurationC == null) {
                            return;
                        }
                        boolean z10 = connectionTelemetryConfigurationC.H0() && this.f7643d > 0;
                        iE0 = connectionTelemetryConfigurationC.D0();
                        zG0 = z10;
                    }
                    i11 = iD02;
                    i10 = iE0;
                } else {
                    iL0 = 0;
                    i10 = 100;
                    i11 = 5000;
                }
                e eVar = this.f7640a;
                if (iVar.i()) {
                    iD0 = 0;
                } else if (iVar.g()) {
                    i12 = iF0;
                    iD0 = -1;
                } else {
                    Exception excE = iVar.e();
                    if (excE instanceof com.google.android.gms.common.api.b) {
                        Status status = ((com.google.android.gms.common.api.b) excE).getStatus();
                        iF0 = status.F0();
                        ConnectionResult connectionResultD0 = status.D0();
                        if (connectionResultD0 != null) {
                            iD0 = connectionResultD0.D0();
                            i12 = iF0;
                        }
                        i12 = iF0;
                        iD0 = -1;
                    } else {
                        i12 = 101;
                        iD0 = -1;
                    }
                }
                if (zG0) {
                    long j12 = this.f7643d;
                    long j13 = this.f7644e;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - j13);
                    j11 = jCurrentTimeMillis;
                    j10 = j12;
                } else {
                    j10 = 0;
                    j11 = 0;
                    iElapsedRealtime = -1;
                }
                eVar.A(new MethodInvocation(this.f7641b, i12, iD0, j10, j11, null, null, iX, iElapsedRealtime), iL0, i11, i10);
            }
        }
    }
}
