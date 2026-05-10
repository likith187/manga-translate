package com.oplus.vfxsdk.naive;

import android.graphics.SurfaceTexture;
import androidx.annotation.Keep;
import com.oplus.vfxsdk.naive.coe.api.ITask;
import com.oplus.vfxsdk.naive.coe.engine.NativeEngine;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class COEEngine$createSurfaceTexture$coeSurfaceTextureInfo$1$1$task$1 implements ITask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ SurfaceTexture f11313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f11314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ a f11315c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ boolean f11316d;

    @Override // com.oplus.vfxsdk.naive.coe.api.ITask
    @Keep
    public void doTask() {
        if (this.f11313a.isReleased()) {
            return;
        }
        boolean zA = r.a(this.f11314b, "");
        NativeEngine nativeEngineL = this.f11315c.l();
        boolean z10 = this.f11316d;
        SurfaceTexture surfaceTexture = this.f11313a;
        if (z10 || nativeEngineL.bind()) {
            surfaceTexture.updateTexImage();
            if (!zA) {
                throw null;
            }
            if (!z10) {
                nativeEngineL.unbind();
            }
        }
        if (!zA) {
            throw null;
        }
    }
}
