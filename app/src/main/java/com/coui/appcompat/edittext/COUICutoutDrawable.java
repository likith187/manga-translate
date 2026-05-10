package com.coui.appcompat.edittext;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.EditText;
import androidx.core.view.j;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class COUICutoutDrawable extends GradientDrawable {
    private final RectF mCutoutBounds;
    private final Paint mCutoutPaint = new Paint(1);
    private int mSavedLayer;

    public static final class COUICollapseTextHelper {
        private static final boolean DEBUG_DRAW = false;
        public static final int DEFAULT_HINT_LINES = 1;
        public static final int MAX_HINT_LINES = 3;
        private static final float POINT_001 = 0.001f;
        private static final float SCALE_MY = 1.3f;
        private static final String TAG = "COUICollapseTextHelper";
        private boolean mBoundsChanged;
        private final Rect mCollapsedBounds;
        private float mCollapsedDrawX;
        private float mCollapsedDrawY;
        private ColorStateList mCollapsedTextColor;
        private final RectF mCurrentBounds;
        private float mCurrentDrawX;
        private float mCurrentDrawY;
        private float mCurrentTextSize;
        private boolean mDrawTitle;
        private final Rect mExpandedBounds;
        private float mExpandedDrawX;
        private float mExpandedDrawY;
        private float mExpandedFraction;
        private ColorStateList mExpandedTextColor;
        private Bitmap mExpandedTitleTexture;
        private float mHintPaddingStart;
        private boolean mIsRtl;
        private Interpolator mPositionInterpolator;
        private float mScale;
        private int[] mState;
        private CharSequence mText;
        private final TextPaint mTextPaint;
        private Interpolator mTextSizeInterpolator;
        private CharSequence mTextToDraw;
        private float mTextureAscent;
        private float mTextureDescent;
        private Paint mTexturePaint;
        private final TextPaint mTmpPaint;
        private boolean mUseTexture;
        private final View mView;
        private static final boolean USE_SCALING_TEXTURE = false;
        private static final Paint DEBUG_DRAW_PAINT = null;
        private int mExpandedTextGravity = 16;
        private int mCollapsedTextGravity = 16;
        private float mExpandedTextSize = 30.0f;
        private float mCollapsedTextSize = 30.0f;
        private ArrayList<CharSequence> mTextToDrawList = new ArrayList<>();
        private int mHintLines = 1;

        public COUICollapseTextHelper(View view) {
            this.mView = view;
            TextPaint textPaint = new TextPaint(129);
            this.mTextPaint = textPaint;
            this.mTmpPaint = new TextPaint(textPaint);
            this.mCollapsedBounds = new Rect();
            this.mExpandedBounds = new Rect();
            this.mCurrentBounds = new RectF();
        }

        private static int blendColors(int i10, int i11, float f10) {
            float f11 = 1.0f - f10;
            return Color.argb((int) ((Color.alpha(i10) * f11) + (Color.alpha(i11) * f10)), (int) ((Color.red(i10) * f11) + (Color.red(i11) * f10)), (int) ((Color.green(i10) * f11) + (Color.green(i11) * f10)), (int) ((Color.blue(i10) * f11) + (Color.blue(i11) * f10)));
        }

        private void calculateBaseOffsets() {
            int i10;
            float f10 = this.mCurrentTextSize;
            calculateUsingTextSize(this.mCollapsedTextSize);
            CharSequence charSequence = this.mTextToDraw;
            float fMeasureText = charSequence != null ? this.mTextPaint.measureText(charSequence, 0, charSequence.length()) : 0.0f;
            int iB = j.b(this.mCollapsedTextGravity, this.mIsRtl ? 1 : 0);
            if (this.mHintLines <= 1) {
                int i11 = iB & 112;
                if (i11 != 48) {
                    if (i11 != 80) {
                        this.mCollapsedDrawY = this.mCollapsedBounds.centerY() + (((this.mTextPaint.descent() - this.mTextPaint.ascent()) / 2.0f) - this.mTextPaint.descent());
                    } else {
                        this.mCollapsedDrawY = this.mCollapsedBounds.bottom;
                    }
                } else if (Locale.getDefault().getLanguage().equals("my")) {
                    this.mCollapsedDrawY = this.mCollapsedBounds.top - (this.mTextPaint.ascent() * SCALE_MY);
                } else {
                    this.mCollapsedDrawY = this.mCollapsedBounds.top - this.mTextPaint.ascent();
                }
            } else if (Locale.getDefault().getLanguage().equals("my")) {
                this.mCollapsedDrawY = this.mCollapsedBounds.top - (this.mTextPaint.ascent() * SCALE_MY);
            } else {
                this.mCollapsedDrawY = this.mCollapsedBounds.top - this.mTextPaint.ascent();
            }
            int i12 = iB & 8388615;
            if (i12 == 1) {
                this.mCollapsedDrawX = this.mCollapsedBounds.centerX() - (fMeasureText / 2.0f);
            } else if (i12 != 5) {
                this.mCollapsedDrawX = this.mCollapsedBounds.left;
            } else {
                this.mCollapsedDrawX = this.mCollapsedBounds.right - fMeasureText;
            }
            calculateUsingTextSize(this.mExpandedTextSize);
            CharSequence charSequence2 = this.mTextToDraw;
            float fMeasureText2 = charSequence2 != null ? this.mTextPaint.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
            int iB2 = j.b(this.mExpandedTextGravity, this.mIsRtl ? 1 : 0);
            if (this.mHintLines > 1 || (i10 = iB2 & 112) == 48) {
                this.mExpandedDrawY = this.mExpandedBounds.top - this.mTextPaint.ascent();
            } else if (i10 != 80) {
                this.mExpandedDrawY = this.mExpandedBounds.centerY() + (((this.mTextPaint.getFontMetrics().bottom - this.mTextPaint.getFontMetrics().top) / 2.0f) - this.mTextPaint.getFontMetrics().bottom);
            } else {
                this.mExpandedDrawY = this.mExpandedBounds.bottom;
            }
            int i13 = iB2 & 8388615;
            if (i13 == 1) {
                this.mExpandedDrawX = this.mExpandedBounds.centerX() - (fMeasureText2 / 2.0f);
            } else if (i13 != 5) {
                this.mExpandedDrawX = this.mExpandedBounds.left;
            } else {
                this.mExpandedDrawX = this.mExpandedBounds.right - fMeasureText2;
            }
            clearTexture();
            setInterpolatedTextSize(f10);
        }

        private void calculateCurrentOffsets() {
            calculateOffsets(this.mExpandedFraction);
        }

        private boolean calculateIsRtl(CharSequence charSequence) {
            return isRtlMode();
        }

        private void calculateOffsets(float f10) {
            interpolateBounds(f10);
            this.mCurrentDrawX = lerp(this.mExpandedDrawX, this.mCollapsedDrawX, f10, this.mPositionInterpolator);
            this.mCurrentDrawY = lerp(this.mExpandedDrawY, this.mCollapsedDrawY, f10, this.mPositionInterpolator);
            setInterpolatedTextSize(lerp(this.mExpandedTextSize, this.mCollapsedTextSize, f10, this.mTextSizeInterpolator));
            if (this.mCollapsedTextColor != this.mExpandedTextColor) {
                this.mTextPaint.setColor(blendColors(getCurrentExpandedTextColor(), getCurrentCollapsedTextColor(), f10));
            } else {
                this.mTextPaint.setColor(getCurrentCollapsedTextColor());
            }
            this.mView.postInvalidate();
        }

        private void calculateUsingTextSize(float f10) {
            float f11;
            boolean z10;
            if (this.mText == null) {
                return;
            }
            float fWidth = this.mCollapsedBounds.width();
            float fWidth2 = this.mExpandedBounds.width();
            if (isClose(f10, this.mCollapsedTextSize)) {
                f11 = this.mCollapsedTextSize;
                this.mScale = 1.0f;
            } else {
                float f12 = this.mExpandedTextSize;
                if (isClose(f10, f12)) {
                    this.mScale = 1.0f;
                } else {
                    this.mScale = f10 / this.mExpandedTextSize;
                }
                float f13 = this.mCollapsedTextSize / this.mExpandedTextSize;
                fWidth = fWidth2 * f13 > fWidth ? Math.min(fWidth / f13, fWidth2) : fWidth2;
                f11 = f12;
            }
            if (fWidth > 0.0f) {
                z10 = this.mCurrentTextSize != f11 || this.mBoundsChanged;
                this.mCurrentTextSize = f11;
                this.mBoundsChanged = false;
            } else {
                z10 = false;
            }
            if (this.mTextToDraw == null || z10) {
                this.mTextPaint.setTextSize(this.mCurrentTextSize);
                this.mTextPaint.setLinearText(this.mScale != 1.0f);
                CharSequence charSequence = this.mText;
                TextPaint textPaint = this.mTextPaint;
                float f14 = fWidth - this.mHintPaddingStart;
                TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
                CharSequence charSequenceEllipsize = TextUtils.ellipsize(charSequence, textPaint, f14, truncateAt);
                if (!TextUtils.equals(charSequenceEllipsize, this.mTextToDraw)) {
                    this.mTextToDraw = charSequenceEllipsize;
                }
                if (this.mHintLines > 1 && !TextUtils.equals(charSequenceEllipsize, this.mText) && this.mText.length() > charSequenceEllipsize.length()) {
                    this.mTextToDrawList.clear();
                    int length = charSequenceEllipsize.length();
                    if (TextUtils.equals(charSequenceEllipsize, TextUtils.ellipsize(this.mText.subSequence(0, length), this.mTextPaint, fWidth - this.mHintPaddingStart, truncateAt))) {
                        length--;
                    }
                    this.mTextToDrawList.add(this.mText.subSequence(0, length));
                    CharSequence charSequence2 = this.mText;
                    setTextToDrawList(charSequence2.subSequence(length, charSequence2.length()), fWidth - this.mHintPaddingStart);
                }
            }
            this.mIsRtl = isRtlMode();
        }

        private void clearTexture() {
            Bitmap bitmap = this.mExpandedTitleTexture;
            if (bitmap != null) {
                bitmap.recycle();
                this.mExpandedTitleTexture = null;
            }
        }

        private float constrain(float f10, float f11, float f12) {
            return f10 < f11 ? f11 : f10 > f12 ? f12 : f10;
        }

        private void ensureExpandedTexture() {
            if (this.mExpandedTitleTexture != null || this.mExpandedBounds.isEmpty() || TextUtils.isEmpty(this.mTextToDraw)) {
                return;
            }
            calculateOffsets(0.0f);
            this.mTextureAscent = this.mTextPaint.ascent();
            this.mTextureDescent = this.mTextPaint.descent();
            TextPaint textPaint = this.mTextPaint;
            CharSequence charSequence = this.mTextToDraw;
            int iRound = Math.round(textPaint.measureText(charSequence, 0, charSequence.length()));
            int iRound2 = Math.round(this.mTextureDescent - this.mTextureAscent);
            if (iRound <= 0 || iRound2 <= 0) {
                return;
            }
            this.mExpandedTitleTexture = Bitmap.createBitmap(iRound, iRound2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.mExpandedTitleTexture);
            CharSequence charSequence2 = this.mTextToDraw;
            canvas.drawText(charSequence2, 0, charSequence2.length(), 0.0f, iRound2 - this.mTextPaint.descent(), this.mTextPaint);
            if (this.mTexturePaint == null) {
                this.mTexturePaint = new Paint(3);
            }
        }

        private int getCurrentExpandedTextColor() {
            int[] iArr = this.mState;
            return iArr != null ? this.mExpandedTextColor.getColorForState(iArr, 0) : this.mExpandedTextColor.getDefaultColor();
        }

        private void getTextPaintCollapsed(TextPaint textPaint) {
            textPaint.setTextSize(this.mCollapsedTextSize);
        }

        private void interpolateBounds(float f10) {
            this.mCurrentBounds.left = lerp(this.mExpandedBounds.left, this.mCollapsedBounds.left, f10, this.mPositionInterpolator);
            this.mCurrentBounds.top = lerp(this.mExpandedDrawY, this.mCollapsedDrawY, f10, this.mPositionInterpolator);
            this.mCurrentBounds.right = lerp(this.mExpandedBounds.right, this.mCollapsedBounds.right, f10, this.mPositionInterpolator);
            this.mCurrentBounds.bottom = lerp(this.mExpandedBounds.bottom, this.mCollapsedBounds.bottom, f10, this.mPositionInterpolator);
        }

        private static boolean isClose(float f10, float f11) {
            return Math.abs(f10 - f11) < POINT_001;
        }

        private boolean isRtlMode() {
            return this.mView.getLayoutDirection() == 1;
        }

        private static float lerp(float f10, float f11, float f12) {
            return f10 + (f12 * (f11 - f10));
        }

        private void onBoundsChanged() {
            this.mDrawTitle = this.mCollapsedBounds.width() > 0 && this.mCollapsedBounds.height() > 0 && this.mExpandedBounds.width() > 0 && this.mExpandedBounds.height() > 0;
        }

        private static boolean rectEquals(Rect rect, int i10, int i11, int i12, int i13) {
            return rect.left == i10 && rect.top == i11 && rect.right == i12 && rect.bottom == i13;
        }

        private void setInterpolatedTextSize(float f10) {
            calculateUsingTextSize(f10);
            boolean z10 = USE_SCALING_TEXTURE && this.mScale != 1.0f;
            this.mUseTexture = z10;
            if (z10) {
                ensureExpandedTexture();
            }
            this.mView.postInvalidate();
        }

        private void setTextToDrawList(CharSequence charSequence, float f10) {
            for (int i10 = 1; i10 < this.mHintLines; i10++) {
                TextPaint textPaint = this.mTextPaint;
                TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
                CharSequence charSequenceEllipsize = TextUtils.ellipsize(charSequence, textPaint, f10, truncateAt);
                if (i10 == this.mHintLines - 1 || TextUtils.equals(charSequenceEllipsize, charSequence)) {
                    this.mTextToDrawList.add(charSequenceEllipsize);
                    return;
                }
                int length = charSequenceEllipsize.length();
                if (TextUtils.equals(charSequenceEllipsize, TextUtils.ellipsize(charSequence.subSequence(0, length), this.mTextPaint, f10, truncateAt))) {
                    length--;
                }
                this.mTextToDrawList.add(charSequence.subSequence(0, length));
                charSequence = charSequence.subSequence(length, charSequence.length());
            }
        }

        public float calculateCollapsedTextWidth() {
            if (this.mText == null) {
                return 0.0f;
            }
            getTextPaintCollapsed(this.mTmpPaint);
            TextPaint textPaint = this.mTmpPaint;
            CharSequence charSequence = this.mText;
            return textPaint.measureText(charSequence, 0, charSequence.length());
        }

        public void draw(Canvas canvas) {
            float fAscent;
            int iSave = canvas.save();
            if (this.mTextToDraw == null || !this.mDrawTitle) {
                canvas.drawText(" ", 0.0f, 0.0f, this.mTextPaint);
            } else {
                float f10 = this.mCurrentDrawX;
                float f11 = this.mCurrentDrawY;
                boolean z10 = this.mUseTexture && this.mExpandedTitleTexture != null;
                if (z10) {
                    fAscent = this.mTextureAscent * this.mScale;
                } else {
                    fAscent = this.mTextPaint.ascent() * this.mScale;
                    this.mTextPaint.descent();
                }
                if (z10) {
                    f11 += fAscent;
                }
                float f12 = f11;
                float f13 = this.mScale;
                if (f13 != 1.0f) {
                    canvas.scale(f13, f13, f10, f12);
                }
                if (z10) {
                    canvas.drawBitmap(this.mExpandedTitleTexture, f10, f12, this.mTexturePaint);
                } else if (this.mHintLines != 1 && this.mTextToDrawList.size() > 1) {
                    View view = this.mView;
                    int lineHeight = view instanceof EditText ? ((EditText) view).getLineHeight() : 0;
                    for (int i10 = 0; i10 < this.mTextToDrawList.size(); i10++) {
                        int i11 = lineHeight * i10;
                        CharSequence charSequence = this.mTextToDrawList.get(i10);
                        if (isRtlMode()) {
                            canvas.drawText(charSequence, 0, charSequence.length(), Math.max(0.0f, f10 - this.mHintPaddingStart), f12 + i11, this.mTextPaint);
                        } else {
                            canvas.drawText(charSequence, 0, charSequence.length(), f10 + this.mHintPaddingStart, f12 + i11, this.mTextPaint);
                        }
                    }
                } else if (isRtlMode()) {
                    CharSequence charSequence2 = this.mTextToDraw;
                    canvas.drawText(charSequence2, 0, charSequence2.length(), Math.max(0.0f, f10 - this.mHintPaddingStart), f12, this.mTextPaint);
                } else {
                    CharSequence charSequence3 = this.mTextToDraw;
                    canvas.drawText(charSequence3, 0, charSequence3.length(), f10 + this.mHintPaddingStart, f12, this.mTextPaint);
                }
            }
            canvas.restoreToCount(iSave);
        }

        public Rect getCollapsedBounds() {
            return this.mCollapsedBounds;
        }

        public void getCollapsedTextActualBounds(RectF rectF) {
            boolean zCalculateIsRtl = calculateIsRtl(this.mText);
            float fCalculateCollapsedTextWidth = !zCalculateIsRtl ? this.mCollapsedBounds.left : this.mCollapsedBounds.right - calculateCollapsedTextWidth();
            rectF.left = fCalculateCollapsedTextWidth;
            Rect rect = this.mCollapsedBounds;
            rectF.top = rect.top;
            rectF.right = !zCalculateIsRtl ? fCalculateCollapsedTextWidth + calculateCollapsedTextWidth() : rect.right;
            rectF.bottom = this.mCollapsedBounds.top + getCollapsedTextHeight();
        }

        public ColorStateList getCollapsedTextColor() {
            return this.mCollapsedTextColor;
        }

        public int getCollapsedTextGravity() {
            return this.mCollapsedTextGravity;
        }

        public float getCollapsedTextHeight() {
            getTextPaintCollapsed(this.mTmpPaint);
            return Locale.getDefault().getLanguage().equals("my") ? (-this.mTmpPaint.ascent()) * SCALE_MY : -this.mTmpPaint.ascent();
        }

        float getCollapsedTextSize() {
            return this.mCollapsedTextSize;
        }

        public int getCurrentCollapsedTextColor() {
            ColorStateList colorStateList = this.mCollapsedTextColor;
            if (colorStateList == null) {
                return 0;
            }
            int[] iArr = this.mState;
            return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
        }

        public Rect getExpandedBounds() {
            return this.mExpandedBounds;
        }

        public float getExpandedFraction() {
            return this.mExpandedFraction;
        }

        ColorStateList getExpandedTextColor() {
            return this.mExpandedTextColor;
        }

        public int getExpandedTextGravity() {
            return this.mExpandedTextGravity;
        }

        float getExpandedTextSize() {
            return this.mExpandedTextSize;
        }

        public float getExpansionFraction() {
            return this.mExpandedFraction;
        }

        public float getHintHeight() {
            getTextPaintCollapsed(this.mTmpPaint);
            float fDescent = this.mTmpPaint.descent() - this.mTmpPaint.ascent();
            return Locale.getDefault().getLanguage().equals("my") ? fDescent * SCALE_MY : fDescent;
        }

        CharSequence getText() {
            return this.mText;
        }

        final boolean isStateful() {
            ColorStateList colorStateList;
            ColorStateList colorStateList2 = this.mCollapsedTextColor;
            return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.mExpandedTextColor) != null && colorStateList.isStateful());
        }

        public void recalculate() {
            if (this.mView.getHeight() <= 0 || this.mView.getWidth() <= 0) {
                return;
            }
            calculateBaseOffsets();
            calculateCurrentOffsets();
        }

        public void setCollapsedBounds(int i10, int i11, int i12, int i13) {
            if (rectEquals(this.mCollapsedBounds, i10, i11, i12, i13)) {
                return;
            }
            this.mCollapsedBounds.set(i10, i11, i12, i13);
            this.mBoundsChanged = true;
            onBoundsChanged();
            Log.d(TAG, "setCollapsedBounds: " + this.mCollapsedBounds);
        }

        public void setCollapsedTextAppearance(int i10, ColorStateList colorStateList) {
            this.mCollapsedTextColor = colorStateList;
            this.mCollapsedTextSize = i10;
            recalculate();
        }

        public void setCollapsedTextColor(ColorStateList colorStateList) {
            if (this.mCollapsedTextColor != colorStateList) {
                this.mCollapsedTextColor = colorStateList;
                recalculate();
            }
        }

        public void setCollapsedTextGravity(int i10) {
            if (this.mCollapsedTextGravity != i10) {
                this.mCollapsedTextGravity = i10;
                recalculate();
            }
        }

        public void setCollapsedTextSize(float f10) {
            if (this.mCollapsedTextSize != f10) {
                this.mCollapsedTextSize = f10;
                recalculate();
            }
        }

        public void setExpandedBounds(int i10, int i11, int i12, int i13) {
            if (rectEquals(this.mExpandedBounds, i10, i11, i12, i13)) {
                return;
            }
            this.mExpandedBounds.set(i10, i11, i12, i13);
            this.mBoundsChanged = true;
            onBoundsChanged();
            Log.d(TAG, "setExpandedBounds: " + this.mExpandedBounds);
        }

        public void setExpandedTextColor(ColorStateList colorStateList) {
            if (this.mExpandedTextColor != colorStateList) {
                this.mExpandedTextColor = colorStateList;
                recalculate();
            }
        }

        public void setExpandedTextGravity(int i10) {
            if (this.mExpandedTextGravity != i10) {
                this.mExpandedTextGravity = i10;
                recalculate();
            }
        }

        public void setExpandedTextSize(float f10) {
            if (this.mExpandedTextSize != f10) {
                this.mExpandedTextSize = f10;
                recalculate();
            }
        }

        public void setExpansionFraction(float f10) {
            float fConstrain = constrain(f10, 0.0f, 1.0f);
            if (fConstrain != this.mExpandedFraction) {
                this.mExpandedFraction = fConstrain;
                calculateCurrentOffsets();
            }
        }

        public void setHintLines(int i10) {
            this.mHintLines = Math.min(3, Math.max(1, i10));
        }

        public void setHintPaddingStart(float f10) {
            if (f10 > 0.0f) {
                this.mHintPaddingStart = f10;
            }
        }

        public void setPositionInterpolator(Interpolator interpolator) {
            this.mPositionInterpolator = interpolator;
            recalculate();
        }

        public final boolean setState(int[] iArr) {
            this.mState = iArr;
            if (!isStateful()) {
                return false;
            }
            recalculate();
            return true;
        }

        public void setText(CharSequence charSequence) {
            if (charSequence == null || !charSequence.equals(this.mText)) {
                this.mText = charSequence;
                this.mTextToDraw = null;
                this.mTextToDrawList.clear();
                clearTexture();
                recalculate();
            }
        }

        public void setTextSizeInterpolator(Interpolator interpolator) {
            this.mTextSizeInterpolator = interpolator;
            recalculate();
        }

        public void setTypefaces(Typeface typeface) {
            COUIChangeTextUtil.adaptBoldAndMediumFont((Paint) this.mTextPaint, true);
            COUIChangeTextUtil.adaptBoldAndMediumFont((Paint) this.mTmpPaint, true);
            recalculate();
        }

        private int constrain(int i10, int i11, int i12) {
            return i10 < i11 ? i11 : i10 > i12 ? i12 : i10;
        }

        private static float lerp(float f10, float f11, float f12, Interpolator interpolator) {
            if (interpolator != null) {
                f12 = interpolator.getInterpolation(f12);
            }
            return lerp(f10, f11, f12);
        }
    }

    public COUICutoutDrawable() {
        setPaintStyles();
        this.mCutoutBounds = new RectF();
    }

    private void postDraw(Canvas canvas) {
        if (useHardwareLayer(getCallback())) {
            return;
        }
        canvas.restoreToCount(this.mSavedLayer);
    }

    private void preDraw(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (useHardwareLayer(callback)) {
            ((View) callback).setLayerType(2, null);
        } else {
            saveCanvasLayer(canvas);
        }
    }

    private void saveCanvasLayer(Canvas canvas) {
        this.mSavedLayer = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
    }

    private void setPaintStyles() {
        this.mCutoutPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mCutoutPaint.setColor(-1);
        this.mCutoutPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    private boolean useHardwareLayer(Drawable.Callback callback) {
        return callback instanceof View;
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        preDraw(canvas);
        super.draw(canvas);
        canvas.drawRect(this.mCutoutBounds, this.mCutoutPaint);
        postDraw(canvas);
    }

    public RectF getCutout() {
        return this.mCutoutBounds;
    }

    public boolean hasCutout() {
        return !this.mCutoutBounds.isEmpty();
    }

    public void removeCutout() {
        setCutout(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public void setCutout(float f10, float f11, float f12, float f13) {
        RectF rectF = this.mCutoutBounds;
        if (f10 == rectF.left && f11 == rectF.top && f12 == rectF.right && f13 == rectF.bottom) {
            return;
        }
        rectF.set(f10, f11, f12, f13);
        invalidateSelf();
    }

    public void setCutout(RectF rectF) {
        setCutout(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }
}
