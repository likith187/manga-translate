package com.oplus.aiunit.translation.model;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class ImageTranslateResult {
    private Integer algorithmModel;
    private double angle;
    private String from;
    private String renderImage;
    private String to;
    private List<ImageTranslateItem> translate;

    public ImageTranslateResult() {
        this(0.0d, 1, null);
    }

    public static /* synthetic */ ImageTranslateResult copy$default(ImageTranslateResult imageTranslateResult, double d10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            d10 = imageTranslateResult.angle;
        }
        return imageTranslateResult.copy(d10);
    }

    public final double component1() {
        return this.angle;
    }

    public final ImageTranslateResult copy(double d10) {
        return new ImageTranslateResult(d10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ImageTranslateResult) && Double.compare(this.angle, ((ImageTranslateResult) obj).angle) == 0;
    }

    public final Integer getAlgorithmModel() {
        return this.algorithmModel;
    }

    public final double getAngle() {
        return this.angle;
    }

    public final String getFrom() {
        return this.from;
    }

    public final String getRenderImage() {
        return this.renderImage;
    }

    public final String getTo() {
        return this.to;
    }

    public final List<ImageTranslateItem> getTranslate() {
        return this.translate;
    }

    public int hashCode() {
        return Double.hashCode(this.angle);
    }

    public final void setAlgorithmModel(Integer num) {
        this.algorithmModel = num;
    }

    public final void setAngle(double d10) {
        this.angle = d10;
    }

    public final void setFrom(String str) {
        this.from = str;
    }

    public final void setRenderImage(String str) {
        this.renderImage = str;
    }

    public final void setTo(String str) {
        this.to = str;
    }

    public final void setTranslate(List<ImageTranslateItem> list) {
        this.translate = list;
    }

    public String toString() {
        return "ImageTranslateResult(angle=" + this.angle + ')';
    }

    public ImageTranslateResult(double d10) {
        this.angle = d10;
    }

    public /* synthetic */ ImageTranslateResult(double d10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0.0d : d10);
    }
}
