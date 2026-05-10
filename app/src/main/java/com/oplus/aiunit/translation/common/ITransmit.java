package com.oplus.aiunit.translation.common;

import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.callback.IAIMessenger;

/* JADX INFO: loaded from: classes2.dex */
public interface ITransmit {
    <T> String handleInput(T t10, T t11, String str, IAIMessenger iAIMessenger);

    <T> void handleResult(FramePackage framePackage, T t10, String str);
}
