package com.oplus.vfxsdk.naive.coe.engine;

import androidx.annotation.Keep;
import com.oplus.vfxsdk.naive.coe.engine.Event.Event;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface NativeCallback {
    int getID();

    void onAnimEnd(String str);

    void onAnimStart(String str);

    void onAnimUpdate(String str, double d10, float... fArr);

    void onEvent(Event event);

    default void onRenderQuit() {
    }

    default void onRenderStart() {
    }

    void onStart();

    void onUpdate(double d10);
}
