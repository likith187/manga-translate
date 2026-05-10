package com.oplus.vfxsdk.naive.coe.engine;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class RenderStateInfo {
    private int blendDstFactor;
    private int blendDstFactorAlpha;
    private boolean blendEnable;
    private int blendSrcFactor;
    private int blendSrcFactorAlpha;

    public RenderStateInfo() {
        this.blendEnable = false;
        this.blendSrcFactor = 770;
        this.blendDstFactor = 771;
        this.blendSrcFactorAlpha = 770;
        this.blendDstFactorAlpha = 771;
    }

    public int getBlendDstFactor() {
        return this.blendDstFactor;
    }

    public int getBlendDstFactorAlpha() {
        return this.blendDstFactorAlpha;
    }

    public boolean getBlendEnable() {
        return this.blendEnable;
    }

    public int getBlendSrcFactor() {
        return this.blendSrcFactor;
    }

    public int getBlendSrcFactorAlpha() {
        return this.blendSrcFactorAlpha;
    }

    public void setBlendDstFactor(int i10) {
        this.blendDstFactor = i10;
    }

    public void setBlendDstFactorAlpha(int i10) {
        this.blendDstFactorAlpha = i10;
    }

    public void setBlendEnable(boolean z10) {
        this.blendEnable = z10;
    }

    public void setBlendSrcFactor(int i10) {
        this.blendSrcFactor = i10;
    }

    public void setBlendSrcFactorAlpha(int i10) {
        this.blendSrcFactorAlpha = i10;
    }

    public RenderStateInfo(boolean z10, int i10, int i11) {
        this.blendSrcFactorAlpha = 770;
        this.blendDstFactorAlpha = 771;
        this.blendEnable = z10;
        this.blendSrcFactor = i10;
        this.blendDstFactor = i11;
    }

    public RenderStateInfo(boolean z10, int i10, int i11, int i12, int i13) {
        this.blendEnable = z10;
        this.blendSrcFactor = i10;
        this.blendDstFactor = i11;
        this.blendSrcFactorAlpha = i12;
        this.blendDstFactorAlpha = i13;
    }
}
