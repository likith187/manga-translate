package com.coui.appcompat.card;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class AnimDisplayInfo extends BaseDisplayInfo {
    private final List<String> animAssets;
    private final List<Integer> animResources;

    public AnimDisplayInfo() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public final List<String> getAnimAssets() {
        return this.animAssets;
    }

    public final List<Integer> getAnimResources() {
        return this.animResources;
    }

    public /* synthetic */ AnimDisplayInfo(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimDisplayInfo(CharSequence title, CharSequence summary) {
        super(title, summary);
        r.e(title, "title");
        r.e(summary, "summary");
        this.animResources = new ArrayList();
        this.animAssets = new ArrayList();
    }

    public /* synthetic */ AnimDisplayInfo(Integer[] numArr, String[] strArr, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(numArr, strArr, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AnimDisplayInfo(Integer[] animResources, String[] choices, int i10) {
        this("", "");
        r.e(animResources, "animResources");
        r.e(choices, "choices");
        this.animResources.clear();
        o.w(this.animResources, animResources);
        setChoices(choices);
        setSelectedIndex(i10);
    }

    public /* synthetic */ AnimDisplayInfo(Integer[] numArr, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(numArr, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AnimDisplayInfo(Integer[] animResources, CharSequence title, CharSequence summary) {
        this(title, summary);
        r.e(animResources, "animResources");
        r.e(title, "title");
        r.e(summary, "summary");
        this.animResources.clear();
        o.w(this.animResources, animResources);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AnimDisplayInfo(Integer[] animResources, String[] animTitles) {
        this("", "");
        r.e(animResources, "animResources");
        r.e(animTitles, "animTitles");
        this.animResources.clear();
        o.w(this.animResources, animResources);
        getAnimTitles().clear();
        o.w(getAnimTitles(), animTitles);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AnimDisplayInfo(String[] animAssets, String[] animTitles) {
        this("", "");
        r.e(animAssets, "animAssets");
        r.e(animTitles, "animTitles");
        this.animAssets.clear();
        o.w(this.animAssets, animAssets);
        getAnimTitles().clear();
        o.w(getAnimTitles(), animTitles);
    }

    public /* synthetic */ AnimDisplayInfo(String[] strArr, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(strArr, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AnimDisplayInfo(String[] animAssets, CharSequence title, CharSequence summary) {
        this(title, summary);
        r.e(animAssets, "animAssets");
        r.e(title, "title");
        r.e(summary, "summary");
        this.animAssets.clear();
        o.w(this.animAssets, animAssets);
    }

    public /* synthetic */ AnimDisplayInfo(String[] strArr, String[] strArr2, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(strArr, strArr2, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AnimDisplayInfo(String[] animAssets, String[] choices, int i10) {
        this("", "");
        r.e(animAssets, "animAssets");
        r.e(choices, "choices");
        this.animAssets.clear();
        o.w(this.animAssets, animAssets);
        setChoices(choices);
        setSelectedIndex(i10);
    }
}
