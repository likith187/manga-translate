package com.oplus.aiunit.realtime_asr.client;

import android.content.Context;
import android.util.Log;
import com.oplus.aiunit.core.AIConnector;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.data.DetectName;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.nlp.slot.NlpInputSlot;
import com.oplus.aiunit.realtime_asr.detector.TextSmoothDetector;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class TextSmoothClient extends AIConnector<NlpInputSlot, FrameOutputSlot> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "TextSmoothClient";

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.realtime_asr.client.TextSmoothClient$process$1 */
    public static final class AnonymousClass1 implements AIConnector.Action<String> {
        public final /* synthetic */ String $jsonSource;

        public AnonymousClass1(String str) {
            str = str;
        }

        @Override // com.oplus.aiunit.core.AIConnector.Action
        public String failure(ErrorCode errorCode, String str) {
            return (String) AIConnector.Action.DefaultImpls.failure(this, errorCode, str);
        }

        @Override // com.oplus.aiunit.core.AIConnector.Action
        public String run() {
            FrameInputSlot frameInputSlotCreateInputSlot = TextSmoothClient.this.getDetector().createInputSlot();
            r.d(frameInputSlotCreateInputSlot, "createInputSlot(...)");
            NlpInputSlot nlpInputSlot = (NlpInputSlot) frameInputSlotCreateInputSlot;
            FrameOutputSlot frameOutputSlotCreateOutputSlot = TextSmoothClient.this.getDetector().createOutputSlot();
            r.d(frameOutputSlotCreateOutputSlot, "createOutputSlot(...)");
            nlpInputSlot.setJsonValue(str);
            Log.i(TextSmoothClient.this.getTAG(), "SDK textSmooth process start.");
            TextSmoothClient.this.getDetector().process(nlpInputSlot, frameOutputSlotCreateOutputSlot);
            Log.i(TextSmoothClient.this.getTAG(), "SDK textSmooth process end.");
            return frameOutputSlotCreateOutputSlot.getJsonResult();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextSmoothClient(Context context, String name) {
        super(context, new TextSmoothDetector(context), TAG);
        r.e(context, "context");
        r.e(name, "name");
    }

    public final String getTextSmoothResult(String jsonStr) {
        r.e(jsonStr, "jsonStr");
        Log.i(getTAG(), "SDK method: getTextSmoothResult.");
        return process(jsonStr);
    }

    public final String process(String jsonSource) {
        r.e(jsonSource, "jsonSource");
        Log.i(getTAG(), "SDK method: textSmooth process.");
        return (String) runAction(new AIConnector.Action<String>() { // from class: com.oplus.aiunit.realtime_asr.client.TextSmoothClient.process.1
            public final /* synthetic */ String $jsonSource;

            public AnonymousClass1(String jsonSource2) {
                str = jsonSource2;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public String failure(ErrorCode errorCode, String str) {
                return (String) AIConnector.Action.DefaultImpls.failure(this, errorCode, str);
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public String run() {
                FrameInputSlot frameInputSlotCreateInputSlot = TextSmoothClient.this.getDetector().createInputSlot();
                r.d(frameInputSlotCreateInputSlot, "createInputSlot(...)");
                NlpInputSlot nlpInputSlot = (NlpInputSlot) frameInputSlotCreateInputSlot;
                FrameOutputSlot frameOutputSlotCreateOutputSlot = TextSmoothClient.this.getDetector().createOutputSlot();
                r.d(frameOutputSlotCreateOutputSlot, "createOutputSlot(...)");
                nlpInputSlot.setJsonValue(str);
                Log.i(TextSmoothClient.this.getTAG(), "SDK textSmooth process start.");
                TextSmoothClient.this.getDetector().process(nlpInputSlot, frameOutputSlotCreateOutputSlot);
                Log.i(TextSmoothClient.this.getTAG(), "SDK textSmooth process end.");
                return frameOutputSlotCreateOutputSlot.getJsonResult();
            }
        });
    }

    public /* synthetic */ TextSmoothClient(Context context, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? DetectName.NLP_TEXT_SMOOTH : str);
    }
}
