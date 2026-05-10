package com.coui.appcompat.privacypolicy;

import android.content.Context;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.coui.appcompat.theme.COUIThemeUtils;
import com.support.appcompat.R$attr;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import u.d;

/* JADX INFO: loaded from: classes.dex */
public class MultiFunctionSpan extends ClickableSpan {
    public static final int ALPHA_PRESSED = 77;
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "MultiFunctionSpan";
    private final Context context;
    private boolean isPressed;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public MultiFunctionSpan(Context context) {
        r.e(context, "context");
        this.context = context;
    }

    public final boolean isPressed() {
        return this.isPressed;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View widget) {
        r.e(widget, "widget");
    }

    public final void setPressed(boolean z10) {
        this.isPressed = z10;
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        r.e(textPaint, "textPaint");
        textPaint.setUnderlineText(false);
        int themeAttrColor = COUIThemeUtils.getThemeAttrColor(this.context, R$attr.couiColorLink);
        if (this.isPressed) {
            themeAttrColor = d.u(themeAttrColor, 77);
        }
        textPaint.setColor(themeAttrColor);
    }
}
