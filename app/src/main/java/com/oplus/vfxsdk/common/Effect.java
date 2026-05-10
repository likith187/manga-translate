package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class Effect {
    private final String cs;
    private final HashMap<String, Uniform> uniforms;
    private final int value;

    public Effect(int i10, String str, HashMap<String, Uniform> uniforms) {
        kotlin.jvm.internal.r.e(uniforms, "uniforms");
        this.value = i10;
        this.cs = str;
        this.uniforms = uniforms;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Effect copy$default(Effect effect, int i10, String str, HashMap map, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = effect.value;
        }
        if ((i11 & 2) != 0) {
            str = effect.cs;
        }
        if ((i11 & 4) != 0) {
            map = effect.uniforms;
        }
        return effect.copy(i10, str, map);
    }

    public final int component1() {
        return this.value;
    }

    public final String component2() {
        return this.cs;
    }

    public final HashMap<String, Uniform> component3() {
        return this.uniforms;
    }

    public final Effect copy(int i10, String str, HashMap<String, Uniform> uniforms) {
        kotlin.jvm.internal.r.e(uniforms, "uniforms");
        return new Effect(i10, str, uniforms);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Effect)) {
            return false;
        }
        Effect effect = (Effect) obj;
        return this.value == effect.value && kotlin.jvm.internal.r.a(this.cs, effect.cs) && kotlin.jvm.internal.r.a(this.uniforms, effect.uniforms);
    }

    public final String getCs() {
        return this.cs;
    }

    public final HashMap<String, Uniform> getUniforms() {
        return this.uniforms;
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.value) * 31;
        String str = this.cs;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.uniforms.hashCode();
    }

    public String toString() {
        return "Effect(value=" + this.value + ", cs=" + this.cs + ", uniforms=" + this.uniforms + ")";
    }
}
