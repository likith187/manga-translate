package com.coui.appcompat.uiutil;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public abstract class COUIWorkHandler {
    public static final int TYPE_AUDIO = 1;
    public static final int TYPE_DEFAULT = 0;
    private static COUIWorkHandler sAudioInstance;
    private static COUIWorkHandler sDefaultInstance;
    private Handler mHandler;
    private final HandlerThread mHandlerThread;

    private static class COUIAudioWorkHandler extends COUIWorkHandler {
        private static final String TAG = "COUIAudioWorkHandler";

        private COUIAudioWorkHandler() {
            super();
        }

        @Override // com.coui.appcompat.uiutil.COUIWorkHandler
        protected HandlerThread newHandlerInstance() {
            return new HandlerThread(TAG, -16);
        }
    }

    private static class COUIDefaultWorkHandler extends COUIWorkHandler {
        private static final String TAG = "COUIDefaultWorkHandler";

        private COUIDefaultWorkHandler() {
            super();
        }

        @Override // com.coui.appcompat.uiutil.COUIWorkHandler
        protected HandlerThread newHandlerInstance() {
            return new HandlerThread(TAG, 0);
        }
    }

    private void checkMainThread() {
        if (Looper.myLooper() != null && Looper.myLooper() != Looper.getMainLooper()) {
            throw new RuntimeException("Current thread is not origin thread!");
        }
    }

    private void ensureHandler() {
        if (getHandler() != null || getHandlerThread().getLooper() == null) {
            return;
        }
        setHandler(new Handler(getHandlerThread().getLooper()));
    }

    public static COUIWorkHandler getInstance() {
        return getInstance(0);
    }

    protected Handler getHandler() {
        return this.mHandler;
    }

    protected HandlerThread getHandlerThread() {
        return this.mHandlerThread;
    }

    protected abstract HandlerThread newHandlerInstance();

    protected void setHandler(Handler handler) {
        this.mHandler = handler;
    }

    public void start(Runnable runnable) {
        checkMainThread();
        ensureHandler();
        getHandler().post(runnable);
    }

    public void startDelay(Runnable runnable, Long l10) {
        checkMainThread();
        ensureHandler();
        getHandler().postDelayed(runnable, l10.longValue());
    }

    private COUIWorkHandler() {
        HandlerThread handlerThreadNewHandlerInstance = newHandlerInstance();
        this.mHandlerThread = handlerThreadNewHandlerInstance;
        handlerThreadNewHandlerInstance.start();
    }

    public static COUIWorkHandler getInstance(int i10) {
        if (1 == i10) {
            if (sAudioInstance == null) {
                sAudioInstance = new COUIAudioWorkHandler();
            }
            return sAudioInstance;
        }
        if (sDefaultInstance == null) {
            sDefaultInstance = new COUIDefaultWorkHandler();
        }
        return sDefaultInstance;
    }

    public void startDelay(Runnable runnable, Object obj, Long l10) {
        checkMainThread();
        ensureHandler();
        getHandler().postDelayed(runnable, obj, l10.longValue());
    }
}
