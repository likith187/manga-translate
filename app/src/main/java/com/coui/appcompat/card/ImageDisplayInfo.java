package com.coui.appcompat.card;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ImageDisplayInfo extends BaseDisplayInfo {
    private final Integer[] imageResources;

    public /* synthetic */ ImageDisplayInfo(Integer[] numArr, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(numArr, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2);
    }

    public final Integer[] getImageResources() {
        return this.imageResources;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageDisplayInfo(Integer[] imageResources, CharSequence title, CharSequence summary) {
        super(title, summary);
        r.e(imageResources, "imageResources");
        r.e(title, "title");
        r.e(summary, "summary");
        this.imageResources = imageResources;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImageDisplayInfo(Integer[] imageResources, String[] choices) {
        this(imageResources, "", "");
        r.e(imageResources, "imageResources");
        r.e(choices, "choices");
        setChoices(choices);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImageDisplayInfo(Integer[] imageResources, List<String> animTitles) {
        this(imageResources, "", "");
        r.e(imageResources, "imageResources");
        r.e(animTitles, "animTitles");
        getAnimTitles().clear();
        getAnimTitles().addAll(animTitles);
    }
}
