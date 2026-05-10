package com.coui.appcompat.completeview;

import com.oplus.anim.EffectiveAnimationView;
import com.support.component.R$id;
import kotlin.jvm.internal.s;
import w8.a;

/* JADX INFO: loaded from: classes.dex */
final class COUICompleteStateView$animView$2 extends s implements a {
    final /* synthetic */ COUICompleteStateView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    COUICompleteStateView$animView$2(COUICompleteStateView cOUICompleteStateView) {
        super(0);
        this.this$0 = cOUICompleteStateView;
    }

    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final EffectiveAnimationView mo8invoke() {
        return (EffectiveAnimationView) this.this$0.findViewById(R$id.complete_anim);
    }
}
