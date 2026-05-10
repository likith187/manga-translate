package com.oplus.aiunit.core.callback;

import com.oplus.aiunit.core.base.FrameOutputSlot;

/* JADX INFO: loaded from: classes.dex */
public interface ProcessCallback<O extends FrameOutputSlot> {
    void onResult(O o10, int i10);
}
