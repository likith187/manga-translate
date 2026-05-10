package com.coui.appcompat.card;

import android.R;
import android.content.Context;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.preference.l;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.support.card.R$layout;
import com.support.preference.R$attr;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class COUICardButtonPreference extends COUIPressFeedbackJumpPreference {
    public static final float CARD_BUTTON_TEXT_SIZE_NORMAL = 12.0f;
    public static final float CARD_BUTTON_TEXT_SIZE_SMALL = 10.0f;
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUICardButtonPreference(Context context) {
        this(context, null, 0, 0, 14, null);
        r.e(context, "context");
    }

    private final int getAvailableWidth(TextView textView) {
        return (textView.getWidth() - textView.getPaddingLeft()) - textView.getPaddingRight();
    }

    private final boolean isOverFlowed(TextView textView) {
        TextPaint paint = textView.getPaint();
        r.d(paint, "paint");
        return paint.measureText(textView.getText().toString()) > ((float) getAvailableWidth(textView));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$0(COUICardButtonPreference this$0, TextView title) {
        r.e(this$0, "this$0");
        r.e(title, "$title");
        if (this$0.isOverFlowed(title)) {
            title.setTextSize(10.0f);
        } else {
            title.setTextSize(12.0f);
        }
    }

    @Override // com.coui.appcompat.card.COUIPressFeedbackJumpPreference, com.coui.appcompat.preference.COUIPreference, androidx.preference.Preference
    public void onBindViewHolder(l holder) {
        r.e(holder, "holder");
        super.onBindViewHolder(holder);
        COUIDarkModeUtil.setForceDarkAllow(holder.itemView, false);
        View viewB = holder.b(R.id.title);
        r.c(viewB, "null cannot be cast to non-null type android.widget.TextView");
        final TextView textView = (TextView) viewB;
        textView.post(new Runnable() { // from class: com.coui.appcompat.card.b
            @Override // java.lang.Runnable
            public final void run() {
                COUICardButtonPreference.onBindViewHolder$lambda$0(this.f7264a, textView);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUICardButtonPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        r.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUICardButtonPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0, 8, null);
        r.e(context, "context");
    }

    public /* synthetic */ COUICardButtonPreference(Context context, AttributeSet attributeSet, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? R$attr.couiJumpPreferenceStyle : i10, (i12 & 8) != 0 ? 0 : i11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUICardButtonPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        r.e(context, "context");
        setLayoutResource(R$layout.coui_component_card_button_preference);
    }
}
