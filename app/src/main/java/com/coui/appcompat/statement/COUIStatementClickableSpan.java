package com.coui.appcompat.statement;

import android.content.Context;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.support.appcompat.R$attr;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public class COUIStatementClickableSpan extends ClickableSpan {
    public static final int ALPHA_PRESSED = 77;
    public static final Companion Companion = new Companion(null);
    private boolean isPressed;
    private final int textColor;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public COUIStatementClickableSpan(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        this.textColor = COUIContextUtil.getAttrColor(context, R$attr.couiColorLink);
    }

    public final boolean isPressed() {
        return this.isPressed;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View widget) {
        kotlin.jvm.internal.r.e(widget, "widget");
        if (widget instanceof TextView) {
            ((TextView) widget).setHighlightColor(0);
        }
    }

    public final void setPressed(boolean z10) {
        this.isPressed = z10;
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint ds) {
        kotlin.jvm.internal.r.e(ds, "ds");
        boolean z10 = this.isPressed;
        int iU = this.textColor;
        if (z10) {
            iU = u.d.u(iU, 77);
        }
        ds.setColor(iU);
    }
}
