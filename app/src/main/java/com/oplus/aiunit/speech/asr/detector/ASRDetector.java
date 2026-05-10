package com.oplus.aiunit.speech.asr.detector;

import android.content.Context;
import android.os.Bundle;
import com.oplus.aiunit.core.base.FrameDetector;
import com.oplus.aiunit.core.data.ParamsKt;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.speech.asr.slot.ASRInputSlot;
import com.oplus.aiunit.speech.asr.slot.ASROutputSlot;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class ASRDetector extends FrameDetector<ASRInputSlot, ASROutputSlot> {
    public static final Companion Companion = new Companion(null);
    public static final String PARAM_KEY_ASR_TYPE = "ai::key::asr::asr_type";
    public static final int TYPE_ASR_CALL = 0;
    public static final int TYPE_ASR_GLOBAL = 2;
    public static final int TYPE_ASR_RECORD = 1;

    /* JADX INFO: renamed from: a */
    public int f10939a;

    /* JADX INFO: renamed from: b */
    public boolean f10940b;

    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ASRDetector(Context context, int i10, boolean z10, String detectName) {
        this(context, detectName);
        r.e(context, "context");
        r.e(detectName, "detectName");
        this.f10939a = i10;
        this.f10940b = z10;
        AILog.i("ASRClient", "detectName is:" + detectName);
    }

    @Override // com.oplus.aiunit.core.base.AIContext
    public int[] getConfigMemoryPool() {
        return new int[]{1024, 1024};
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector, com.oplus.aiunit.core.base.AIDetector
    public Bundle getExtras() {
        Bundle extras = super.getExtras();
        r.d(extras, "getExtras(...)");
        extras.putInt(PARAM_KEY_ASR_TYPE, this.f10939a);
        extras.putBoolean(ParamsKt.PARAM_KEY_FILTER_LOCAL_LLM, this.f10940b);
        extras.putBoolean(ParamsKt.PARAM_KEY_FILTER_ATTACH_LOCAL_LLM, this.f10940b);
        return extras;
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector
    public int getUnstableRunningType() {
        if (this.f10940b) {
            return 1;
        }
        return super.getUnstableRunningType();
    }

    public /* synthetic */ ASRDetector(Context context, int i10, boolean z10, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, i10, (i11 & 4) != 0 ? false : z10, str);
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector, com.oplus.aiunit.core.base.AIDetector
    public ASRInputSlot createInputSlot() {
        return new ASRInputSlot(this);
    }

    @Override // com.oplus.aiunit.core.base.FrameDetector, com.oplus.aiunit.core.base.AIDetector
    public ASROutputSlot createOutputSlot() {
        return new ASROutputSlot(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ASRDetector(Context context, String detectName) {
        super(context, detectName);
        r.e(context, "context");
        r.e(detectName, "detectName");
    }
}
