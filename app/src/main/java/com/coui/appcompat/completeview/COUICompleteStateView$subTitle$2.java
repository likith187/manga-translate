package com.coui.appcompat.completeview;

import android.widget.TextView;
import com.support.component.R$id;
import kotlin.jvm.internal.s;
import w8.a;

/* JADX INFO: loaded from: classes.dex */
final class COUICompleteStateView$subTitle$2 extends s implements a {
    final /* synthetic */ COUICompleteStateView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    COUICompleteStateView$subTitle$2(COUICompleteStateView cOUICompleteStateView) {
        super(0);
        this.this$0 = cOUICompleteStateView;
    }

    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final TextView mo8invoke() {
        return (TextView) this.this$0.findViewById(R$id.complete_subtitle);
    }
}
