package com.oplus.aiunit.translation.common;

import com.oplus.aiunit.core.base.AIContext;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public class BaseOutputSlot extends FrameOutputSlot {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseOutputSlot(AIContext context) {
        super(context);
        r.e(context, "context");
    }
}
