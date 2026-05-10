package com.oplus.aiunit.translation.common;

import android.content.Context;
import com.oplus.aiunit.core.base.FrameDetector;
import com.oplus.aiunit.translation.common.BaseInputSlot;
import com.oplus.aiunit.translation.common.BaseOutputSlot;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public class BaseDetector<IP extends BaseInputSlot, OP extends BaseOutputSlot> extends FrameDetector<IP, OP> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseDetector(Context context, String detectorName) {
        super(context, detectorName);
        r.e(context, "context");
        r.e(detectorName, "detectorName");
    }
}
