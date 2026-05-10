package com.oplus.aiunit.translation.model;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class PhotoTranslateItem {
    private Float angle;
    private int[] backgroundColor;
    private List<Coordinates> coordinates;
    private List<Coordinates> paragraphCoordinates;
    private int paragraphNo;
    private List<Coordinates> polygon_curve;
    private String sourceText;
    private List<? extends Object> tables;
    private int[] textColor;
    private String translateText;

    public PhotoTranslateItem() {
        this(null, null, 3, null);
    }

    public static /* synthetic */ PhotoTranslateItem copy$default(PhotoTranslateItem photoTranslateItem, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = photoTranslateItem.sourceText;
        }
        if ((i10 & 2) != 0) {
            str2 = photoTranslateItem.translateText;
        }
        return photoTranslateItem.copy(str, str2);
    }

    public final String component1() {
        return this.sourceText;
    }

    public final String component2() {
        return this.translateText;
    }

    public final PhotoTranslateItem copy(String str, String str2) {
        return new PhotoTranslateItem(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PhotoTranslateItem)) {
            return false;
        }
        PhotoTranslateItem photoTranslateItem = (PhotoTranslateItem) obj;
        return r.a(this.sourceText, photoTranslateItem.sourceText) && r.a(this.translateText, photoTranslateItem.translateText);
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

    public final List<Coordinates> getPolygon_curve() {
        return this.polygon_curve;
    }

    public final String getSourceText() {
        return this.sourceText;
    }

    public final List<Object> getTables() {
        return this.tables;
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

    public final void setPolygon_curve(List<Coordinates> list) {
        this.polygon_curve = list;
    }

    public final void setSourceText(String str) {
        this.sourceText = str;
    }

    public final void setTables(List<? extends Object> list) {
        this.tables = list;
    }

    public final void setTextColor(int[] iArr) {
        this.textColor = iArr;
    }

    public final void setTranslateText(String str) {
        this.translateText = str;
    }

    public String toString() {
        return "PhotoTranslateItem(sourceText=" + this.sourceText + ", translateText=" + this.translateText + ')';
    }

    public PhotoTranslateItem(String str, String str2) {
        this.sourceText = str;
        this.translateText = str2;
    }

    public /* synthetic */ PhotoTranslateItem(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2);
    }
}
