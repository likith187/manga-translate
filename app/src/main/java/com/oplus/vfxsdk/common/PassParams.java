package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class PassParams {
    private final UniformValue[] uniformPrams;

    public PassParams(UniformValue[] uniformPrams) {
        kotlin.jvm.internal.r.e(uniformPrams, "uniformPrams");
        this.uniformPrams = uniformPrams;
    }

    public static /* synthetic */ PassParams copy$default(PassParams passParams, UniformValue[] uniformValueArr, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            uniformValueArr = passParams.uniformPrams;
        }
        return passParams.copy(uniformValueArr);
    }

    public final UniformValue[] component1() {
        return this.uniformPrams;
    }

    public final PassParams copy(UniformValue[] uniformPrams) {
        kotlin.jvm.internal.r.e(uniformPrams, "uniformPrams");
        return new PassParams(uniformPrams);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PassParams) && kotlin.jvm.internal.r.a(this.uniformPrams, ((PassParams) obj).uniformPrams);
    }

    public final UniformValue[] getUniformPrams() {
        return this.uniformPrams;
    }

    public int hashCode() {
        return Arrays.hashCode(this.uniformPrams);
    }

    public String toString() {
        return "PassParams(uniformPrams=" + Arrays.toString(this.uniformPrams) + ")";
    }
}
