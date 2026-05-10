package com.coui.appcompat.imageview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatImageView;
import com.coui.appcompat.roundRect.COUIRoundRectUtil;
import com.support.appcompat.R$color;
import com.support.appcompat.R$dimen;
import com.support.appcompat.R$drawable;
import com.support.appcompat.R$styleable;
import e.a;

/* JADX INFO: loaded from: classes.dex */
public class COUIRoundImageView extends AppCompatImageView {
    private static final int BORDER_CIRCLE_WIDTH = 5;
    private static final int CIRCLE = 0;
    private static final int DEFAULT_BORDER_RADIUS = 1;
    private static final int DEFAULT_STROKE_RADIUS = 1;
    private static final int DEFAULT_STROKE_WIDTH = 2;
    public static final int ICON_LARGE = 3;
    public static final int ICON_LARGE_RADIUS = 16;
    public static final int ICON_MEDIUM = 2;
    private static final int ICON_SIZE_TYPE_DEFAULT = 0;
    public static final int ICON_SMALL = 1;
    public static final int ICON_SMALL_RADIUS = 14;
    private static final float ONE = 1.0f;
    private static final float POINT_FIVE = 0.5f;
    private static final int ROUND = 1;
    private static final int SHADOW = 2;
    private static final float TWO = 2.0f;
    private static final int ZERO = 0;
    private Bitmap mBitmap;
    private int mBitmapHeight;
    private Paint mBitmapPaint;
    private BitmapShader mBitmapShader;
    private int mBitmapSize;
    private int mBitmapWidth;
    private Paint mBorderPaint;
    private int mBorderRadius;
    private final RectF mBorderRect;
    private int mBorderWidth;
    private Context mContext;
    private Drawable mDefaultDrawable;
    private Drawable mDrawable;
    private boolean mHasBorder;
    private boolean mHasDefaultPic;
    private boolean mIsImageView;
    private Matrix mMatrix;
    private RectF mOutBorderRect;
    private Paint mOutCircle;
    private int mOutCircleColor;
    private float mRadius;
    private int mRefreshStyle;
    private RectF mRoundRect;
    private float mScale;
    private Bitmap mShadowBitmap;
    private BitmapShader mShadowBitmapShader;
    private int mShadowBorderWidth;
    private Drawable mShadowDrawable;
    private int mShadowDrawableHeight;
    private int mShadowDrawableWidth;
    private final RectF mShadowInsideRect;
    private int mSourceDrawableHeight;
    private int mSourceDrawableWidth;
    private RectF mSourceRect;
    private int mType;
    private int mWidth;

    public COUIRoundImageView(Context context) {
        super(context);
        this.mShadowInsideRect = new RectF();
        this.mBorderRect = new RectF();
        this.mBorderWidth = 2;
        this.mMatrix = new Matrix();
        this.mContext = context;
        Paint paint = new Paint();
        this.mBitmapPaint = paint;
        paint.setAntiAlias(true);
        initBorderPaint();
        Paint paint2 = new Paint();
        this.mOutCircle = paint2;
        paint2.setAntiAlias(true);
        this.mOutCircle.setColor(getResources().getColor(R$color.coui_roundimageview_outcircle_color));
        this.mOutCircle.setStrokeWidth(1.0f);
        this.mOutCircle.setStyle(Paint.Style.STROKE);
        this.mType = 0;
        this.mWidth = getResources().getDimensionPixelSize(R$dimen.coui_roundimageview_default_radius);
        setupShader(getDrawable());
    }

    private Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int iMax = Math.max(1, drawable.getIntrinsicHeight());
        int iMax2 = Math.max(1, drawable.getIntrinsicWidth());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax2, iMax, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, iMax2, iMax);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    private void initBorderPaint() {
        Paint paint = new Paint();
        this.mBorderPaint = paint;
        paint.setStrokeWidth(this.mBorderWidth);
        this.mBorderPaint.setStyle(Paint.Style.STROKE);
        this.mBorderPaint.setAntiAlias(true);
        this.mBorderPaint.setColor(getResources().getColor(R$color.coui_border));
    }

    private void setupShader(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        this.mDrawable = drawable2;
        if (drawable2 == null || drawable == null) {
            return;
        }
        if (drawable2 != drawable) {
            this.mDrawable = drawable;
        }
        this.mBitmapWidth = this.mDrawable.getIntrinsicWidth();
        this.mBitmapHeight = this.mDrawable.getIntrinsicHeight();
        this.mBitmap = drawableToBitmap(this.mDrawable);
        if (this.mType == 2) {
            this.mShadowBitmap = createBitmapWithShadow();
            Bitmap bitmap = this.mShadowBitmap;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.mShadowBitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        }
        Bitmap bitmap2 = this.mBitmap;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        Bitmap bitmap3 = this.mBitmap;
        Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
        this.mBitmapShader = new BitmapShader(bitmap3, tileMode2, tileMode2);
    }

    private void updateShaderMatrix() {
        this.mMatrix.reset();
        float f10 = (this.mSourceDrawableWidth * 1.0f) / this.mBitmapWidth;
        float f11 = (this.mSourceDrawableHeight * 1.0f) / this.mBitmapHeight;
        if (f10 <= 1.0f) {
            f10 = 1.0f;
        }
        float fMax = Math.max(f10, f11 > 1.0f ? f11 : 1.0f);
        float f12 = (this.mSourceDrawableWidth - (this.mBitmapWidth * fMax)) * 0.5f;
        float f13 = (this.mSourceDrawableHeight - (this.mBitmapHeight * fMax)) * 0.5f;
        this.mMatrix.setScale(fMax, fMax);
        Matrix matrix = this.mMatrix;
        int i10 = this.mShadowBorderWidth;
        matrix.postTranslate(((int) (f12 + 0.5f)) + (i10 / 2.0f), ((int) (f13 + 0.5f)) + (i10 / 2.0f));
    }

    public Bitmap createBitmapWithShadow() {
        updateShaderMatrix();
        Bitmap bitmap = this.mBitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        this.mShadowBitmapShader = bitmapShader;
        bitmapShader.setLocalMatrix(this.mMatrix);
        this.mBitmapPaint.setShader(this.mShadowBitmapShader);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.mShadowDrawableWidth, this.mShadowDrawableHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        this.mBorderRadius = this.mSourceDrawableWidth / 2;
        canvas.drawPath(COUIRoundRectUtil.getInstance().getPath(this.mShadowInsideRect, this.mBorderRadius), this.mBitmapPaint);
        this.mShadowDrawable.setBounds(0, 0, this.mShadowDrawableWidth, this.mShadowDrawableHeight);
        this.mShadowDrawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mDrawable != null) {
            this.mDrawable.setState(getDrawableState());
            setupShader(this.mDrawable);
            invalidate();
        }
    }

    public void initShadow() {
        this.mBorderRect.set(0.0f, 0.0f, this.mShadowDrawableWidth, this.mShadowDrawableHeight);
        this.mShadowBorderWidth = this.mShadowDrawableWidth - this.mSourceDrawableWidth;
        this.mShadowInsideRect.set(this.mBorderRect);
        RectF rectF = this.mShadowInsideRect;
        int i10 = this.mShadowBorderWidth;
        rectF.inset(i10 / 2, i10 / 2);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.mScale = 1.0f;
        Bitmap bitmap = this.mBitmap;
        if (bitmap != null && !bitmap.isRecycled()) {
            int i10 = this.mType;
            if (i10 == 0) {
                int iMin = Math.min(this.mBitmap.getWidth(), this.mBitmap.getHeight());
                this.mBitmapSize = iMin;
                this.mScale = (this.mWidth * 1.0f) / iMin;
            } else if (i10 == 1) {
                this.mScale = Math.max((getWidth() * 1.0f) / this.mBitmap.getWidth(), (getHeight() * 1.0f) / this.mBitmap.getHeight());
            } else if (i10 == 2) {
                this.mScale = Math.max((getWidth() * 1.0f) / this.mShadowDrawableWidth, (getHeight() * 1.0f) / this.mShadowDrawableHeight);
                this.mMatrix.reset();
                Matrix matrix = this.mMatrix;
                float f10 = this.mScale;
                matrix.setScale(f10, f10);
                this.mShadowBitmapShader.setLocalMatrix(this.mMatrix);
                this.mBitmapPaint.setShader(this.mShadowBitmapShader);
                canvas.drawRect(this.mRoundRect, this.mBitmapPaint);
                return;
            }
            float width = ((float) getWidth()) < ((float) this.mBitmap.getWidth()) * this.mScale ? (getWidth() - (this.mBitmap.getWidth() * this.mScale)) / 2.0f : 0.0f;
            float height = ((float) getHeight()) < ((float) this.mBitmap.getHeight()) * this.mScale ? (getHeight() - (this.mBitmap.getHeight() * this.mScale)) / 2.0f : 0.0f;
            Matrix matrix2 = this.mMatrix;
            float f11 = this.mScale;
            matrix2.setScale(f11, f11);
            this.mMatrix.postTranslate(width, height);
            BitmapShader bitmapShader = this.mBitmapShader;
            if (bitmapShader != null) {
                bitmapShader.setLocalMatrix(this.mMatrix);
                this.mBitmapPaint.setShader(this.mBitmapShader);
            }
        }
        int i11 = this.mType;
        if (i11 == 0) {
            if (!this.mHasBorder) {
                float f12 = this.mRadius;
                canvas.drawCircle(f12, f12, f12, this.mBitmapPaint);
                return;
            } else {
                float f13 = this.mRadius;
                canvas.drawCircle(f13, f13, f13, this.mBitmapPaint);
                float f14 = this.mRadius;
                canvas.drawCircle(f14, f14, f14 - 0.5f, this.mOutCircle);
                return;
            }
        }
        if (i11 == 1) {
            if (this.mRoundRect == null) {
                this.mRoundRect = new RectF(0.0f, 0.0f, getWidth(), getHeight());
            }
            if (this.mOutBorderRect == null) {
                int i12 = this.mBorderWidth;
                this.mOutBorderRect = new RectF(i12 / 2.0f, i12 / 2.0f, getWidth() - (this.mBorderWidth / 2.0f), getHeight() - (this.mBorderWidth / 2.0f));
            }
            if (!this.mHasBorder) {
                canvas.drawPath(COUIRoundRectUtil.getInstance().getPath(this.mRoundRect, this.mBorderRadius), this.mBitmapPaint);
            } else {
                canvas.drawPath(COUIRoundRectUtil.getInstance().getPath(this.mRoundRect, this.mBorderRadius), this.mBitmapPaint);
                canvas.drawPath(COUIRoundRectUtil.getInstance().getPath(this.mOutBorderRect, this.mBorderRadius - (this.mBorderWidth / 2.0f)), this.mOutCircle);
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.mType == 0) {
            int iMin = Math.min(getMeasuredHeight(), getMeasuredWidth());
            if (iMin == 0) {
                iMin = this.mWidth;
            }
            this.mWidth = iMin;
            this.mRadius = iMin / 2.0f;
            setMeasuredDimension(iMin, iMin);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        int i14 = this.mType;
        if (i14 == 1 || i14 == 2) {
            this.mRoundRect = new RectF(0.0f, 0.0f, getWidth(), getHeight());
            int i15 = this.mBorderWidth;
            this.mOutBorderRect = new RectF(i15 / 2.0f, i15 / 2.0f, getWidth() - (this.mBorderWidth / 2.0f), getHeight() - (this.mBorderWidth / 2.0f));
        }
    }

    public void refresh() {
        TypedArray typedArrayObtainStyledAttributes = null;
        if (this.mRefreshStyle == 0) {
            typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUIRoundImageView, 0, 0);
        } else {
            String resourceTypeName = getResources().getResourceTypeName(this.mRefreshStyle);
            if ("attr".equals(resourceTypeName)) {
                typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUIRoundImageView, this.mRefreshStyle, 0);
            } else if ("style".equals(resourceTypeName)) {
                typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUIRoundImageView, 0, this.mRefreshStyle);
            }
        }
        if (typedArrayObtainStyledAttributes == null) {
            return;
        }
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIRoundImageView_couiRoundImageViewOutCircleColor, getResources().getColor(R$color.coui_roundimageview_outcircle_color_dark));
        this.mOutCircleColor = color;
        this.mOutCircle.setColor(color);
        typedArrayObtainStyledAttributes.recycle();
        invalidate();
    }

    public void setBorderRectRadius(int i10) {
        this.mBorderRadius = i10;
        invalidate();
    }

    public void setHasBorder(boolean z10) {
        this.mHasBorder = z10;
    }

    public void setHasDefaultPic(boolean z10) {
        this.mHasDefaultPic = z10;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        setupShader(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i10) {
        super.setImageResource(i10);
        setupShader(a.b(this.mContext, i10));
    }

    public void setOutCircleColor(int i10) {
        this.mOutCircleColor = i10;
        this.mOutCircle.setColor(i10);
        invalidate();
    }

    public void setType(int i10) {
        if (this.mType != i10) {
            this.mType = i10;
            if (i10 == 0) {
                int iMin = Math.min(getMeasuredHeight(), getMeasuredWidth());
                if (iMin == 0) {
                    iMin = this.mWidth;
                }
                this.mWidth = iMin;
                this.mRadius = iMin / 2.0f;
            }
            invalidate();
        }
    }

    public COUIRoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mShadowInsideRect = new RectF();
        this.mBorderRect = new RectF();
        this.mBorderWidth = 2;
        if (attributeSet != null) {
            this.mRefreshStyle = attributeSet.getStyleAttribute();
        }
        this.mMatrix = new Matrix();
        this.mContext = context;
        Paint paint = new Paint();
        this.mBitmapPaint = paint;
        paint.setAntiAlias(true);
        this.mBitmapPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
        initBorderPaint();
        Paint paint2 = new Paint();
        this.mOutCircle = paint2;
        paint2.setAntiAlias(true);
        this.mOutCircle.setStrokeWidth(this.mBorderWidth);
        this.mOutCircle.setStyle(Paint.Style.STROKE);
        Drawable drawable = context.getResources().getDrawable(R$drawable.coui_round_image_view_shadow);
        this.mShadowDrawable = drawable;
        this.mShadowDrawableWidth = drawable.getIntrinsicWidth();
        this.mShadowDrawableHeight = this.mShadowDrawable.getIntrinsicHeight();
        int dimension = (int) context.getResources().getDimension(R$dimen.coui_roundimageView_src_width);
        this.mSourceDrawableWidth = dimension;
        this.mSourceDrawableHeight = dimension;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIRoundImageView);
        this.mBorderRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIRoundImageView_couiBorderRadius, (int) TypedValue.applyDimension(1, 1.0f, getResources().getDisplayMetrics()));
        this.mType = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIRoundImageView_couiType, 0);
        this.mHasBorder = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIRoundImageView_couiHasBorder, false);
        this.mHasDefaultPic = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIRoundImageView_couiHasDefaultPic, true);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIRoundImageView_couiRoundImageViewOutCircleColor, getResources().getColor(R$color.coui_roundimageview_outcircle_color_dark));
        this.mOutCircleColor = color;
        this.mOutCircle.setColor(color);
        initShadow();
        setupShader(getDrawable());
        typedArrayObtainStyledAttributes.recycle();
    }

    public COUIRoundImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mShadowInsideRect = new RectF();
        this.mBorderRect = new RectF();
        this.mBorderWidth = 2;
        initShadow();
    }
}
