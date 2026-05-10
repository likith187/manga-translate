package com.coui.component.responsiveui.status;

import androidx.window.layout.DisplayFeature;
import androidx.window.layout.FoldingFeature;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class WindowFeature {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f7434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f7435b;

    public WindowFeature() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WindowFeature copy$default(WindowFeature windowFeature, List list, List list2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = windowFeature.f7434a;
        }
        if ((i10 & 2) != 0) {
            list2 = windowFeature.f7435b;
        }
        return windowFeature.copy(list, list2);
    }

    public final List<DisplayFeature> component1() {
        return this.f7434a;
    }

    public final List<FoldingFeature> component2() {
        return this.f7435b;
    }

    public final WindowFeature copy(List<? extends DisplayFeature> displayFeatureList, List<? extends FoldingFeature> foldingFeatureList) {
        r.e(displayFeatureList, "displayFeatureList");
        r.e(foldingFeatureList, "foldingFeatureList");
        return new WindowFeature(displayFeatureList, foldingFeatureList);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowFeature)) {
            return false;
        }
        WindowFeature windowFeature = (WindowFeature) obj;
        return r.a(this.f7434a, windowFeature.f7434a) && r.a(this.f7435b, windowFeature.f7435b);
    }

    public final List<DisplayFeature> getDisplayFeatureList() {
        return this.f7434a;
    }

    public final List<FoldingFeature> getFoldingFeatureList() {
        return this.f7435b;
    }

    public int hashCode() {
        return (this.f7434a.hashCode() * 31) + this.f7435b.hashCode();
    }

    public String toString() {
        return "WindowFeature { displayFeature = " + this.f7434a + ", foldingFeature = " + this.f7435b + " }";
    }

    public WindowFeature(List<? extends DisplayFeature> displayFeatureList, List<? extends FoldingFeature> foldingFeatureList) {
        r.e(displayFeatureList, "displayFeatureList");
        r.e(foldingFeatureList, "foldingFeatureList");
        this.f7434a = displayFeatureList;
        this.f7435b = foldingFeatureList;
    }

    public /* synthetic */ WindowFeature(List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? o.h() : list, (i10 & 2) != 0 ? o.h() : list2);
    }
}
