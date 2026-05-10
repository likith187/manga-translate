package com.coui.appcompat.privacypolicy;

import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.widget.TextView;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class MultiMovementMethod extends LinkMovementMethod {
    private MultiFunctionSpan pressedSpan;

    private final MultiFunctionSpan getClickableSpan(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        int offsetForHorizontal = textView.getLayout().getOffsetForHorizontal(textView.getLayout().getLineForVertical((int) ((motionEvent.getY() - textView.getTotalPaddingTop()) + textView.getScrollY())), (int) ((motionEvent.getX() - textView.getTotalPaddingLeft()) + textView.getScrollX()));
        MultiFunctionSpan[] links = (MultiFunctionSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, MultiFunctionSpan.class);
        r.d(links, "links");
        if (links.length == 0) {
            return null;
        }
        return links[0];
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        if (textView == null || spannable == null || motionEvent == null) {
            return super.onTouchEvent(textView, spannable, motionEvent);
        }
        int action = motionEvent.getAction();
        MultiFunctionSpan multiFunctionSpan = null;
        if (action == 0) {
            MultiFunctionSpan clickableSpan = getClickableSpan(textView, spannable, motionEvent);
            if (clickableSpan != null) {
                clickableSpan.setPressed(true);
                multiFunctionSpan = clickableSpan;
            }
            this.pressedSpan = multiFunctionSpan;
        } else if (action != 2) {
            MultiFunctionSpan multiFunctionSpan2 = this.pressedSpan;
            if (multiFunctionSpan2 != null && multiFunctionSpan2 != null) {
                multiFunctionSpan2.setPressed(false);
            }
            this.pressedSpan = null;
        } else {
            MultiFunctionSpan clickableSpan2 = getClickableSpan(textView, spannable, motionEvent);
            MultiFunctionSpan multiFunctionSpan3 = this.pressedSpan;
            if (multiFunctionSpan3 != null && !r.a(multiFunctionSpan3, clickableSpan2)) {
                MultiFunctionSpan multiFunctionSpan4 = this.pressedSpan;
                if (multiFunctionSpan4 != null) {
                    multiFunctionSpan4.setPressed(false);
                }
                this.pressedSpan = null;
            }
        }
        textView.invalidate();
        return super.onTouchEvent(textView, spannable, motionEvent);
    }
}
