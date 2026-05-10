package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import com.oplus.aiunit.core.ConfigPackage;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.internal.ReaderJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class Layer {
    private HashMap<String, AnimatorValue> animParams;
    private int blendDfactor;
    private int blendDfactorAlpha;
    private int blendSfactor;
    private int blendSfactorAlpha;
    private boolean enable;
    private boolean enableBlend;
    private final String id;
    private final String name;
    private int order;
    private HashMap<String, PassParams[]> params;
    private PostProcessorData[] postProcessor;
    private RendPass[] render;
    private TransformData transform;
    private final String type;

    public Layer(String id, String name, String type, TransformData transformData, PostProcessorData[] postProcessorDataArr, RendPass[] render, HashMap<String, PassParams[]> map, HashMap<String, AnimatorValue> map2, boolean z10, boolean z11, int i10, int i11, int i12, int i13, int i14) {
        kotlin.jvm.internal.r.e(id, "id");
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(render, "render");
        this.id = id;
        this.name = name;
        this.type = type;
        this.transform = transformData;
        this.postProcessor = postProcessorDataArr;
        this.render = render;
        this.params = map;
        this.animParams = map2;
        this.enableBlend = z10;
        this.enable = z11;
        this.blendSfactor = i10;
        this.blendDfactor = i11;
        this.blendSfactorAlpha = i12;
        this.blendDfactorAlpha = i13;
        this.order = i14;
    }

    public final String component1() {
        return this.id;
    }

    public final boolean component10() {
        return this.enable;
    }

    public final int component11() {
        return this.blendSfactor;
    }

    public final int component12() {
        return this.blendDfactor;
    }

    public final int component13() {
        return this.blendSfactorAlpha;
    }

    public final int component14() {
        return this.blendDfactorAlpha;
    }

    public final int component15() {
        return this.order;
    }

    public final String component2() {
        return this.name;
    }

    public final String component3() {
        return this.type;
    }

    public final TransformData component4() {
        return this.transform;
    }

    public final PostProcessorData[] component5() {
        return this.postProcessor;
    }

    public final RendPass[] component6() {
        return this.render;
    }

    public final HashMap<String, PassParams[]> component7() {
        return this.params;
    }

    public final HashMap<String, AnimatorValue> component8() {
        return this.animParams;
    }

    public final boolean component9() {
        return this.enableBlend;
    }

    public final Layer copy(String id, String name, String type, TransformData transformData, PostProcessorData[] postProcessorDataArr, RendPass[] render, HashMap<String, PassParams[]> map, HashMap<String, AnimatorValue> map2, boolean z10, boolean z11, int i10, int i11, int i12, int i13, int i14) {
        kotlin.jvm.internal.r.e(id, "id");
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(render, "render");
        return new Layer(id, name, type, transformData, postProcessorDataArr, render, map, map2, z10, z11, i10, i11, i12, i13, i14);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Layer)) {
            return false;
        }
        Layer layer = (Layer) obj;
        return kotlin.jvm.internal.r.a(this.id, layer.id) && kotlin.jvm.internal.r.a(this.name, layer.name) && kotlin.jvm.internal.r.a(this.type, layer.type) && kotlin.jvm.internal.r.a(this.transform, layer.transform) && kotlin.jvm.internal.r.a(this.postProcessor, layer.postProcessor) && kotlin.jvm.internal.r.a(this.render, layer.render) && kotlin.jvm.internal.r.a(this.params, layer.params) && kotlin.jvm.internal.r.a(this.animParams, layer.animParams) && this.enableBlend == layer.enableBlend && this.enable == layer.enable && this.blendSfactor == layer.blendSfactor && this.blendDfactor == layer.blendDfactor && this.blendSfactorAlpha == layer.blendSfactorAlpha && this.blendDfactorAlpha == layer.blendDfactorAlpha && this.order == layer.order;
    }

    public final HashMap<String, AnimatorValue> getAnimParams() {
        return this.animParams;
    }

    public final int getBlendDfactor() {
        return this.blendDfactor;
    }

    public final int getBlendDfactorAlpha() {
        return this.blendDfactorAlpha;
    }

    public final int getBlendSfactor() {
        return this.blendSfactor;
    }

    public final int getBlendSfactorAlpha() {
        return this.blendSfactorAlpha;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    public final boolean getEnableBlend() {
        return this.enableBlend;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final int getOrder() {
        return this.order;
    }

    public final HashMap<String, PassParams[]> getParams() {
        return this.params;
    }

    public final PostProcessorData[] getPostProcessor() {
        return this.postProcessor;
    }

    public final RendPass[] getRender() {
        return this.render;
    }

    public final TransformData getTransform() {
        return this.transform;
    }

    public final String getType() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v17, types: [int] */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v4 */
    public int hashCode() {
        int iHashCode = ((((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + this.type.hashCode()) * 31;
        TransformData transformData = this.transform;
        int iHashCode2 = (iHashCode + (transformData == null ? 0 : transformData.hashCode())) * 31;
        PostProcessorData[] postProcessorDataArr = this.postProcessor;
        int iHashCode3 = (((iHashCode2 + (postProcessorDataArr == null ? 0 : Arrays.hashCode(postProcessorDataArr))) * 31) + Arrays.hashCode(this.render)) * 31;
        HashMap<String, PassParams[]> map = this.params;
        int iHashCode4 = (iHashCode3 + (map == null ? 0 : map.hashCode())) * 31;
        HashMap<String, AnimatorValue> map2 = this.animParams;
        int iHashCode5 = (iHashCode4 + (map2 != null ? map2.hashCode() : 0)) * 31;
        boolean z10 = this.enableBlend;
        ?? r12 = z10;
        if (z10) {
            r12 = 1;
        }
        int i10 = (iHashCode5 + r12) * 31;
        boolean z11 = this.enable;
        return ((((((((((i10 + (z11 ? 1 : z11)) * 31) + Integer.hashCode(this.blendSfactor)) * 31) + Integer.hashCode(this.blendDfactor)) * 31) + Integer.hashCode(this.blendSfactorAlpha)) * 31) + Integer.hashCode(this.blendDfactorAlpha)) * 31) + Integer.hashCode(this.order);
    }

    public final void setAnimParams(HashMap<String, AnimatorValue> map) {
        this.animParams = map;
    }

    public final void setBlendDfactor(int i10) {
        this.blendDfactor = i10;
    }

    public final void setBlendDfactorAlpha(int i10) {
        this.blendDfactorAlpha = i10;
    }

    public final void setBlendSfactor(int i10) {
        this.blendSfactor = i10;
    }

    public final void setBlendSfactorAlpha(int i10) {
        this.blendSfactorAlpha = i10;
    }

    public final void setEnable(boolean z10) {
        this.enable = z10;
    }

    public final void setEnableBlend(boolean z10) {
        this.enableBlend = z10;
    }

    public final void setOrder(int i10) {
        this.order = i10;
    }

    public final void setParams(HashMap<String, PassParams[]> map) {
        this.params = map;
    }

    public final void setPostProcessor(PostProcessorData[] postProcessorDataArr) {
        this.postProcessor = postProcessorDataArr;
    }

    public final void setRender(RendPass[] rendPassArr) {
        kotlin.jvm.internal.r.e(rendPassArr, "<set-?>");
        this.render = rendPassArr;
    }

    public final void setTransform(TransformData transformData) {
        this.transform = transformData;
    }

    public String toString() {
        return "Layer(id=" + this.id + ", name=" + this.name + ", type=" + this.type + ", transform=" + this.transform + ", postProcessor=" + Arrays.toString(this.postProcessor) + ", render=" + Arrays.toString(this.render) + ", params=" + this.params + ", animParams=" + this.animParams + ", enableBlend=" + this.enableBlend + ", enable=" + this.enable + ", blendSfactor=" + this.blendSfactor + ", blendDfactor=" + this.blendDfactor + ", blendSfactorAlpha=" + this.blendSfactorAlpha + ", blendDfactorAlpha=" + this.blendDfactorAlpha + ", order=" + this.order + ")";
    }

    public /* synthetic */ Layer(String str, String str2, String str3, TransformData transformData, PostProcessorData[] postProcessorDataArr, RendPass[] rendPassArr, HashMap map, HashMap map2, boolean z10, boolean z11, int i10, int i11, int i12, int i13, int i14, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, transformData, postProcessorDataArr, rendPassArr, map, map2, z10, (i15 & ConfigPackage.FRAME_SIZE_1) != 0 ? true : z11, (i15 & 1024) != 0 ? 770 : i10, (i15 & ConfigPackage.FRAME_SIZE_3) != 0 ? 771 : i11, (i15 & ConfigPackage.FRAME_SIZE_5) != 0 ? 770 : i12, (i15 & ConfigPackage.FRAME_SIZE_6) != 0 ? 771 : i13, (i15 & ReaderJsonLexerKt.BATCH_SIZE) != 0 ? 0 : i14);
    }
}
