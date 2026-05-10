package com.coui.appcompat.stepper;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.i;

/* JADX INFO: loaded from: classes.dex */
class LongPressProxy {
    public static final int CLICK_EVENT = 1;
    public static final int LONG_CLICK_EVENT = 2;
    private i mGestureDetectorCompat;
    private View.OnTouchListener mOnTouchListener;
    private Runnable mRunnable;
    private View mView;
    private Handler mHandler = new MyHandler(Looper.getMainLooper());
    private GestureDetector.OnGestureListener mGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.coui.appcompat.stepper.LongPressProxy.1
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            super.onLongPress(motionEvent);
            LongPressProxy.this.mHandler.sendEmptyMessage(2);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            LongPressProxy.this.mHandler.sendEmptyMessage(1);
            return true;
        }
    };

    private class MyHandler extends Handler {
        public MyHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i10 = message.what;
            if (i10 == 1) {
                LongPressProxy.this.mRunnable.run();
            } else if (i10 == 2 && LongPressProxy.this.mView.isEnabled()) {
                LongPressProxy.this.mRunnable.run();
                sendEmptyMessageDelayed(2, 100L);
            }
        }
    }

    public LongPressProxy(View view, Runnable runnable) {
        this.mView = view;
        this.mRunnable = runnable;
        this.mGestureDetectorCompat = new i(this.mView.getContext(), this.mGestureListener);
        init();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void init() {
        this.mView.setOnTouchListener(new View.OnTouchListener() { // from class: com.coui.appcompat.stepper.d
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f7393a.lambda$init$0(view, motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$init$0(View view, MotionEvent motionEvent) {
        View.OnTouchListener onTouchListener = this.mOnTouchListener;
        if (onTouchListener != null) {
            onTouchListener.onTouch(view, motionEvent);
        }
        this.mGestureDetectorCompat.a(motionEvent);
        if (motionEvent.getActionMasked() == 3 || motionEvent.getActionMasked() == 1) {
            this.mHandler.removeMessages(2);
        }
        return true;
    }

    public void release() {
        this.mHandler.removeCallbacksAndMessages(null);
        this.mHandler = null;
        View view = this.mView;
        if (view != null) {
            view.setOnTouchListener(null);
            this.mView.removeCallbacks(this.mRunnable);
            this.mView = null;
        }
        this.mRunnable = null;
        this.mOnTouchListener = null;
    }

    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.mOnTouchListener = onTouchListener;
    }
}
