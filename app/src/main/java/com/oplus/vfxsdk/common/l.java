package com.oplus.vfxsdk.common;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l implements d8.a {

    /* JADX INFO: renamed from: a */
    private final Context f11279a;

    /* JADX INFO: renamed from: b */
    private final String f11280b;

    public l(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        this.f11279a = context;
        this.f11280b = "VFX:COELoader";
    }

    @Override // d8.a
    public void a(String assetFile, boolean z10, boolean z11) throws IOException {
        kotlin.jvm.internal.r.e(assetFile, "assetFile");
        COEData cOEDataA = z11 ? j.INSTANCE.a(assetFile) : null;
        if (cOEDataA != null) {
            c(cOEDataA, z10, z11);
            return;
        }
        InputStream inputStreamOpen = this.f11279a.getAssets().open(assetFile);
        try {
            Log.i(this.f11280b, "load assetFile:" + assetFile);
            kotlin.jvm.internal.r.b(inputStreamOpen);
            b(assetFile, kotlin.io.b.c(inputStreamOpen), z10, z11);
            h0 h0Var = h0.INSTANCE;
            kotlin.io.c.a(inputStreamOpen, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                kotlin.io.c.a(inputStreamOpen, th);
                throw th2;
            }
        }
    }

    protected final COEData b(String cacheKey, byte[] content, boolean z10, boolean z11) {
        kotlin.jvm.internal.r.e(cacheKey, "cacheKey");
        kotlin.jvm.internal.r.e(content, "content");
        j jVar = j.INSTANCE;
        COEData cOEDataA = jVar.a(cacheKey);
        if (cOEDataA == null) {
            cOEDataA = new COEParse().parse(content, kotlin.text.r.u(cacheKey, ".coz", false, 2, null));
        }
        if (z11) {
            jVar.c(cacheKey, cOEDataA);
        }
        c(cOEDataA, z10, z11);
        return cOEDataA;
    }

    protected abstract void c(COEData cOEData, boolean z10, boolean z11);
}
