package com.coui.appcompat.animation.dynamicanimation;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Choreographer;
import androidx.collection.i;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class COUIAnimationHandler {
    private static final long FRAME_DELAY_MS = 10;
    public static final ThreadLocal<COUIAnimationHandler> sAnimatorHandler = new ThreadLocal<>();
    private AnimationFrameCallbackProvider mProvider;
    private final i mDelayedCallbackStartTime = new i();
    final ArrayList<AnimationFrameCallback> mAnimationCallbacks = new ArrayList<>();
    private final AnimationCallbackDispatcher mCallbackDispatcher = new AnimationCallbackDispatcher();
    long mCurrentFrameTime = 0;
    private boolean mListDirty = false;

    class AnimationCallbackDispatcher {
        AnimationCallbackDispatcher() {
        }

        void dispatchAnimationFrame() {
            COUIAnimationHandler.this.mCurrentFrameTime = SystemClock.uptimeMillis();
            COUIAnimationHandler cOUIAnimationHandler = COUIAnimationHandler.this;
            cOUIAnimationHandler.doAnimationFrame(cOUIAnimationHandler.mCurrentFrameTime);
            if (COUIAnimationHandler.this.mAnimationCallbacks.size() > 0) {
                COUIAnimationHandler.this.getProvider().postFrameCallback();
            }
        }
    }

    interface AnimationFrameCallback {
        boolean doAnimationFrame(long j10);
    }

    static abstract class AnimationFrameCallbackProvider {
        final AnimationCallbackDispatcher mDispatcher;

        AnimationFrameCallbackProvider(AnimationCallbackDispatcher animationCallbackDispatcher) {
            this.mDispatcher = animationCallbackDispatcher;
        }

        abstract void postFrameCallback();
    }

    private static class FrameCallbackProvider14 extends AnimationFrameCallbackProvider {
        private final Handler mHandler;
        long mLastFrameTime;
        private final Runnable mRunnable;

        FrameCallbackProvider14(AnimationCallbackDispatcher animationCallbackDispatcher) {
            super(animationCallbackDispatcher);
            this.mLastFrameTime = -1L;
            this.mRunnable = new Runnable() { // from class: com.coui.appcompat.animation.dynamicanimation.COUIAnimationHandler.FrameCallbackProvider14.1
                @Override // java.lang.Runnable
                public void run() {
                    FrameCallbackProvider14.this.mLastFrameTime = SystemClock.uptimeMillis();
                    FrameCallbackProvider14.this.mDispatcher.dispatchAnimationFrame();
                }
            };
            this.mHandler = new Handler(Looper.myLooper());
        }

        @Override // com.coui.appcompat.animation.dynamicanimation.COUIAnimationHandler.AnimationFrameCallbackProvider
        void postFrameCallback() {
            this.mHandler.postDelayed(this.mRunnable, Math.max(COUIAnimationHandler.FRAME_DELAY_MS - (SystemClock.uptimeMillis() - this.mLastFrameTime), 0L));
        }
    }

    private static class FrameCallbackProvider16 extends AnimationFrameCallbackProvider {
        private final Choreographer mChoreographer;
        private final Choreographer.FrameCallback mChoreographerCallback;

        FrameCallbackProvider16(AnimationCallbackDispatcher animationCallbackDispatcher) {
            super(animationCallbackDispatcher);
            this.mChoreographer = Choreographer.getInstance();
            this.mChoreographerCallback = new Choreographer.FrameCallback() { // from class: com.coui.appcompat.animation.dynamicanimation.COUIAnimationHandler.FrameCallbackProvider16.1
                @Override // android.view.Choreographer.FrameCallback
                public void doFrame(long j10) {
                    FrameCallbackProvider16.this.mDispatcher.dispatchAnimationFrame();
                }
            };
        }

        @Override // com.coui.appcompat.animation.dynamicanimation.COUIAnimationHandler.AnimationFrameCallbackProvider
        void postFrameCallback() {
            this.mChoreographer.postFrameCallback(this.mChoreographerCallback);
        }
    }

    COUIAnimationHandler() {
    }

    private void cleanUpList() {
        if (this.mListDirty) {
            for (int size = this.mAnimationCallbacks.size() - 1; size >= 0; size--) {
                if (this.mAnimationCallbacks.get(size) == null) {
                    this.mAnimationCallbacks.remove(size);
                }
            }
            this.mListDirty = false;
        }
    }

    public static long getFrameTime() {
        ThreadLocal<COUIAnimationHandler> threadLocal = sAnimatorHandler;
        if (threadLocal.get() == null) {
            return 0L;
        }
        return threadLocal.get().mCurrentFrameTime;
    }

    public static COUIAnimationHandler getInstance() {
        ThreadLocal<COUIAnimationHandler> threadLocal = sAnimatorHandler;
        if (threadLocal.get() == null) {
            threadLocal.set(new COUIAnimationHandler());
        }
        return threadLocal.get();
    }

    private boolean isCallbackDue(AnimationFrameCallback animationFrameCallback, long j10) {
        Long l10 = (Long) this.mDelayedCallbackStartTime.get(animationFrameCallback);
        if (l10 == null) {
            return true;
        }
        if (l10.longValue() >= j10) {
            return false;
        }
        this.mDelayedCallbackStartTime.remove(animationFrameCallback);
        return true;
    }

    public void addAnimationFrameCallback(AnimationFrameCallback animationFrameCallback, long j10) {
        if (this.mAnimationCallbacks.size() == 0) {
            getProvider().postFrameCallback();
        }
        if (!this.mAnimationCallbacks.contains(animationFrameCallback)) {
            this.mAnimationCallbacks.add(animationFrameCallback);
        }
        if (j10 > 0) {
            this.mDelayedCallbackStartTime.put(animationFrameCallback, Long.valueOf(SystemClock.uptimeMillis() + j10));
        }
    }

    void doAnimationFrame(long j10) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        for (int i10 = 0; i10 < this.mAnimationCallbacks.size(); i10++) {
            AnimationFrameCallback animationFrameCallback = this.mAnimationCallbacks.get(i10);
            if (animationFrameCallback != null && isCallbackDue(animationFrameCallback, jUptimeMillis)) {
                animationFrameCallback.doAnimationFrame(j10);
            }
        }
        cleanUpList();
    }

    AnimationFrameCallbackProvider getProvider() {
        if (this.mProvider == null) {
            this.mProvider = new FrameCallbackProvider16(this.mCallbackDispatcher);
        }
        return this.mProvider;
    }

    public void removeCallback(AnimationFrameCallback animationFrameCallback) {
        this.mDelayedCallbackStartTime.remove(animationFrameCallback);
        int iIndexOf = this.mAnimationCallbacks.indexOf(animationFrameCallback);
        if (iIndexOf >= 0) {
            this.mAnimationCallbacks.set(iIndexOf, null);
            this.mListDirty = true;
        }
    }

    public void setProvider(AnimationFrameCallbackProvider animationFrameCallbackProvider) {
        this.mProvider = animationFrameCallbackProvider;
    }
}
