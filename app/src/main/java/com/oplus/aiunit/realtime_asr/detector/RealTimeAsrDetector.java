package com.oplus.aiunit.realtime_asr.detector;

import android.content.Context;
import android.os.Bundle;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.core.base.FrameDetector;
import com.oplus.aiunit.core.data.ParamsKt;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrOutputSlot;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class RealTimeAsrDetector extends FrameDetector<RealTimeAsrInputSlot, RealTimeAsrOutputSlot> {
    private boolean forceCloud;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealTimeAsrDetector(Context context) {
        super(context, "realtime_asr");
        r.e(context, "context");
    }

    @Override // com.oplus.aiunit.core.base.AIContext
    public int[] getConfigMemoryPool() {
        return new int[]{ConfigPackage.FRAME_SIZE_1, ConfigPackage.FRAME_SIZE_1};
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector, com.oplus.aiunit.core.base.AIDetector
    public Bundle getExtras() {
        Bundle extras = super.getExtras();
        r.d(extras, "getExtras(...)");
        extras.putBoolean(ParamsKt.PARAM_KEY_FILTER_LOCAL_LLM, this.forceCloud);
        extras.putBoolean(ParamsKt.PARAM_KEY_FILTER_ATTACH_LOCAL_LLM, this.forceCloud);
        return extras;
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector
    public int getUnstableRunningType() {
        if (this.forceCloud) {
            return 1;
        }
        return super.getUnstableRunningType();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RealTimeAsrDetector(Context context, boolean z10) {
        this(context);
        r.e(context, "context");
        this.forceCloud = z10;
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector, com.oplus.aiunit.core.base.AIDetector
    public RealTimeAsrInputSlot createInputSlot() {
        return new RealTimeAsrInputSlot(this);
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector, com.oplus.aiunit.core.base.AIDetector
    public RealTimeAsrOutputSlot createOutputSlot() {
        return new RealTimeAsrOutputSlot(this);
    }

    public /* synthetic */ RealTimeAsrDetector(Context context, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? false : z10);
    }
}
