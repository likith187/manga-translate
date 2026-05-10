package com.coui.appcompat.statement;

import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class COUILinkMovementMethod extends LinkMovementMethod {
    public static final COUILinkMovementMethod INSTANCE = new COUILinkMovementMethod();
    private static COUIStatementClickableSpan clickableSpan;

    private COUILinkMovementMethod() {
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView widget, Spannable buffer, MotionEvent event) {
        COUIStatementClickableSpan cOUIStatementClickableSpan;
        kotlin.jvm.internal.r.e(widget, "widget");
        kotlin.jvm.internal.r.e(buffer, "buffer");
        kotlin.jvm.internal.r.e(event, "event");
        if (event.getAction() == 0) {
            int x10 = (int) event.getX();
            int offsetForHorizontal = widget.getLayout().getOffsetForHorizontal(widget.getLayout().getLineForVertical((((int) event.getY()) - widget.getTotalPaddingTop()) + widget.getScrollY()), (x10 - widget.getTotalPaddingLeft()) + widget.getScrollX());
            COUIStatementClickableSpan[] links = (COUIStatementClickableSpan[]) buffer.getSpans(offsetForHorizontal, offsetForHorizontal, COUIStatementClickableSpan.class);
            if (clickableSpan == null) {
                kotlin.jvm.internal.r.d(links, "links");
                if (!(links.length == 0)) {
                    COUIStatementClickableSpan cOUIStatementClickableSpan2 = links[0];
                    cOUIStatementClickableSpan2.setPressed(true);
                    widget.invalidate();
                    clickableSpan = cOUIStatementClickableSpan2;
                }
            }
        } else if ((event.getAction() == 1 || event.getAction() == 3 || event.getAction() == 4) && (cOUIStatementClickableSpan = clickableSpan) != null) {
            cOUIStatementClickableSpan.setPressed(false);
            clickableSpan = null;
            widget.invalidate();
        }
        if (event.getAction() == 1) {
            int x11 = (int) event.getX();
            int y10 = (int) event.getY();
            int totalPaddingLeft = x11 - widget.getTotalPaddingLeft();
            int totalPaddingTop = y10 - widget.getTotalPaddingTop();
            int scrollX = totalPaddingLeft + widget.getScrollX();
            int scrollY = totalPaddingTop + widget.getScrollY();
            int offsetForHorizontal2 = widget.getLayout().getOffsetForHorizontal(widget.getLayout().getLineForVertical(scrollY), scrollX);
            ClickableSpan[] links2 = (ClickableSpan[]) buffer.getSpans(offsetForHorizontal2, offsetForHorizontal2, ClickableSpan.class);
            kotlin.jvm.internal.r.d(links2, "links");
            if (!(links2.length == 0)) {
                ClickableSpan clickableSpan2 = links2[0];
                int spanStart = buffer.getSpanStart(clickableSpan2);
                int spanEnd = buffer.getSpanEnd(clickableSpan2);
                if (offsetForHorizontal2 < spanStart || offsetForHorizontal2 > spanEnd || scrollY > widget.getMeasuredHeight() || scrollY < 0) {
                    Selection.removeSelection(buffer);
                } else {
                    clickableSpan2.onClick(widget);
                }
                return true;
            }
            Selection.removeSelection(buffer);
        }
        return super.onTouchEvent(widget, buffer, event);
    }
}
