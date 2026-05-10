package com.oplus.aiunit.vision.client;

import android.content.Context;
import android.graphics.Bitmap;
import com.oplus.aiunit.core.AIConnector;
import com.oplus.aiunit.core.base.BitmapInputSlot;
import com.oplus.aiunit.core.base.FrameDetector;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public class VisionClient<I extends BitmapInputSlot, O extends FrameOutputSlot> extends AIConnector<I, O> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VisionClient(Context context, FrameDetector<I, O> detector, String tag) {
        super(context, detector, tag);
        r.e(context, "context");
        r.e(detector, "detector");
        r.e(tag, "tag");
    }

    public static /* synthetic */ FrameOutputSlot processInner$default(VisionClient visionClient, Bitmap bitmap, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: processInner");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return visionClient.processInner(bitmap, z10);
    }

    public final O processEngine(final Bitmap bitmap) {
        r.e(bitmap, "bitmap");
        return (O) runAction(new AIConnector.Action<O>(this) { // from class: com.oplus.aiunit.vision.client.VisionClient.processEngine.1
            final /* synthetic */ VisionClient<I, O> this$0;

            {
                this.this$0 = this;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public O failure(ErrorCode errorCode, String str) {
                return (O) AIConnector.Action.DefaultImpls.failure(this, errorCode, str);
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public O run() {
                FrameInputSlot frameInputSlotCreateInputSlot = this.this$0.getDetector().createInputSlot();
                r.d(frameInputSlotCreateInputSlot, "createInputSlot(...)");
                BitmapInputSlot bitmapInputSlot = (BitmapInputSlot) frameInputSlotCreateInputSlot;
                if (bitmapInputSlot.setTargetBitmap(bitmap) != 0) {
                    return null;
                }
                O o10 = (O) this.this$0.getDetector().createOutputSlot();
                r.d(o10, "createOutputSlot(...)");
                this.this$0.getDetector().process(bitmapInputSlot, o10);
                return o10;
            }
        });
    }

    public final O processInner(final Bitmap bitmap, final boolean z10) {
        r.e(bitmap, "bitmap");
        return (O) runAction(new AIConnector.Action<O>(this) { // from class: com.oplus.aiunit.vision.client.VisionClient.processInner.1
            final /* synthetic */ VisionClient<I, O> this$0;

            {
                this.this$0 = this;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public O failure(ErrorCode errorCode, String str) {
                return (O) AIConnector.Action.DefaultImpls.failure(this, errorCode, str);
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public O run() {
                FrameInputSlot frameInputSlotCreateInputSlot = this.this$0.getDetector().createInputSlot();
                r.d(frameInputSlotCreateInputSlot, "createInputSlot(...)");
                BitmapInputSlot bitmapInputSlot = (BitmapInputSlot) frameInputSlotCreateInputSlot;
                if (bitmapInputSlot.setValue(bitmap, z10) != 0) {
                    return null;
                }
                O o10 = (O) this.this$0.getDetector().createOutputSlot();
                r.d(o10, "createOutputSlot(...)");
                this.this$0.getDetector().process(bitmapInputSlot, o10);
                return o10;
            }
        });
    }
}
