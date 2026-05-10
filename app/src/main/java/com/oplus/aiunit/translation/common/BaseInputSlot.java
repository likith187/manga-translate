package com.oplus.aiunit.translation.common;

import com.oplus.aiunit.core.base.AIContext;
import com.oplus.aiunit.core.base.FrameInputSlot;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public class BaseInputSlot extends FrameInputSlot {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseInputSlot(AIContext context) {
        super(context);
        r.e(context, "context");
    }
}
