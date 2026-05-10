package com.oplus.vfxsdk.naive.parse;

import androidx.annotation.Keep;
import com.oplus.vfxsdk.common.Uniform;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class SystemUniform {
    private final int passIndex;
    private final Uniform uniform;

    public SystemUniform(int i10, Uniform uniform) {
        r.e(uniform, "uniform");
        this.passIndex = i10;
        this.uniform = uniform;
    }

    public static /* synthetic */ SystemUniform copy$default(SystemUniform systemUniform, int i10, Uniform uniform, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = systemUniform.passIndex;
        }
        if ((i11 & 2) != 0) {
            uniform = systemUniform.uniform;
        }
        return systemUniform.copy(i10, uniform);
    }

    public final int component1() {
        return this.passIndex;
    }

    public final Uniform component2() {
        return this.uniform;
    }

    public final SystemUniform copy(int i10, Uniform uniform) {
        r.e(uniform, "uniform");
        return new SystemUniform(i10, uniform);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SystemUniform)) {
            return false;
        }
        SystemUniform systemUniform = (SystemUniform) obj;
        return this.passIndex == systemUniform.passIndex && r.a(this.uniform, systemUniform.uniform);
    }

    public final int getPassIndex() {
        return this.passIndex;
    }

    public final Uniform getUniform() {
        return this.uniform;
    }

    public int hashCode() {
        return (Integer.hashCode(this.passIndex) * 31) + this.uniform.hashCode();
    }

    public String toString() {
        return "SystemUniform(passIndex=" + this.passIndex + ", uniform=" + this.uniform + ")";
    }
}
