package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.core.view.j;
import androidx.core.view.m0;
import c0.h;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import i4.a;
import i4.g;

/* JADX INFO: loaded from: classes.dex */
public final class CollapsingTextHelper {
    private static final boolean DEBUG_DRAW = false;
    private static final String ELLIPSIS_NORMAL = "…";
    private static final float FADE_MODE_THRESHOLD_FRACTION_RELATIVE = 0.5f;
    private static final String TAG = "CollapsingTextHelper";
    private boolean boundsChanged;
    private final Rect collapsedBounds;
    private float collapsedDrawX;
    private float collapsedDrawY;
    private i4.a collapsedFontCallback;
    private float collapsedLetterSpacing;
    private ColorStateList collapsedShadowColor;
    private float collapsedShadowDx;
    private float collapsedShadowDy;
    private float collapsedShadowRadius;
    private float collapsedTextBlend;
    private ColorStateList collapsedTextColor;
    private float collapsedTextWidth;
    private Typeface collapsedTypeface;
    private Typeface collapsedTypefaceBold;
    private Typeface collapsedTypefaceDefault;
    private final RectF currentBounds;
    private float currentDrawX;
    private float currentDrawY;
    private float currentLetterSpacing;
    private int currentOffsetY;
    private int currentShadowColor;
    private float currentShadowDx;
    private float currentShadowDy;
    private float currentShadowRadius;
    private float currentTextSize;
    private Typeface currentTypeface;
    private final Rect expandedBounds;
    private float expandedDrawX;
    private float expandedDrawY;
    private i4.a expandedFontCallback;
    private float expandedFraction;
    private float expandedLetterSpacing;
    private int expandedLineCount;
    private ColorStateList expandedShadowColor;
    private float expandedShadowDx;
    private float expandedShadowDy;
    private float expandedShadowRadius;
    private float expandedTextBlend;
    private ColorStateList expandedTextColor;
    private Bitmap expandedTitleTexture;
    private Typeface expandedTypeface;
    private Typeface expandedTypefaceBold;
    private Typeface expandedTypefaceDefault;
    private boolean fadeModeEnabled;
    private float fadeModeStartFraction;
    private float fadeModeThresholdFraction;
    private boolean isRtl;
    private TimeInterpolator positionInterpolator;
    private float scale;
    private int[] state;
    private StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer;
    private CharSequence text;
    private StaticLayout textLayout;
    private final TextPaint textPaint;
    private TimeInterpolator textSizeInterpolator;
    private CharSequence textToDraw;
    private CharSequence textToDrawCollapsed;
    private Paint texturePaint;
    private final TextPaint tmpPaint;
    private boolean useTexture;
    private final View view;
    private static final boolean USE_SCALING_TEXTURE = false;
    private static final Paint DEBUG_DRAW_PAINT = null;
    private int expandedTextGravity = 16;
    private int collapsedTextGravity = 16;
    private float expandedTextSize = 15.0f;
    private float collapsedTextSize = 15.0f;
    private TextUtils.TruncateAt titleTextEllipsize = TextUtils.TruncateAt.END;
    private boolean isRtlTextDirectionHeuristicsEnabled = true;
    private int maxLines = 1;
    private float lineSpacingAdd = 0.0f;
    private float lineSpacingMultiplier = 1.0f;
    private int hyphenationFrequency = StaticLayoutBuilderCompat.DEFAULT_HYPHENATION_FREQUENCY;

    public CollapsingTextHelper(View view) {
        this.view = view;
        TextPaint textPaint = new TextPaint(129);
        this.textPaint = textPaint;
        this.tmpPaint = new TextPaint(textPaint);
        this.collapsedBounds = new Rect();
        this.expandedBounds = new Rect();
        this.currentBounds = new RectF();
        this.fadeModeThresholdFraction = calculateFadeModeThresholdFraction();
        maybeUpdateFontWeightAdjustment(view.getContext().getResources().getConfiguration());
    }

    private static int blendARGB(int i10, int i11, float f10) {
        float f11 = 1.0f - f10;
        return Color.argb(Math.round((Color.alpha(i10) * f11) + (Color.alpha(i11) * f10)), Math.round((Color.red(i10) * f11) + (Color.red(i11) * f10)), Math.round((Color.green(i10) * f11) + (Color.green(i11) * f10)), Math.round((Color.blue(i10) * f11) + (Color.blue(i11) * f10)));
    }

    private void calculateBaseOffsets(boolean z10) {
        StaticLayout staticLayout;
        calculateUsingTextSize(1.0f, z10);
        CharSequence charSequence = this.textToDraw;
        if (charSequence != null && (staticLayout = this.textLayout) != null) {
            this.textToDrawCollapsed = TextUtils.ellipsize(charSequence, this.textPaint, staticLayout.getWidth(), this.titleTextEllipsize);
        }
        CharSequence charSequence2 = this.textToDrawCollapsed;
        float fMeasureTextWidth = 0.0f;
        if (charSequence2 != null) {
            this.collapsedTextWidth = measureTextWidth(this.textPaint, charSequence2);
        } else {
            this.collapsedTextWidth = 0.0f;
        }
        int iB = j.b(this.collapsedTextGravity, this.isRtl ? 1 : 0);
        int i10 = iB & 112;
        if (i10 == 48) {
            this.collapsedDrawY = this.collapsedBounds.top;
        } else if (i10 != 80) {
            this.collapsedDrawY = this.collapsedBounds.centerY() - ((this.textPaint.descent() - this.textPaint.ascent()) / 2.0f);
        } else {
            this.collapsedDrawY = this.collapsedBounds.bottom + this.textPaint.ascent();
        }
        int i11 = iB & 8388615;
        if (i11 == 1) {
            this.collapsedDrawX = this.collapsedBounds.centerX() - (this.collapsedTextWidth / 2.0f);
        } else if (i11 != 5) {
            this.collapsedDrawX = this.collapsedBounds.left;
        } else {
            this.collapsedDrawX = this.collapsedBounds.right - this.collapsedTextWidth;
        }
        calculateUsingTextSize(0.0f, z10);
        float height = this.textLayout != null ? r10.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.textLayout;
        if (staticLayout2 == null || this.maxLines <= 1) {
            CharSequence charSequence3 = this.textToDraw;
            if (charSequence3 != null) {
                fMeasureTextWidth = measureTextWidth(this.textPaint, charSequence3);
            }
        } else {
            fMeasureTextWidth = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.textLayout;
        this.expandedLineCount = staticLayout3 != null ? staticLayout3.getLineCount() : 0;
        int iB2 = j.b(this.expandedTextGravity, this.isRtl ? 1 : 0);
        int i12 = iB2 & 112;
        if (i12 == 48) {
            this.expandedDrawY = this.expandedBounds.top;
        } else if (i12 != 80) {
            this.expandedDrawY = this.expandedBounds.centerY() - (height / 2.0f);
        } else {
            this.expandedDrawY = (this.expandedBounds.bottom - height) + this.textPaint.descent();
        }
        int i13 = iB2 & 8388615;
        if (i13 == 1) {
            this.expandedDrawX = this.expandedBounds.centerX() - (fMeasureTextWidth / 2.0f);
        } else if (i13 != 5) {
            this.expandedDrawX = this.expandedBounds.left;
        } else {
            this.expandedDrawX = this.expandedBounds.right - fMeasureTextWidth;
        }
        clearTexture();
        setInterpolatedTextSize(this.expandedFraction);
    }

    private void calculateCurrentOffsets() {
        calculateOffsets(this.expandedFraction);
    }

    private float calculateFadeModeTextAlpha(float f10) {
        float f11 = this.fadeModeThresholdFraction;
        return f10 <= f11 ? x3.a.b(1.0f, 0.0f, this.fadeModeStartFraction, f11, f10) : x3.a.b(0.0f, 1.0f, f11, 1.0f, f10);
    }

    private float calculateFadeModeThresholdFraction() {
        float f10 = this.fadeModeStartFraction;
        return f10 + ((1.0f - f10) * 0.5f);
    }

    private boolean calculateIsRtl(CharSequence charSequence) {
        boolean zIsDefaultIsRtl = isDefaultIsRtl();
        return this.isRtlTextDirectionHeuristicsEnabled ? isTextDirectionHeuristicsIsRtl(charSequence, zIsDefaultIsRtl) : zIsDefaultIsRtl;
    }

    private void calculateOffsets(float f10) {
        float f11;
        interpolateBounds(f10);
        if (!this.fadeModeEnabled) {
            this.currentDrawX = lerp(this.expandedDrawX, this.collapsedDrawX, f10, this.positionInterpolator);
            this.currentDrawY = lerp(this.expandedDrawY, this.collapsedDrawY, f10, this.positionInterpolator);
            setInterpolatedTextSize(f10);
            f11 = f10;
        } else if (f10 < this.fadeModeThresholdFraction) {
            this.currentDrawX = this.expandedDrawX;
            this.currentDrawY = this.expandedDrawY;
            setInterpolatedTextSize(0.0f);
            f11 = 0.0f;
        } else {
            this.currentDrawX = this.collapsedDrawX;
            this.currentDrawY = this.collapsedDrawY - Math.max(0, this.currentOffsetY);
            setInterpolatedTextSize(1.0f);
            f11 = 1.0f;
        }
        TimeInterpolator timeInterpolator = x3.a.f16369b;
        setCollapsedTextBlend(1.0f - lerp(0.0f, 1.0f, 1.0f - f10, timeInterpolator));
        setExpandedTextBlend(lerp(1.0f, 0.0f, f10, timeInterpolator));
        if (this.collapsedTextColor != this.expandedTextColor) {
            this.textPaint.setColor(blendARGB(getCurrentExpandedTextColor(), getCurrentCollapsedTextColor(), f11));
        } else {
            this.textPaint.setColor(getCurrentCollapsedTextColor());
        }
        float f12 = this.collapsedLetterSpacing;
        float f13 = this.expandedLetterSpacing;
        if (f12 != f13) {
            this.textPaint.setLetterSpacing(lerp(f13, f12, f10, timeInterpolator));
        } else {
            this.textPaint.setLetterSpacing(f12);
        }
        this.currentShadowRadius = lerp(this.expandedShadowRadius, this.collapsedShadowRadius, f10, null);
        this.currentShadowDx = lerp(this.expandedShadowDx, this.collapsedShadowDx, f10, null);
        this.currentShadowDy = lerp(this.expandedShadowDy, this.collapsedShadowDy, f10, null);
        int iBlendARGB = blendARGB(getCurrentColor(this.expandedShadowColor), getCurrentColor(this.collapsedShadowColor), f10);
        this.currentShadowColor = iBlendARGB;
        this.textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, iBlendARGB);
        if (this.fadeModeEnabled) {
            this.textPaint.setAlpha((int) (calculateFadeModeTextAlpha(f10) * this.textPaint.getAlpha()));
            TextPaint textPaint = this.textPaint;
            textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, b4.a.a(this.currentShadowColor, textPaint.getAlpha()));
        }
        m0.Z(this.view);
    }

    private void calculateUsingTextSize(float f10) {
        calculateUsingTextSize(f10, false);
    }

    private void clearTexture() {
        Bitmap bitmap = this.expandedTitleTexture;
        if (bitmap != null) {
            bitmap.recycle();
            this.expandedTitleTexture = null;
        }
    }

    private StaticLayout createStaticLayout(int i10, float f10, boolean z10) {
        StaticLayout staticLayoutBuild;
        try {
            staticLayoutBuild = StaticLayoutBuilderCompat.obtain(this.text, this.textPaint, (int) f10).setEllipsize(this.titleTextEllipsize).setIsRtl(z10).setAlignment(i10 == 1 ? Layout.Alignment.ALIGN_NORMAL : getMultilineTextLayoutAlignment()).setIncludePad(false).setMaxLines(i10).setLineSpacing(this.lineSpacingAdd, this.lineSpacingMultiplier).setHyphenationFrequency(this.hyphenationFrequency).setStaticLayoutBuilderConfigurer(this.staticLayoutBuilderConfigurer).build();
        } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e10) {
            Log.e(TAG, e10.getCause().getMessage(), e10);
            staticLayoutBuild = null;
        }
        return (StaticLayout) h.e(staticLayoutBuild);
    }

    private void drawMultilineTransition(Canvas canvas, float f10, float f11) {
        int alpha = this.textPaint.getAlpha();
        canvas.translate(f10, f11);
        if (!this.fadeModeEnabled) {
            this.textPaint.setAlpha((int) (this.expandedTextBlend * alpha));
            TextPaint textPaint = this.textPaint;
            textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, b4.a.a(this.currentShadowColor, textPaint.getAlpha()));
            this.textLayout.draw(canvas);
        }
        if (!this.fadeModeEnabled) {
            this.textPaint.setAlpha((int) (this.collapsedTextBlend * alpha));
        }
        TextPaint textPaint2 = this.textPaint;
        textPaint2.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, b4.a.a(this.currentShadowColor, textPaint2.getAlpha()));
        int lineBaseline = this.textLayout.getLineBaseline(0);
        CharSequence charSequence = this.textToDrawCollapsed;
        float f12 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f12, this.textPaint);
        this.textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, this.currentShadowColor);
        if (this.fadeModeEnabled) {
            return;
        }
        String strTrim = this.textToDrawCollapsed.toString().trim();
        if (strTrim.endsWith(ELLIPSIS_NORMAL)) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        String str = strTrim;
        this.textPaint.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.textLayout.getLineEnd(0), str.length()), 0.0f, f12, (Paint) this.textPaint);
    }

    private void ensureExpandedTexture() {
        if (this.expandedTitleTexture != null || this.expandedBounds.isEmpty() || TextUtils.isEmpty(this.textToDraw)) {
            return;
        }
        calculateOffsets(0.0f);
        int width = this.textLayout.getWidth();
        int height = this.textLayout.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.expandedTitleTexture = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.textLayout.draw(new Canvas(this.expandedTitleTexture));
        if (this.texturePaint == null) {
            this.texturePaint = new Paint(3);
        }
    }

    private float getCollapsedTextLeftBound(int i10, int i11) {
        return (i11 == 17 || (i11 & 7) == 1) ? (i10 / 2.0f) - (this.collapsedTextWidth / 2.0f) : ((i11 & 8388613) == 8388613 || (i11 & 5) == 5) ? this.isRtl ? this.collapsedBounds.left : this.collapsedBounds.right - this.collapsedTextWidth : this.isRtl ? this.collapsedBounds.right - this.collapsedTextWidth : this.collapsedBounds.left;
    }

    private float getCollapsedTextRightBound(RectF rectF, int i10, int i11) {
        if (i11 == 17 || (i11 & 7) == 1) {
            return (i10 / 2.0f) + (this.collapsedTextWidth / 2.0f);
        }
        if ((i11 & 8388613) == 8388613 || (i11 & 5) == 5) {
            return this.isRtl ? rectF.left + this.collapsedTextWidth : this.collapsedBounds.right;
        }
        if (this.isRtl) {
            return this.collapsedBounds.right;
        }
        return this.collapsedTextWidth + rectF.left;
    }

    private int getCurrentColor(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.state;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    private int getCurrentExpandedTextColor() {
        return getCurrentColor(this.expandedTextColor);
    }

    private Layout.Alignment getMultilineTextLayoutAlignment() {
        int iB = j.b(this.expandedTextGravity, this.isRtl ? 1 : 0) & 7;
        return iB != 1 ? iB != 5 ? this.isRtl ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : this.isRtl ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER;
    }

    private void getTextPaintCollapsed(TextPaint textPaint) {
        textPaint.setTextSize(this.collapsedTextSize);
        textPaint.setTypeface(this.collapsedTypeface);
        textPaint.setLetterSpacing(this.collapsedLetterSpacing);
    }

    private void getTextPaintExpanded(TextPaint textPaint) {
        textPaint.setTextSize(this.expandedTextSize);
        textPaint.setTypeface(this.expandedTypeface);
        textPaint.setLetterSpacing(this.expandedLetterSpacing);
    }

    private void interpolateBounds(float f10) {
        if (this.fadeModeEnabled) {
            this.currentBounds.set(f10 < this.fadeModeThresholdFraction ? this.expandedBounds : this.collapsedBounds);
            return;
        }
        this.currentBounds.left = lerp(this.expandedBounds.left, this.collapsedBounds.left, f10, this.positionInterpolator);
        this.currentBounds.top = lerp(this.expandedDrawY, this.collapsedDrawY, f10, this.positionInterpolator);
        this.currentBounds.right = lerp(this.expandedBounds.right, this.collapsedBounds.right, f10, this.positionInterpolator);
        this.currentBounds.bottom = lerp(this.expandedBounds.bottom, this.collapsedBounds.bottom, f10, this.positionInterpolator);
    }

    private static boolean isClose(float f10, float f11) {
        return Math.abs(f10 - f11) < 1.0E-5f;
    }

    private boolean isDefaultIsRtl() {
        return m0.v(this.view) == 1;
    }

    private boolean isTextDirectionHeuristicsIsRtl(CharSequence charSequence, boolean z10) {
        return (z10 ? b0.d.f4218d : b0.d.f4217c).a(charSequence, 0, charSequence.length());
    }

    private static float lerp(float f10, float f11, float f12, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f12 = timeInterpolator.getInterpolation(f12);
        }
        return x3.a.a(f10, f11, f12);
    }

    private float measureTextWidth(TextPaint textPaint, CharSequence charSequence) {
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    private static boolean rectEquals(Rect rect, int i10, int i11, int i12, int i13) {
        return rect.left == i10 && rect.top == i11 && rect.right == i12 && rect.bottom == i13;
    }

    private void setCollapsedTextBlend(float f10) {
        this.collapsedTextBlend = f10;
        m0.Z(this.view);
    }

    private boolean setCollapsedTypefaceInternal(Typeface typeface) {
        i4.a aVar = this.collapsedFontCallback;
        if (aVar != null) {
            aVar.a();
        }
        if (this.collapsedTypefaceDefault == typeface) {
            return false;
        }
        this.collapsedTypefaceDefault = typeface;
        Typeface typefaceB = g.b(this.view.getContext().getResources().getConfiguration(), typeface);
        this.collapsedTypefaceBold = typefaceB;
        if (typefaceB == null) {
            typefaceB = this.collapsedTypefaceDefault;
        }
        this.collapsedTypeface = typefaceB;
        return true;
    }

    private void setExpandedTextBlend(float f10) {
        this.expandedTextBlend = f10;
        m0.Z(this.view);
    }

    private boolean setExpandedTypefaceInternal(Typeface typeface) {
        i4.a aVar = this.expandedFontCallback;
        if (aVar != null) {
            aVar.a();
        }
        if (this.expandedTypefaceDefault == typeface) {
            return false;
        }
        this.expandedTypefaceDefault = typeface;
        Typeface typefaceB = g.b(this.view.getContext().getResources().getConfiguration(), typeface);
        this.expandedTypefaceBold = typefaceB;
        if (typefaceB == null) {
            typefaceB = this.expandedTypefaceDefault;
        }
        this.expandedTypeface = typefaceB;
        return true;
    }

    private void setInterpolatedTextSize(float f10) {
        calculateUsingTextSize(f10);
        boolean z10 = USE_SCALING_TEXTURE && this.scale != 1.0f;
        this.useTexture = z10;
        if (z10) {
            ensureExpandedTexture();
        }
        m0.Z(this.view);
    }

    private boolean shouldDrawMultiline() {
        return this.maxLines > 1 && (!this.isRtl || this.fadeModeEnabled) && !this.useTexture;
    }

    public void draw(Canvas canvas) {
        int iSave = canvas.save();
        if (this.textToDraw == null || this.currentBounds.width() <= 0.0f || this.currentBounds.height() <= 0.0f) {
            return;
        }
        this.textPaint.setTextSize(this.currentTextSize);
        float f10 = this.currentDrawX;
        float f11 = this.currentDrawY;
        boolean z10 = this.useTexture && this.expandedTitleTexture != null;
        float f12 = this.scale;
        if (f12 != 1.0f && !this.fadeModeEnabled) {
            canvas.scale(f12, f12, f10, f11);
        }
        if (z10) {
            canvas.drawBitmap(this.expandedTitleTexture, f10, f11, this.texturePaint);
            canvas.restoreToCount(iSave);
            return;
        }
        if (!shouldDrawMultiline() || (this.fadeModeEnabled && this.expandedFraction <= this.fadeModeThresholdFraction)) {
            canvas.translate(f10, f11);
            this.textLayout.draw(canvas);
        } else {
            drawMultilineTransition(canvas, this.currentDrawX - this.textLayout.getLineStart(0), f11);
        }
        canvas.restoreToCount(iSave);
    }

    public void getCollapsedTextActualBounds(RectF rectF, int i10, int i11) {
        this.isRtl = calculateIsRtl(this.text);
        rectF.left = Math.max(getCollapsedTextLeftBound(i10, i11), this.collapsedBounds.left);
        rectF.top = this.collapsedBounds.top;
        rectF.right = Math.min(getCollapsedTextRightBound(rectF, i10, i11), this.collapsedBounds.right);
        rectF.bottom = this.collapsedBounds.top + getCollapsedTextHeight();
    }

    public ColorStateList getCollapsedTextColor() {
        return this.collapsedTextColor;
    }

    public int getCollapsedTextGravity() {
        return this.collapsedTextGravity;
    }

    public float getCollapsedTextHeight() {
        getTextPaintCollapsed(this.tmpPaint);
        return -this.tmpPaint.ascent();
    }

    public float getCollapsedTextSize() {
        return this.collapsedTextSize;
    }

    public Typeface getCollapsedTypeface() {
        Typeface typeface = this.collapsedTypeface;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public int getCurrentCollapsedTextColor() {
        return getCurrentColor(this.collapsedTextColor);
    }

    public int getExpandedLineCount() {
        return this.expandedLineCount;
    }

    public ColorStateList getExpandedTextColor() {
        return this.expandedTextColor;
    }

    public float getExpandedTextFullHeight() {
        getTextPaintExpanded(this.tmpPaint);
        return (-this.tmpPaint.ascent()) + this.tmpPaint.descent();
    }

    public int getExpandedTextGravity() {
        return this.expandedTextGravity;
    }

    public float getExpandedTextHeight() {
        getTextPaintExpanded(this.tmpPaint);
        return -this.tmpPaint.ascent();
    }

    public float getExpandedTextSize() {
        return this.expandedTextSize;
    }

    public Typeface getExpandedTypeface() {
        Typeface typeface = this.expandedTypeface;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public float getExpansionFraction() {
        return this.expandedFraction;
    }

    public float getFadeModeThresholdFraction() {
        return this.fadeModeThresholdFraction;
    }

    public int getHyphenationFrequency() {
        return this.hyphenationFrequency;
    }

    public int getLineCount() {
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    public float getLineSpacingAdd() {
        return this.textLayout.getSpacingAdd();
    }

    public float getLineSpacingMultiplier() {
        return this.textLayout.getSpacingMultiplier();
    }

    public int getMaxLines() {
        return this.maxLines;
    }

    public TimeInterpolator getPositionInterpolator() {
        return this.positionInterpolator;
    }

    public CharSequence getText() {
        return this.text;
    }

    public TextUtils.TruncateAt getTitleTextEllipsize() {
        return this.titleTextEllipsize;
    }

    public boolean isRtlTextDirectionHeuristicsEnabled() {
        return this.isRtlTextDirectionHeuristicsEnabled;
    }

    public final boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.collapsedTextColor;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.expandedTextColor) != null && colorStateList.isStateful());
    }

    public void maybeUpdateFontWeightAdjustment(Configuration configuration) {
        Typeface typeface = this.collapsedTypefaceDefault;
        if (typeface != null) {
            this.collapsedTypefaceBold = g.b(configuration, typeface);
        }
        Typeface typeface2 = this.expandedTypefaceDefault;
        if (typeface2 != null) {
            this.expandedTypefaceBold = g.b(configuration, typeface2);
        }
        Typeface typeface3 = this.collapsedTypefaceBold;
        if (typeface3 == null) {
            typeface3 = this.collapsedTypefaceDefault;
        }
        this.collapsedTypeface = typeface3;
        Typeface typeface4 = this.expandedTypefaceBold;
        if (typeface4 == null) {
            typeface4 = this.expandedTypefaceDefault;
        }
        this.expandedTypeface = typeface4;
        recalculate(true);
    }

    public void recalculate() {
        recalculate(false);
    }

    public void setCollapsedAndExpandedTextColor(ColorStateList colorStateList) {
        if (this.collapsedTextColor == colorStateList && this.expandedTextColor == colorStateList) {
            return;
        }
        this.collapsedTextColor = colorStateList;
        this.expandedTextColor = colorStateList;
        recalculate();
    }

    public void setCollapsedBounds(int i10, int i11, int i12, int i13) {
        if (rectEquals(this.collapsedBounds, i10, i11, i12, i13)) {
            return;
        }
        this.collapsedBounds.set(i10, i11, i12, i13);
        this.boundsChanged = true;
    }

    public void setCollapsedTextAppearance(int i10) {
        i4.d dVar = new i4.d(this.view.getContext(), i10);
        if (dVar.i() != null) {
            this.collapsedTextColor = dVar.i();
        }
        if (dVar.j() != 0.0f) {
            this.collapsedTextSize = dVar.j();
        }
        ColorStateList colorStateList = dVar.f12572c;
        if (colorStateList != null) {
            this.collapsedShadowColor = colorStateList;
        }
        this.collapsedShadowDx = dVar.f12577h;
        this.collapsedShadowDy = dVar.f12578i;
        this.collapsedShadowRadius = dVar.f12579j;
        this.collapsedLetterSpacing = dVar.f12581l;
        i4.a aVar = this.collapsedFontCallback;
        if (aVar != null) {
            aVar.a();
        }
        this.collapsedFontCallback = new i4.a(new a.InterfaceC0154a() { // from class: com.google.android.material.internal.CollapsingTextHelper.1
            @Override // i4.a.InterfaceC0154a
            public void apply(Typeface typeface) {
                CollapsingTextHelper.this.setCollapsedTypeface(typeface);
            }
        }, dVar.e());
        dVar.h(this.view.getContext(), this.collapsedFontCallback);
        recalculate();
    }

    public void setCollapsedTextColor(ColorStateList colorStateList) {
        if (this.collapsedTextColor != colorStateList) {
            this.collapsedTextColor = colorStateList;
            recalculate();
        }
    }

    public void setCollapsedTextGravity(int i10) {
        if (this.collapsedTextGravity != i10) {
            this.collapsedTextGravity = i10;
            recalculate();
        }
    }

    public void setCollapsedTextSize(float f10) {
        if (this.collapsedTextSize != f10) {
            this.collapsedTextSize = f10;
            recalculate();
        }
    }

    public void setCollapsedTypeface(Typeface typeface) {
        if (setCollapsedTypefaceInternal(typeface)) {
            recalculate();
        }
    }

    public void setCurrentOffsetY(int i10) {
        this.currentOffsetY = i10;
    }

    public void setExpandedBounds(int i10, int i11, int i12, int i13) {
        if (rectEquals(this.expandedBounds, i10, i11, i12, i13)) {
            return;
        }
        this.expandedBounds.set(i10, i11, i12, i13);
        this.boundsChanged = true;
    }

    public void setExpandedLetterSpacing(float f10) {
        if (this.expandedLetterSpacing != f10) {
            this.expandedLetterSpacing = f10;
            recalculate();
        }
    }

    public void setExpandedTextAppearance(int i10) {
        i4.d dVar = new i4.d(this.view.getContext(), i10);
        if (dVar.i() != null) {
            this.expandedTextColor = dVar.i();
        }
        if (dVar.j() != 0.0f) {
            this.expandedTextSize = dVar.j();
        }
        ColorStateList colorStateList = dVar.f12572c;
        if (colorStateList != null) {
            this.expandedShadowColor = colorStateList;
        }
        this.expandedShadowDx = dVar.f12577h;
        this.expandedShadowDy = dVar.f12578i;
        this.expandedShadowRadius = dVar.f12579j;
        this.expandedLetterSpacing = dVar.f12581l;
        i4.a aVar = this.expandedFontCallback;
        if (aVar != null) {
            aVar.a();
        }
        this.expandedFontCallback = new i4.a(new a.InterfaceC0154a() { // from class: com.google.android.material.internal.CollapsingTextHelper.2
            @Override // i4.a.InterfaceC0154a
            public void apply(Typeface typeface) {
                CollapsingTextHelper.this.setExpandedTypeface(typeface);
            }
        }, dVar.e());
        dVar.h(this.view.getContext(), this.expandedFontCallback);
        recalculate();
    }

    public void setExpandedTextColor(ColorStateList colorStateList) {
        if (this.expandedTextColor != colorStateList) {
            this.expandedTextColor = colorStateList;
            recalculate();
        }
    }

    public void setExpandedTextGravity(int i10) {
        if (this.expandedTextGravity != i10) {
            this.expandedTextGravity = i10;
            recalculate();
        }
    }

    public void setExpandedTextSize(float f10) {
        if (this.expandedTextSize != f10) {
            this.expandedTextSize = f10;
            recalculate();
        }
    }

    public void setExpandedTypeface(Typeface typeface) {
        if (setExpandedTypefaceInternal(typeface)) {
            recalculate();
        }
    }

    public void setExpansionFraction(float f10) {
        float fA = x.a.a(f10, 0.0f, 1.0f);
        if (fA != this.expandedFraction) {
            this.expandedFraction = fA;
            calculateCurrentOffsets();
        }
    }

    public void setFadeModeEnabled(boolean z10) {
        this.fadeModeEnabled = z10;
    }

    public void setFadeModeStartFraction(float f10) {
        this.fadeModeStartFraction = f10;
        this.fadeModeThresholdFraction = calculateFadeModeThresholdFraction();
    }

    public void setHyphenationFrequency(int i10) {
        this.hyphenationFrequency = i10;
    }

    public void setLineSpacingAdd(float f10) {
        this.lineSpacingAdd = f10;
    }

    public void setLineSpacingMultiplier(float f10) {
        this.lineSpacingMultiplier = f10;
    }

    public void setMaxLines(int i10) {
        if (i10 != this.maxLines) {
            this.maxLines = i10;
            clearTexture();
            recalculate();
        }
    }

    public void setPositionInterpolator(TimeInterpolator timeInterpolator) {
        this.positionInterpolator = timeInterpolator;
        recalculate();
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z10) {
        this.isRtlTextDirectionHeuristicsEnabled = z10;
    }

    public final boolean setState(int[] iArr) {
        this.state = iArr;
        if (!isStateful()) {
            return false;
        }
        recalculate();
        return true;
    }

    public void setStaticLayoutBuilderConfigurer(StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer) {
        if (this.staticLayoutBuilderConfigurer != staticLayoutBuilderConfigurer) {
            this.staticLayoutBuilderConfigurer = staticLayoutBuilderConfigurer;
            recalculate(true);
        }
    }

    public void setText(CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.text, charSequence)) {
            this.text = charSequence;
            this.textToDraw = null;
            clearTexture();
            recalculate();
        }
    }

    public void setTextSizeInterpolator(TimeInterpolator timeInterpolator) {
        this.textSizeInterpolator = timeInterpolator;
        recalculate();
    }

    public void setTitleTextEllipsize(TextUtils.TruncateAt truncateAt) {
        this.titleTextEllipsize = truncateAt;
        recalculate();
    }

    public void setTypefaces(Typeface typeface) {
        boolean collapsedTypefaceInternal = setCollapsedTypefaceInternal(typeface);
        boolean expandedTypefaceInternal = setExpandedTypefaceInternal(typeface);
        if (collapsedTypefaceInternal || expandedTypefaceInternal) {
            recalculate();
        }
    }

    private void calculateUsingTextSize(float f10, boolean z10) {
        float f11;
        float f12;
        Typeface typeface;
        if (this.text == null) {
            return;
        }
        float fWidth = this.collapsedBounds.width();
        float fWidth2 = this.expandedBounds.width();
        if (isClose(f10, 1.0f)) {
            f11 = this.collapsedTextSize;
            f12 = this.collapsedLetterSpacing;
            this.scale = 1.0f;
            typeface = this.collapsedTypeface;
        } else {
            float f13 = this.expandedTextSize;
            float f14 = this.expandedLetterSpacing;
            Typeface typeface2 = this.expandedTypeface;
            if (isClose(f10, 0.0f)) {
                this.scale = 1.0f;
            } else {
                this.scale = lerp(this.expandedTextSize, this.collapsedTextSize, f10, this.textSizeInterpolator) / this.expandedTextSize;
            }
            float f15 = this.collapsedTextSize / this.expandedTextSize;
            fWidth = (z10 || this.fadeModeEnabled || fWidth2 * f15 <= fWidth) ? fWidth2 : Math.min(fWidth / f15, fWidth2);
            f11 = f13;
            f12 = f14;
            typeface = typeface2;
        }
        if (fWidth > 0.0f) {
            boolean z11 = this.currentTextSize != f11;
            boolean z12 = this.currentLetterSpacing != f12;
            boolean z13 = this.currentTypeface != typeface;
            StaticLayout staticLayout = this.textLayout;
            boolean z14 = z11 || z12 || (staticLayout != null && (fWidth > ((float) staticLayout.getWidth()) ? 1 : (fWidth == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z13 || this.boundsChanged;
            this.currentTextSize = f11;
            this.currentLetterSpacing = f12;
            this.currentTypeface = typeface;
            this.boundsChanged = false;
            this.textPaint.setLinearText(this.scale != 1.0f);
            z = z14;
        }
        if (this.textToDraw == null || z) {
            this.textPaint.setTextSize(this.currentTextSize);
            this.textPaint.setTypeface(this.currentTypeface);
            this.textPaint.setLetterSpacing(this.currentLetterSpacing);
            this.isRtl = calculateIsRtl(this.text);
            StaticLayout staticLayoutCreateStaticLayout = createStaticLayout(shouldDrawMultiline() ? this.maxLines : 1, fWidth, this.isRtl);
            this.textLayout = staticLayoutCreateStaticLayout;
            this.textToDraw = staticLayoutCreateStaticLayout.getText();
        }
    }

    public void recalculate(boolean z10) {
        if ((this.view.getHeight() <= 0 || this.view.getWidth() <= 0) && !z10) {
            return;
        }
        calculateBaseOffsets(z10);
        calculateCurrentOffsets();
    }

    public void setCollapsedBounds(Rect rect) {
        setCollapsedBounds(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setExpandedBounds(Rect rect) {
        setExpandedBounds(rect.left, rect.top, rect.right, rect.bottom);
    }
}
