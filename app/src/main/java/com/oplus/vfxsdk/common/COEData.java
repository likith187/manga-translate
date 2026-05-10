package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class COEData {
    private HashMap<String, AnimatorValue> animParams;
    private long cT;
    private long cV;
    private k expressions;
    private Layer[] layers;
    private int mV;
    private String name;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f11230v;

    public COEData(String name, int i10, int i11, long j10, long j11, Layer[] layers, k expressions, HashMap<String, AnimatorValue> map) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(layers, "layers");
        kotlin.jvm.internal.r.e(expressions, "expressions");
        this.name = name;
        this.f11230v = i10;
        this.mV = i11;
        this.cT = j10;
        this.cV = j11;
        this.layers = layers;
        this.expressions = expressions;
        this.animParams = map;
    }

    public final String component1() {
        return this.name;
    }

    public final int component2() {
        return this.f11230v;
    }

    public final int component3() {
        return this.mV;
    }

    public final long component4() {
        return this.cT;
    }

    public final long component5() {
        return this.cV;
    }

    public final Layer[] component6() {
        return this.layers;
    }

    public final k component7() {
        return this.expressions;
    }

    public final HashMap<String, AnimatorValue> component8() {
        return this.animParams;
    }

    public final COEData copy(String name, int i10, int i11, long j10, long j11, Layer[] layers, k expressions, HashMap<String, AnimatorValue> map) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(layers, "layers");
        kotlin.jvm.internal.r.e(expressions, "expressions");
        return new COEData(name, i10, i11, j10, j11, layers, expressions, map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof COEData)) {
            return false;
        }
        COEData cOEData = (COEData) obj;
        return kotlin.jvm.internal.r.a(this.name, cOEData.name) && this.f11230v == cOEData.f11230v && this.mV == cOEData.mV && this.cT == cOEData.cT && this.cV == cOEData.cV && kotlin.jvm.internal.r.a(this.layers, cOEData.layers) && kotlin.jvm.internal.r.a(this.expressions, cOEData.expressions) && kotlin.jvm.internal.r.a(this.animParams, cOEData.animParams);
    }

    public final HashMap<String, AnimatorValue> getAnimParams() {
        return this.animParams;
    }

    public final long getCT() {
        return this.cT;
    }

    public final long getCV() {
        return this.cV;
    }

    public final k getExpressions() {
        return this.expressions;
    }

    public final Layer[] getLayers() {
        return this.layers;
    }

    public final int getMV() {
        return this.mV;
    }

    public final String getName() {
        return this.name;
    }

    public final int getV() {
        return this.f11230v;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((this.name.hashCode() * 31) + Integer.hashCode(this.f11230v)) * 31) + Integer.hashCode(this.mV)) * 31) + Long.hashCode(this.cT)) * 31) + Long.hashCode(this.cV)) * 31) + Arrays.hashCode(this.layers)) * 31) + this.expressions.hashCode()) * 31;
        HashMap<String, AnimatorValue> map = this.animParams;
        return iHashCode + (map == null ? 0 : map.hashCode());
    }

    public final void setAnimParams(HashMap<String, AnimatorValue> map) {
        this.animParams = map;
    }

    public final void setCT(long j10) {
        this.cT = j10;
    }

    public final void setCV(long j10) {
        this.cV = j10;
    }

    public final void setExpressions(k kVar) {
        kotlin.jvm.internal.r.e(kVar, "<set-?>");
        this.expressions = kVar;
    }

    public final void setLayers(Layer[] layerArr) {
        kotlin.jvm.internal.r.e(layerArr, "<set-?>");
        this.layers = layerArr;
    }

    public final void setMV(int i10) {
        this.mV = i10;
    }

    public final void setName(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.name = str;
    }

    public final void setV(int i10) {
        this.f11230v = i10;
    }

    public String toString() {
        return "COEData(name=" + this.name + ", v=" + this.f11230v + ", mV=" + this.mV + ", cT=" + this.cT + ", cV=" + this.cV + ", layers=" + Arrays.toString(this.layers) + ", expressions=" + this.expressions + ", animParams=" + this.animParams + ")";
    }

    public /* synthetic */ COEData(String str, int i10, int i11, long j10, long j11, Layer[] layerArr, k kVar, HashMap map, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? "" : str, (i12 & 2) != 0 ? 0 : i10, (i12 & 4) != 0 ? 0 : i11, (i12 & 8) != 0 ? 0L : j10, (i12 & 16) != 0 ? 1L : j11, layerArr, kVar, map);
    }
}
