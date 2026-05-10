package com.oplus.aiunit.translation.model;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class ImageTranslateItem {
    private Float angle;
    private int[] backgroundColor;
    private List<Coordinates> coordinates;
    private List<Coordinates> paragraphCoordinates;
    private int paragraphNo;
    private String sourceText;
    private int[] textColor;
    private String translateText;

    public ImageTranslateItem() {
        this(null, null, 3, null);
    }

    public static /* synthetic */ ImageTranslateItem copy$default(ImageTranslateItem imageTranslateItem, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = imageTranslateItem.sourceText;
        }
        if ((i10 & 2) != 0) {
            str2 = imageTranslateItem.translateText;
        }
        return imageTranslateItem.copy(str, str2);
    }

    public final String component1() {
        return this.sourceText;
    }

    public final String component2() {
        return this.translateText;
    }

    public final ImageTranslateItem copy(String str, String str2) {
        return new ImageTranslateItem(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageTranslateItem)) {
            return false;
        }
        ImageTranslateItem imageTranslateItem = (ImageTranslateItem) obj;
        return r.a(this.sourceText, imageTranslateItem.sourceText) && r.a(this.translateText, imageTranslateItem.translateText);
    }

    public final Float getAngle() {
        return this.angle;
    }

    public final int[] getBackgroundColor() {
        return this.backgroundColor;
    }

    public final List<Coordinates> getCoordinates() {
        return this.coordinates;
    }

    public final List<Coordinates> getParagraphCoordinates() {
        return this.paragraphCoordinates;
    }

    public final int getParagraphNo() {
        return this.paragraphNo;
    }

    public final String getSourceText() {
        return this.sourceText;
    }

    public final int[] getTextColor() {
        return this.textColor;
    }

    public final String getTranslateText() {
        return this.translateText;
    }

    public int hashCode() {
        String str = this.sourceText;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.translateText;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setAngle(Float f10) {
        this.angle = f10;
    }

    public final void setBackgroundColor(int[] iArr) {
        this.backgroundColor = iArr;
    }

    public final void setCoordinates(List<Coordinates> list) {
        this.coordinates = list;
    }

    public final void setParagraphCoordinates(List<Coordinates> list) {
        this.paragraphCoordinates = list;
    }

    public final void setParagraphNo(int i10) {
        this.paragraphNo = i10;
    }

    public final void setSourceText(String str) {
        this.sourceText = str;
    }

    public final void setTextColor(int[] iArr) {
        this.textColor = iArr;
    }

    public final void setTranslateText(String str) {
        this.translateText = str;
    }

    public String toString() {
        return "ImageTranslateItem(sourceText=" + this.sourceText + ", translateText=" + this.translateText + ')';
    }

    public ImageTranslateItem(String str, String str2) {
        this.sourceText = str;
        this.translateText = str2;
    }

    public /* synthetic */ ImageTranslateItem(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2);
    }
}
