package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class RendPass {
    private final String cs;
    private final Effect[] effects;
    private final String fs;
    private final int order;
    private final StatusAnim[] status;
    private final HashMap<String, Uniform> uniforms;
    private final String vs;

    public RendPass(String vs, String fs, int i10, HashMap<String, Uniform> uniforms, StatusAnim[] statusAnimArr, String str, Effect[] effectArr) {
        kotlin.jvm.internal.r.e(vs, "vs");
        kotlin.jvm.internal.r.e(fs, "fs");
        kotlin.jvm.internal.r.e(uniforms, "uniforms");
        this.vs = vs;
        this.fs = fs;
        this.order = i10;
        this.uniforms = uniforms;
        this.status = statusAnimArr;
        this.cs = str;
        this.effects = effectArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RendPass copy$default(RendPass rendPass, String str, String str2, int i10, HashMap map, StatusAnim[] statusAnimArr, String str3, Effect[] effectArr, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = rendPass.vs;
        }
        if ((i11 & 2) != 0) {
            str2 = rendPass.fs;
        }
        String str4 = str2;
        if ((i11 & 4) != 0) {
            i10 = rendPass.order;
        }
        int i12 = i10;
        if ((i11 & 8) != 0) {
            map = rendPass.uniforms;
        }
        HashMap map2 = map;
        if ((i11 & 16) != 0) {
            statusAnimArr = rendPass.status;
        }
        StatusAnim[] statusAnimArr2 = statusAnimArr;
        if ((i11 & 32) != 0) {
            str3 = rendPass.cs;
        }
        String str5 = str3;
        if ((i11 & 64) != 0) {
            effectArr = rendPass.effects;
        }
        return rendPass.copy(str, str4, i12, map2, statusAnimArr2, str5, effectArr);
    }

    public final String component1() {
        return this.vs;
    }

    public final String component2() {
        return this.fs;
    }

    public final int component3() {
        return this.order;
    }

    public final HashMap<String, Uniform> component4() {
        return this.uniforms;
    }

    public final StatusAnim[] component5() {
        return this.status;
    }

    public final String component6() {
        return this.cs;
    }

    public final Effect[] component7() {
        return this.effects;
    }

    public final RendPass copy(String vs, String fs, int i10, HashMap<String, Uniform> uniforms, StatusAnim[] statusAnimArr, String str, Effect[] effectArr) {
        kotlin.jvm.internal.r.e(vs, "vs");
        kotlin.jvm.internal.r.e(fs, "fs");
        kotlin.jvm.internal.r.e(uniforms, "uniforms");
        return new RendPass(vs, fs, i10, uniforms, statusAnimArr, str, effectArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RendPass)) {
            return false;
        }
        RendPass rendPass = (RendPass) obj;
        return kotlin.jvm.internal.r.a(this.vs, rendPass.vs) && kotlin.jvm.internal.r.a(this.fs, rendPass.fs) && this.order == rendPass.order && kotlin.jvm.internal.r.a(this.uniforms, rendPass.uniforms) && kotlin.jvm.internal.r.a(this.status, rendPass.status) && kotlin.jvm.internal.r.a(this.cs, rendPass.cs) && kotlin.jvm.internal.r.a(this.effects, rendPass.effects);
    }

    public final String getCs() {
        return this.cs;
    }

    public final Effect[] getEffects() {
        return this.effects;
    }

    public final String getFs() {
        return this.fs;
    }

    public final int getOrder() {
        return this.order;
    }

    public final StatusAnim[] getStatus() {
        return this.status;
    }

    public final HashMap<String, Uniform> getUniforms() {
        return this.uniforms;
    }

    public final String getVs() {
        return this.vs;
    }

    public int hashCode() {
        int iHashCode = ((((((this.vs.hashCode() * 31) + this.fs.hashCode()) * 31) + Integer.hashCode(this.order)) * 31) + this.uniforms.hashCode()) * 31;
        StatusAnim[] statusAnimArr = this.status;
        int iHashCode2 = (iHashCode + (statusAnimArr == null ? 0 : Arrays.hashCode(statusAnimArr))) * 31;
        String str = this.cs;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Effect[] effectArr = this.effects;
        return iHashCode3 + (effectArr != null ? Arrays.hashCode(effectArr) : 0);
    }

    public String toString() {
        return "RendPass(vs=" + this.vs + ", fs=" + this.fs + ", order=" + this.order + ", uniforms=" + this.uniforms + ", status=" + Arrays.toString(this.status) + ", cs=" + this.cs + ", effects=" + Arrays.toString(this.effects) + ")";
    }

    public /* synthetic */ RendPass(String str, String str2, int i10, HashMap map, StatusAnim[] statusAnimArr, String str3, Effect[] effectArr, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i10, map, statusAnimArr, (i11 & 32) != 0 ? null : str3, effectArr);
    }
}
