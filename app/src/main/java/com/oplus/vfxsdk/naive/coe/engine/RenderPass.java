package com.oplus.vfxsdk.naive.coe.engine;

import androidx.annotation.Keep;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@Keep
@Deprecated(since = "naiveEngine:1.2.0")
public class RenderPass extends NativeObject {
    public RenderPass(long j10, String str, String str2, int i10, boolean z10) {
        super(0L);
    }

    public void detachEngineHandle() {
    }

    public void enable(boolean z10) {
    }

    public void enableBlend(boolean z10) {
    }

    public void setBlendDstFactor(int i10) {
    }

    public void setBlendSrcFactor(int i10) {
    }

    public void setLayerSortingOrder(int i10) {
    }

    @SafeVarargs
    public final <T> void setParameter(String str, boolean z10, T... tArr) {
    }

    public void setSortingOrder(int i10) {
    }

    public void updateMesh(ByteBuffer byteBuffer) {
    }

    public RenderPass(long j10, String str, String str2, int i10, boolean z10, ByteBuffer byteBuffer) {
        super(0L);
    }

    public void enableBlend(boolean z10, int i10, int i11) {
    }

    @SafeVarargs
    public final <T> void setParameter(String str, T... tArr) {
    }

    public void setSortingOrder(int i10, int i11) {
    }

    public RenderPass(long j10, String str, String str2, int i10, boolean z10, ByteBuffer byteBuffer, int i11, int i12) {
        super(0L);
    }
}
