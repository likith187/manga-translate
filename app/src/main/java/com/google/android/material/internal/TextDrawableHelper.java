package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class TextDrawableHelper {
    private i4.d textAppearance;
    private float textHeight;
    private float textWidth;
    private final TextPaint textPaint = new TextPaint(1);
    private final i4.f fontCallback = new i4.f() { // from class: com.google.android.material.internal.TextDrawableHelper.1
        @Override // i4.f
        public void onFontRetrievalFailed(int i10) {
            TextDrawableHelper.this.textSizeDirty = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) TextDrawableHelper.this.delegate.get();
            if (textDrawableDelegate != null) {
                textDrawableDelegate.onTextSizeChange();
            }
        }

        @Override // i4.f
        public void onFontRetrieved(Typeface typeface, boolean z10) {
            if (z10) {
                return;
            }
            TextDrawableHelper.this.textSizeDirty = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) TextDrawableHelper.this.delegate.get();
            if (textDrawableDelegate != null) {
                textDrawableDelegate.onTextSizeChange();
            }
        }
    };
    private boolean textSizeDirty = true;
    private WeakReference<TextDrawableDelegate> delegate = new WeakReference<>(null);

    public interface TextDrawableDelegate {
        int[] getState();

        boolean onStateChange(int[] iArr);

        void onTextSizeChange();
    }

    public TextDrawableHelper(TextDrawableDelegate textDrawableDelegate) {
        setDelegate(textDrawableDelegate);
    }

    private float calculateTextHeight(String str) {
        if (str == null) {
            return 0.0f;
        }
        return Math.abs(this.textPaint.getFontMetrics().ascent);
    }

    private float calculateTextWidth(CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.textPaint.measureText(charSequence, 0, charSequence.length());
    }

    private void refreshTextDimens(String str) {
        this.textWidth = calculateTextWidth(str);
        this.textHeight = calculateTextHeight(str);
        this.textSizeDirty = false;
    }

    public i4.d getTextAppearance() {
        return this.textAppearance;
    }

    public float getTextHeight(String str) {
        if (!this.textSizeDirty) {
            return this.textHeight;
        }
        refreshTextDimens(str);
        return this.textHeight;
    }

    public TextPaint getTextPaint() {
        return this.textPaint;
    }

    public float getTextWidth(String str) {
        if (!this.textSizeDirty) {
            return this.textWidth;
        }
        refreshTextDimens(str);
        return this.textWidth;
    }

    public boolean isTextWidthDirty() {
        return this.textSizeDirty;
    }

    public void setDelegate(TextDrawableDelegate textDrawableDelegate) {
        this.delegate = new WeakReference<>(textDrawableDelegate);
    }

    public void setTextAppearance(i4.d dVar, Context context) {
        if (this.textAppearance != dVar) {
            this.textAppearance = dVar;
            if (dVar != null) {
                dVar.o(context, this.textPaint, this.fontCallback);
                TextDrawableDelegate textDrawableDelegate = this.delegate.get();
                if (textDrawableDelegate != null) {
                    this.textPaint.drawableState = textDrawableDelegate.getState();
                }
                dVar.n(context, this.textPaint, this.fontCallback);
                this.textSizeDirty = true;
            }
            TextDrawableDelegate textDrawableDelegate2 = this.delegate.get();
            if (textDrawableDelegate2 != null) {
                textDrawableDelegate2.onTextSizeChange();
                textDrawableDelegate2.onStateChange(textDrawableDelegate2.getState());
            }
        }
    }

    public void setTextSizeDirty(boolean z10) {
        this.textSizeDirty = z10;
    }

    public void setTextWidthDirty(boolean z10) {
        this.textSizeDirty = z10;
    }

    public void updateTextPaintDrawState(Context context) {
        this.textAppearance.n(context, this.textPaint, this.fontCallback);
    }
}
