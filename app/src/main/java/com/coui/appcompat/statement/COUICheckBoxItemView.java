package com.coui.appcompat.statement;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.coui.appcompat.checkbox.COUICheckBox;
import com.support.statement.R$id;
import com.support.statement.R$layout;

/* JADX INFO: loaded from: classes.dex */
public final class COUICheckBoxItemView extends LinearLayout {
    private COUICheckBox checkBox;
    private final PrivacyItem privacyItem;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUICheckBoxItemView(Context context, PrivacyItem privacyItem) {
        super(context);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(privacyItem, "privacyItem");
        this.privacyItem = privacyItem;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.coui_component_layout_privacy_checkbox, this);
        ((TextView) viewInflate.findViewById(R$id.checkbox_title)).setText(privacyItem.getTitleText());
        ((TextView) viewInflate.findViewById(R$id.checkbox_summary)).setText(privacyItem.getSummaryText());
        View viewFindViewById = viewInflate.findViewById(R$id.checkbox);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(R.id.checkbox)");
        this.checkBox = (COUICheckBox) viewFindViewById;
        ((ConstraintLayout) viewInflate.findViewById(R$id.checkbox_layout)).setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.statement.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUICheckBoxItemView.lambda$1$lambda$0(this.f7364a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void lambda$1$lambda$0(COUICheckBoxItemView this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int state = this$0.checkBox.getState();
        if (state == 0) {
            this$0.checkBox.setState(2);
        } else {
            if (state != 2) {
                return;
            }
            this$0.checkBox.setState(0);
        }
    }

    public final PrivacyItem getPrivacyItem() {
        return this.privacyItem;
    }

    public final boolean isChecked() {
        return this.checkBox.getState() == 2;
    }

    public final void setOnStateChangeListener(COUICheckBox.OnStateChangeListener listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.checkBox.setOnStateChangeListener(listener);
    }
}
