package com.coloros.translate.ui.simultaneous.widget;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import com.airbnb.lottie.LottieAnimationView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class CloseRestoreLottieAnimationView extends LottieAnimationView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CloseRestoreLottieAnimationView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        r.e(context, "context");
    }

    @Override // com.airbnb.lottie.LottieAnimationView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View.BaseSavedState baseSavedState = parcelable instanceof View.BaseSavedState ? (View.BaseSavedState) parcelable : null;
        super.onRestoreInstanceState(baseSavedState != null ? baseSavedState.getSuperState() : null);
    }

    public /* synthetic */ CloseRestoreLottieAnimationView(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloseRestoreLottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
    }
}
