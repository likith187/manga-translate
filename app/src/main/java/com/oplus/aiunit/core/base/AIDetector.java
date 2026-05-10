package com.oplus.aiunit.core.base;

import android.os.Bundle;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.callback.DetectStateCallback;
import com.oplus.aiunit.core.callback.ProcessCallback;
import com.oplus.aiunit.core.protocol.AIProtocol;
import com.oplus.aiunit.core.protocol.common.ErrorCode;

/* JADX INFO: loaded from: classes.dex */
public interface AIDetector<I extends FrameInputSlot, O extends FrameOutputSlot> {
    I createInputSlot();

    O createOutputSlot();

    int getApiLevel();

    int getDetectorState();

    Bundle getExtras();

    String getName();

    default int getProtocol() {
        return AIProtocol.getClientProtocol();
    }

    boolean isSupported();

    ErrorCode process(I i10, O o10);

    void processAsync(I i10, ProcessCallback<O> processCallback);

    int start();

    void startDetectAsync(DetectStateCallback detectStateCallback);

    int stop();

    void stopAsync();
}
