package com.coui.component.responsiveui.layoutgrid;

import java.util.Arrays;
import kotlin.collections.i;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
final class LayoutGrid {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7415a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[][] f7416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7417c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f7418d;

    public LayoutGrid(int i10, int[][] columnsWidth, int i11, int[] margin) {
        r.e(columnsWidth, "columnsWidth");
        r.e(margin, "margin");
        this.f7415a = i10;
        this.f7416b = columnsWidth;
        this.f7417c = i11;
        this.f7418d = margin;
    }

    public static /* synthetic */ LayoutGrid copy$default(LayoutGrid layoutGrid, int i10, int[][] iArr, int i11, int[] iArr2, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = layoutGrid.f7415a;
        }
        if ((i12 & 2) != 0) {
            iArr = layoutGrid.f7416b;
        }
        if ((i12 & 4) != 0) {
            i11 = layoutGrid.f7417c;
        }
        if ((i12 & 8) != 0) {
            iArr2 = layoutGrid.f7418d;
        }
        return layoutGrid.copy(i10, iArr, i11, iArr2);
    }

    public final int component1() {
        return this.f7415a;
    }

    public final int[][] component2() {
        return this.f7416b;
    }

    public final int component3() {
        return this.f7417c;
    }

    public final int[] component4() {
        return this.f7418d;
    }

    public final LayoutGrid copy(int i10, int[][] columnsWidth, int i11, int[] margin) {
        r.e(columnsWidth, "columnsWidth");
        r.e(margin, "margin");
        return new LayoutGrid(i10, columnsWidth, i11, margin);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!r.a(LayoutGrid.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        r.c(obj, "null cannot be cast to non-null type com.coui.component.responsiveui.layoutgrid.LayoutGrid");
        LayoutGrid layoutGrid = (LayoutGrid) obj;
        return this.f7415a == layoutGrid.f7415a && i.d(this.f7416b, layoutGrid.f7416b) && this.f7417c == layoutGrid.f7417c && Arrays.equals(this.f7418d, layoutGrid.f7418d);
    }

    public final int getColumnCount() {
        return this.f7415a;
    }

    public final int[][] getColumnsWidth() {
        return this.f7416b;
    }

    public final int getGutter() {
        return this.f7417c;
    }

    public final int[] getMargin() {
        return this.f7418d;
    }

    public int hashCode() {
        return (((((this.f7415a * 31) + i.b(this.f7416b)) * 31) + this.f7417c) * 31) + Arrays.hashCode(this.f7418d);
    }

    public final void setColumnCount(int i10) {
        this.f7415a = i10;
    }

    public final void setColumnsWidth(int[][] iArr) {
        r.e(iArr, "<set-?>");
        this.f7416b = iArr;
    }

    public final void setGutter(int i10) {
        this.f7417c = i10;
    }

    public final void setMargin(int[] iArr) {
        r.e(iArr, "<set-?>");
        this.f7418d = iArr;
    }

    public String toString() {
        StringBuffer value = new StringBuffer("[LayoutGrid] columnCount = " + this.f7415a + ", ");
        value.append("gutter = " + this.f7417c + ", ");
        value.append("margins = " + i.e(this.f7418d) + ", ");
        value.append("columnWidth = [");
        for (int[] iArr : this.f7416b) {
            value.append(i.e(iArr).toString());
            value.append(", ");
        }
        r.d(value, "value");
        value.delete(kotlin.text.r.Q(value) - 1, kotlin.text.r.Q(value) + 1);
        value.append("]");
        String string = value.toString();
        r.d(string, "value.toString()");
        return string;
    }
}
