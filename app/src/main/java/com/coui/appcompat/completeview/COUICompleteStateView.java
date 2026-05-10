package com.coui.appcompat.completeview;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.widget.TextView;
import com.coui.appcompat.grid.COUIPercentWidthLinearLayout;
import com.oplus.anim.EffectiveAnimationView;
import com.support.component.R$layout;
import com.support.component.R$raw;
import com.support.component.R$styleable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public final class COUICompleteStateView extends COUIPercentWidthLinearLayout {
    public static final int COMPLETE_TYPE_DEFAULT = 0;
    public static final int COMPLETE_TYPE_FAILED = 2;
    public static final int COMPLETE_TYPE_SUCCESS = 1;
    public static final int COMPLETE_TYPE_WAIT = 3;
    public static final Companion Companion = new Companion(null);
    private final j animView$delegate;
    private boolean autoPlay;
    private int completeType;
    private final int failedAnimRes;
    private int rawAnimRes;
    private final j subTitle$delegate;
    private String subtitleText;
    private final int successAnimRes;
    private final j title$delegate;
    private String titleText;
    private final int waitAnimRes;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUICompleteStateView(Context context) {
        this(context, null, 0, 0, 14, null);
        r.e(context, "context");
    }

    private final EffectiveAnimationView getAnimView() {
        Object value = this.animView$delegate.getValue();
        r.d(value, "<get-animView>(...)");
        return (EffectiveAnimationView) value;
    }

    private final TextView getSubTitle() {
        Object value = this.subTitle$delegate.getValue();
        r.d(value, "<get-subTitle>(...)");
        return (TextView) value;
    }

    private final TextView getTitle() {
        Object value = this.title$delegate.getValue();
        r.d(value, "<get-title>(...)");
        return (TextView) value;
    }

    private final void updateAnimRes(int i10) {
        if (i10 > 0) {
            this.rawAnimRes = i10;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
    }

    public final EffectiveAnimationView getAnimationView() {
        return getAnimView();
    }

    public final boolean getAutoPlay() {
        return this.autoPlay;
    }

    public final int getCompleteType() {
        return this.completeType;
    }

    public final String getSubtitleText() {
        return this.subtitleText;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.autoPlay || getAnimView().getVisibility() == 4) {
            return;
        }
        playAnimatorRes();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (getAnimView().p()) {
            getAnimView().i();
        }
    }

    public final void playAnimatorRes() {
        if (getAnimView().p()) {
            getAnimView().i();
        }
        if (this.rawAnimRes > 0) {
            getAnimView().setAnimation(this.rawAnimRes);
            getAnimView().v();
        }
    }

    public final void setAutoPlay(boolean z10) {
        this.autoPlay = z10;
    }

    public final void setCompleteType(int i10) {
        if (i10 == this.completeType) {
            return;
        }
        this.completeType = i10;
        if (i10 == 1) {
            updateAnimRes(this.successAnimRes);
        } else if (i10 == 2) {
            updateAnimRes(this.failedAnimRes);
        } else if (i10 == 3) {
            updateAnimRes(this.waitAnimRes);
        }
        requestLayout();
    }

    public final void setSubtitle(int i10) {
        TextView subTitle = getSubTitle();
        subTitle.setText(i10);
        CharSequence text = subTitle.getText();
        subTitle.setVisibility(text == null || text.length() == 0 ? 8 : 0);
    }

    public final void setSubtitleText(String str) {
        this.subtitleText = str;
    }

    public final void setTitleText(int i10) {
        TextView title = getTitle();
        title.setText(i10);
        CharSequence text = title.getText();
        title.setVisibility(text == null || text.length() == 0 ? 8 : 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUICompleteStateView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        r.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUICompleteStateView(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0, 8, null);
        r.e(context, "context");
    }

    public /* synthetic */ COUICompleteStateView(Context context, AttributeSet attributeSet, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i10, (i12 & 8) != 0 ? 0 : i11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUICompleteStateView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        r.e(context, "context");
        this.successAnimRes = R$raw.complete_page_success_anim;
        this.failedAnimRes = R$raw.complete_page_fail_anim;
        this.waitAnimRes = R$raw.complete_page_wait_anim;
        this.title$delegate = k.b(new COUICompleteStateView$title$2(this));
        this.subTitle$delegate = k.b(new COUICompleteStateView$subTitle$2(this));
        this.animView$delegate = k.b(new COUICompleteStateView$animView$2(this));
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        LayoutInflater.from(context).inflate(R$layout.coui_component_complete_state, this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUICompleteStateView, i10, i11);
        this.autoPlay = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUICompleteStateView_anim_autoPlay, true);
        this.titleText = typedArrayObtainStyledAttributes.getString(R$styleable.COUICompleteStateView_titleText);
        this.subtitleText = typedArrayObtainStyledAttributes.getString(R$styleable.COUICompleteStateView_subtitleText);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUICompleteStateView_anim_rawRes, 0);
        if (resourceId > 0) {
            updateAnimRes(resourceId);
        } else {
            setCompleteType(typedArrayObtainStyledAttributes.getInteger(R$styleable.COUICompleteStateView_completeType, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        getTitle().setText(this.titleText);
        getSubTitle().setText(this.subtitleText);
    }
}
