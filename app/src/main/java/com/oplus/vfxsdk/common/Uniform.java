package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.oplus.aiunit.core.ConfigPackage;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.internal.ReaderJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class Uniform {
    private final Integer colorMode;
    private final Integer filterMode;
    private final boolean flip;
    private final int format;
    private final int height;
    private final int id;
    private final String mediaType;
    private final String name;
    private final u type;
    private final Object value;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final float f11232w;
    private final int width;
    private final Integer wrapMode;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final float f11233x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final float f11234y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final float f11235z;

    public Uniform(int i10, String name, u type, Object obj, float f10, float f11, float f12, float f13, int i11, int i12, int i13, boolean z10, Integer num, String mediaType, Integer num2, Integer num3) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(mediaType, "mediaType");
        this.id = i10;
        this.name = name;
        this.type = type;
        this.value = obj;
        this.f11233x = f10;
        this.f11234y = f11;
        this.f11235z = f12;
        this.f11232w = f13;
        this.width = i11;
        this.height = i12;
        this.format = i13;
        this.flip = z10;
        this.wrapMode = num;
        this.mediaType = mediaType;
        this.filterMode = num2;
        this.colorMode = num3;
    }

    public final int component1() {
        return this.id;
    }

    public final int component10() {
        return this.height;
    }

    public final int component11() {
        return this.format;
    }

    public final boolean component12() {
        return this.flip;
    }

    public final Integer component13() {
        return this.wrapMode;
    }

    public final String component14() {
        return this.mediaType;
    }

    public final Integer component15() {
        return this.filterMode;
    }

    public final Integer component16() {
        return this.colorMode;
    }

    public final String component2() {
        return this.name;
    }

    public final u component3() {
        return this.type;
    }

    public final Object component4() {
        return this.value;
    }

    public final float component5() {
        return this.f11233x;
    }

    public final float component6() {
        return this.f11234y;
    }

    public final float component7() {
        return this.f11235z;
    }

    public final float component8() {
        return this.f11232w;
    }

    public final int component9() {
        return this.width;
    }

    public final Uniform copy(int i10, String name, u type, Object obj, float f10, float f11, float f12, float f13, int i11, int i12, int i13, boolean z10, Integer num, String mediaType, Integer num2, Integer num3) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(mediaType, "mediaType");
        return new Uniform(i10, name, type, obj, f10, f11, f12, f13, i11, i12, i13, z10, num, mediaType, num2, num3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Uniform)) {
            return false;
        }
        Uniform uniform = (Uniform) obj;
        return this.id == uniform.id && kotlin.jvm.internal.r.a(this.name, uniform.name) && this.type == uniform.type && kotlin.jvm.internal.r.a(this.value, uniform.value) && Float.compare(this.f11233x, uniform.f11233x) == 0 && Float.compare(this.f11234y, uniform.f11234y) == 0 && Float.compare(this.f11235z, uniform.f11235z) == 0 && Float.compare(this.f11232w, uniform.f11232w) == 0 && this.width == uniform.width && this.height == uniform.height && this.format == uniform.format && this.flip == uniform.flip && kotlin.jvm.internal.r.a(this.wrapMode, uniform.wrapMode) && kotlin.jvm.internal.r.a(this.mediaType, uniform.mediaType) && kotlin.jvm.internal.r.a(this.filterMode, uniform.filterMode) && kotlin.jvm.internal.r.a(this.colorMode, uniform.colorMode);
    }

    public final Integer getColorMode() {
        return this.colorMode;
    }

    public final Integer getFilterMode() {
        return this.filterMode;
    }

    public final boolean getFlip() {
        return this.flip;
    }

    public final int getFormat() {
        return this.format;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getId() {
        return this.id;
    }

    public final String getMediaType() {
        return this.mediaType;
    }

    public final String getName() {
        return this.name;
    }

    public final u getType() {
        return this.type;
    }

    public final Object getValue() {
        return this.value;
    }

    public final float getW() {
        return this.f11232w;
    }

    public final int getWidth() {
        return this.width;
    }

    public final Integer getWrapMode() {
        return this.wrapMode;
    }

    public final float getX() {
        return this.f11233x;
    }

    public final float getY() {
        return this.f11234y;
    }

    public final float getZ() {
        return this.f11235z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v22, types: [int] */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v35 */
    public int hashCode() {
        int iHashCode = ((((Integer.hashCode(this.id) * 31) + this.name.hashCode()) * 31) + this.type.hashCode()) * 31;
        Object obj = this.value;
        int iHashCode2 = (((((((((((((((iHashCode + (obj == null ? 0 : obj.hashCode())) * 31) + Float.hashCode(this.f11233x)) * 31) + Float.hashCode(this.f11234y)) * 31) + Float.hashCode(this.f11235z)) * 31) + Float.hashCode(this.f11232w)) * 31) + Integer.hashCode(this.width)) * 31) + Integer.hashCode(this.height)) * 31) + Integer.hashCode(this.format)) * 31;
        boolean z10 = this.flip;
        ?? r12 = z10;
        if (z10) {
            r12 = 1;
        }
        int i10 = (iHashCode2 + r12) * 31;
        Integer num = this.wrapMode;
        int iHashCode3 = (((i10 + (num == null ? 0 : num.hashCode())) * 31) + this.mediaType.hashCode()) * 31;
        Integer num2 = this.filterMode;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.colorMode;
        return iHashCode4 + (num3 != null ? num3.hashCode() : 0);
    }

    public String toString() {
        return "Uniform(id=" + this.id + ", name=" + this.name + ", type=" + this.type + ", value=" + this.value + ", x=" + this.f11233x + ", y=" + this.f11234y + ", z=" + this.f11235z + ", w=" + this.f11232w + ", width=" + this.width + ", height=" + this.height + ", format=" + this.format + ", flip=" + this.flip + ", wrapMode=" + this.wrapMode + ", mediaType=" + this.mediaType + ", filterMode=" + this.filterMode + ", colorMode=" + this.colorMode + ")";
    }

    public /* synthetic */ Uniform(int i10, String str, u uVar, Object obj, float f10, float f11, float f12, float f13, int i11, int i12, int i13, boolean z10, Integer num, String str2, Integer num2, Integer num3, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, uVar, obj, f10, f11, f12, f13, (i14 & COUIToolTips.ALIGN_TOP) != 0 ? 100 : i11, (i14 & ConfigPackage.FRAME_SIZE_1) != 0 ? 100 : i12, (i14 & 1024) != 0 ? 0 : i13, (i14 & ConfigPackage.FRAME_SIZE_3) != 0 ? true : z10, (i14 & ConfigPackage.FRAME_SIZE_5) != 0 ? 10497 : num, (i14 & ConfigPackage.FRAME_SIZE_6) != 0 ? "" : str2, (i14 & ReaderJsonLexerKt.BATCH_SIZE) != 0 ? 9729 : num2, (i14 & 32768) != 0 ? 32856 : num3);
    }
}
