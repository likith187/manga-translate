package com.oplus.aiunit.translation.fuction.asr.core;

import android.content.Context;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.translation.common.BaseDetector;
import com.oplus.aiunit.translation.common.BaseOutputSlot;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class RealtimeAsrDetector extends BaseDetector<RealtimeAsrInpuSlot, BaseOutputSlot> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealtimeAsrDetector(Context context, String detectorName) {
        super(context, detectorName);
        r.e(context, "context");
        r.e(detectorName, "detectorName");
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector, com.oplus.aiunit.core.base.AIDetector
    public RealtimeAsrInpuSlot createInputSlot() {
        AILog.i("RealtimeAsrDetector", "createInputSlot");
        return new RealtimeAsrInpuSlot(this);
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector, com.oplus.aiunit.core.base.AIDetector
    public BaseOutputSlot createOutputSlot() {
        AILog.i("RealtimeAsrDetector", "createOutputSlot");
        return new BaseOutputSlot(this);
    }
}
