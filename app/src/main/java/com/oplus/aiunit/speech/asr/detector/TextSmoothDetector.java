package com.oplus.aiunit.speech.asr.detector;

import android.content.Context;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.core.base.FrameDetector;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.data.DetectName;
import com.oplus.aiunit.nlp.slot.NlpInputSlot;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class TextSmoothDetector extends FrameDetector<NlpInputSlot, FrameOutputSlot> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextSmoothDetector(Context context) {
        super(context, DetectName.NLP_TEXT_SMOOTH);
        r.e(context, "context");
    }

    @Override // com.oplus.aiunit.core.base.AIContext
    public int[] getConfigMemoryPool() {
        return new int[]{ConfigPackage.FRAME_SIZE_1, ConfigPackage.FRAME_SIZE_1};
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector, com.oplus.aiunit.core.base.AIDetector
    public NlpInputSlot createInputSlot() {
        return new NlpInputSlot(this);
    }
}
