package com.coui.appcompat.card;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.preference.l;
import com.coui.appcompat.preference.COUIJumpPreference;
import com.coui.appcompat.pressfeedback.COUIPressFeedbackHelper;
import com.support.preference.R$attr;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public class COUIPressFeedbackJumpPreference extends COUIJumpPreference {
    private View rootView;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIPressFeedbackJumpPreference(Context context) {
        this(context, null, 0, 0, 14, null);
        r.e(context, "context");
    }

    public static final boolean onBindViewHolder$lambda$0(COUIPressFeedbackJumpPreference this$0, COUIPressFeedbackHelper pressFeedbackHelper, View view, MotionEvent event) {
        r.e(this$0, "this$0");
        r.e(pressFeedbackHelper, "$pressFeedbackHelper");
        r.e(view, "<anonymous parameter 0>");
        r.e(event, "event");
        View view2 = this$0.rootView;
        if (view2 != null && view2.isEnabled()) {
            int action = event.getAction();
            if (action == 0) {
                pressFeedbackHelper.executeFeedbackAnimator(true);
            } else if (action == 1 || action == 3) {
                pressFeedbackHelper.executeFeedbackAnimator(false);
            }
        }
        return false;
    }

    protected final View getRootView() {
        return this.rootView;
    }

    @Override // com.coui.appcompat.preference.COUIPreference, androidx.preference.Preference
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindViewHolder(l holder) {
        r.e(holder, "holder");
        super.onBindViewHolder(holder);
        this.rootView = holder.itemView;
        final COUIPressFeedbackHelper cOUIPressFeedbackHelper = new COUIPressFeedbackHelper(this.rootView, 0);
        View view = this.rootView;
        if (view == null || !view.isEnabled()) {
            View view2 = this.rootView;
            if (view2 != null) {
                view2.setOnTouchListener(null);
                return;
            }
            return;
        }
        View view3 = this.rootView;
        if (view3 != null) {
            view3.setOnTouchListener(new View.OnTouchListener() { // from class: com.coui.appcompat.card.c
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view4, MotionEvent motionEvent) {
                    return COUIPressFeedbackJumpPreference.onBindViewHolder$lambda$0(this.f7266a, cOUIPressFeedbackHelper, view4, motionEvent);
                }
            });
        }
    }

    protected final void setRootView(View view) {
        this.rootView = view;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIPressFeedbackJumpPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        r.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIPressFeedbackJumpPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0, 8, null);
        r.e(context, "context");
    }

    public /* synthetic */ COUIPressFeedbackJumpPreference(Context context, AttributeSet attributeSet, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? R$attr.couiJumpPreferenceStyle : i10, (i12 & 8) != 0 ? 0 : i11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUIPressFeedbackJumpPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        r.e(context, "context");
    }
}
