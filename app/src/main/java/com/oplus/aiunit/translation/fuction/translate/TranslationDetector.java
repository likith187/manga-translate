package com.oplus.aiunit.translation.fuction.translate;

import android.content.Context;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.translation.common.BaseDetector;
import com.oplus.aiunit.translation.common.BaseOutputSlot;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class TranslationDetector extends BaseDetector<TranslationInputSlot, BaseOutputSlot> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranslationDetector(Context context, String detectorName) {
        super(context, detectorName);
        r.e(context, "context");
        r.e(detectorName, "detectorName");
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector, com.oplus.aiunit.core.base.AIDetector
    public TranslationInputSlot createInputSlot() {
        AILog.i("ToolboxDetector", "createInputSlot");
        return new TranslationInputSlot(this);
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector, com.oplus.aiunit.core.base.AIDetector
    public BaseOutputSlot createOutputSlot() {
        AILog.i("ToolboxDetector", "createOutputSlot");
        return new BaseOutputSlot(this);
    }
}
