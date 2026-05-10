package com.coui.appcompat.panel;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.grid.COUIPercentWidthFrameLayout;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.roundRect.COUIShapePath;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.coui.appcompat.uiutil.UIUtil;
import com.oplus.graphics.OplusOutline;
import com.oplus.graphics.OplusOutlineAdapter;
import com.support.appcompat.R$attr;
import com.support.panel.R$dimen;
import com.support.panel.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIPanelPercentFrameLayout extends COUIPercentWidthFrameLayout {
    public static final float MEDIUM_AND_LARGE_SCREEN = 2.0f;
    public static final float SMALL_SCREEN = 1.0f;
    private static final String TAG = "COUIPanelPercentFrameLayout";
    private static final int UNSET_WIDTH = -1;
    private Bitmap mBitmap;
    private final Paint mClipPaint;
    private boolean mHasAnchor;
    private boolean mIsHandlePanel;
    private boolean mIsSupportSmoothRoundCorner;
    private int mMaxHeight;
    private int mMaxHeightOfAttr;
    private int mMaxWidth;
    private final Rect mMeasureRect;
    private final Path mPath;
    private int mPreferWidth;
    private float mRadius;
    private float mRatio;
    private final RectF mRectF;
    private float mWeight;

    /* JADX INFO: renamed from: com.coui.appcompat.panel.COUIPanelPercentFrameLayout$1 */
    class AnonymousClass1 extends ViewOutlineProvider {
        AnonymousClass1() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            COUIPanelPercentFrameLayout.this.enforceChangeScreenWidth();
            int iUpdateBottomCornerRadius = COUIPanelPercentFrameLayout.this.updateBottomCornerRadius();
            if (!COUIPanelPercentFrameLayout.this.mIsSupportSmoothRoundCorner) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight() + iUpdateBottomCornerRadius, COUIPanelPercentFrameLayout.this.mRadius);
            } else if (RoundCornerUtil.getSmoothStyleType() == 0) {
                new OplusOutline(outline).setSmoothRoundRect(0, 0, view.getWidth(), view.getHeight() + iUpdateBottomCornerRadius, COUIPanelPercentFrameLayout.this.mRadius, COUIPanelPercentFrameLayout.this.mWeight);
            } else if (RoundCornerUtil.getSmoothStyleType() == 1) {
                new OplusOutlineAdapter(outline, RoundCornerUtil.getSmoothStyleType()).setSmoothRoundRect(new Rect(0, 0, view.getWidth(), view.getHeight() + iUpdateBottomCornerRadius), COUIPanelPercentFrameLayout.this.mRadius);
            }
        }
    }

    public COUIPanelPercentFrameLayout(Context context) {
        this(context, null);
    }

    private Bitmap createClipSmoothRoundBitmap() {
        if (this.mRectF.width() <= 0.0f || this.mRectF.height() <= 0.0f) {
            COUILog.i(TAG, "createClipSmoothRoundBitmap return for width and height must be > 0");
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) this.mRectF.width(), (int) this.mRectF.height(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        paint.setColor(-1);
        canvas.drawPath(this.mPath, paint);
        return bitmapCreateBitmap;
    }

    public void enforceChangeScreenWidth() {
        if (this.mPreferWidth == -1) {
            return;
        }
        try {
            Resources resources = getContext().getResources();
            Configuration configuration = resources.getConfiguration();
            int i10 = configuration.screenWidthDp;
            int i11 = this.mPreferWidth;
            if (i10 == i11) {
                return;
            }
            configuration.screenWidthDp = i11;
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            Log.d(TAG, "enforceChangeScreenWidth : PreferWidth:" + this.mPreferWidth);
        } catch (Exception unused) {
            Log.d(TAG, "enforceChangeScreenWidth : failed to updateConfiguration");
        }
    }

    private void initAttr(AttributeSet attributeSet) {
        boolean z10 = false;
        if (getContext() != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.COUIPanelPercentFrameLayout);
            this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUIPanelPercentFrameLayout_maxPanelHeight, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
        this.mMaxHeightOfAttr = this.mMaxHeight;
        this.mRatio = COUIPanelMultiWindowUtils.isSmallScreen(getContext(), null) ? 1.0f : 2.0f;
        if (RoundCornerUtil.isPathSupportSingleCorner() && RoundCornerUtil.isSmoothRoundRectOn()) {
            z10 = true;
        }
        this.mIsSupportSmoothRoundCorner = z10;
        if (!z10) {
            this.mRadius = COUIContextUtil.getAttrDimens(getContext(), R$attr.couiRoundCornerXL);
            this.mWeight = 0.0f;
        } else if (RoundCornerUtil.getSmoothStyleType() == 0) {
            this.mRadius = COUIContextUtil.getAttrDimens(getContext(), R$attr.couiRoundCornerXLRadius);
            this.mWeight = COUIContextUtil.getAttrFloat(getContext(), R$attr.couiRoundCornerXLWeight);
        } else if (RoundCornerUtil.getSmoothStyleType() == 1) {
            this.mRadius = COUIContextUtil.getAttrDimens(getContext(), R$attr.couiRoundCornerXL);
            updateClipToOutline(true);
        }
    }

    public int updateBottomCornerRadius() {
        if (this.mIsHandlePanel) {
            return getContext().getResources().getDimensionPixelOffset(R$dimen.coui_bottom_sheet_bg_top_corner_radius);
        }
        int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(R$dimen.coui_bottom_sheet_bg_bottom_corner_radius);
        Activity activityContextToActivity = UIUtil.contextToActivity(getContext());
        if (activityContextToActivity != null) {
            int requestedOrientation = activityContextToActivity.getRequestedOrientation();
            if (requestedOrientation == 1 && (activityContextToActivity.getResources().getConfiguration().screenLayout & 48) == 32) {
                return getContext().getResources().getDimensionPixelOffset(R$dimen.coui_bottom_sheet_bg_top_corner_radius);
            }
            if (requestedOrientation == 0) {
                return 0;
            }
        }
        return dimensionPixelOffset;
    }

    private void updateClipToOutline(boolean z10) {
        COUILog.i(TAG, "updateClipToOutline setOutlineProvider=" + z10);
        if (z10) {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.panel.COUIPanelPercentFrameLayout.1
                AnonymousClass1() {
                }

                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    COUIPanelPercentFrameLayout.this.enforceChangeScreenWidth();
                    int iUpdateBottomCornerRadius = COUIPanelPercentFrameLayout.this.updateBottomCornerRadius();
                    if (!COUIPanelPercentFrameLayout.this.mIsSupportSmoothRoundCorner) {
                        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight() + iUpdateBottomCornerRadius, COUIPanelPercentFrameLayout.this.mRadius);
                    } else if (RoundCornerUtil.getSmoothStyleType() == 0) {
                        new OplusOutline(outline).setSmoothRoundRect(0, 0, view.getWidth(), view.getHeight() + iUpdateBottomCornerRadius, COUIPanelPercentFrameLayout.this.mRadius, COUIPanelPercentFrameLayout.this.mWeight);
                    } else if (RoundCornerUtil.getSmoothStyleType() == 1) {
                        new OplusOutlineAdapter(outline, RoundCornerUtil.getSmoothStyleType()).setSmoothRoundRect(new Rect(0, 0, view.getWidth(), view.getHeight() + iUpdateBottomCornerRadius), COUIPanelPercentFrameLayout.this.mRadius);
                    }
                }
            });
            setClipToOutline(true);
        } else {
            setOutlineProvider(null);
            setClipToOutline(false);
        }
    }

    private void updatePath() {
        this.mPath.reset();
        if (updateBottomCornerRadius() == 0) {
            COUIShapePath.getSmoothRoundRectPath(this.mPath, this.mRectF, this.mRadius, this.mWeight);
        } else {
            COUIShapePath.getSmoothRoundRectPath(this.mPath, this.mRectF, this.mRadius, this.mWeight, true, true, false, false);
        }
    }

    public void delPreferWidth() {
        this.mPreferWidth = -1;
        Log.d(TAG, "delPreferWidth");
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (getClipToOutline()) {
            super.draw(canvas);
            return;
        }
        if (this.mBitmap != null) {
            int iSaveLayer = canvas.saveLayer(null, null);
            super.draw(canvas);
            canvas.drawBitmap(this.mBitmap, 0.0f, 0.0f, this.mClipPaint);
            canvas.restoreToCount(iSaveLayer);
            return;
        }
        canvas.save();
        canvas.clipPath(this.mPath);
        super.draw(canvas);
        canvas.restore();
    }

    int getGridNumber() {
        return this.mGridNumber;
    }

    public boolean getHasAnchor() {
        return this.mHasAnchor;
    }

    int getPaddingSize() {
        return this.mPaddingSize;
    }

    int getPaddingType() {
        return this.mPaddingType;
    }

    public float getRatio() {
        if (this.mIsHandlePanel) {
            return 1.0f;
        }
        return this.mRatio;
    }

    public boolean isIsHandlePanel() {
        return this.mIsHandlePanel;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mRatio = COUIPanelMultiWindowUtils.isSmallScreen(getContext(), null) ? 1.0f : 2.0f;
    }

    @Override // com.coui.appcompat.grid.COUIPercentWidthFrameLayout, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        getWindowVisibleDisplayFrame(this.mMeasureRect);
        int iHeight = this.mMeasureRect.height();
        int i12 = this.mMaxHeight;
        if (iHeight > i12 && i12 > 0 && i12 < View.MeasureSpec.getSize(i11)) {
            i11 = View.MeasureSpec.makeMeasureSpec(this.mMaxHeight, View.MeasureSpec.getMode(i11));
        }
        setPercentIndentEnabled((COUIPanelMultiWindowUtils.isSmallScreen(getContext(), null) || View.MeasureSpec.getSize(i10) >= this.mMeasureRect.width()) && !COUIResponsiveUtils.isSmallScreen(getContext(), this.mMeasureRect.width()) && this.mMaxWidth == 0);
        int i13 = this.mMaxWidth;
        if (i13 != 0) {
            i10 = View.MeasureSpec.makeMeasureSpec(i13, View.MeasureSpec.getMode(i10));
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        enforceChangeScreenWidth();
        if (getClipToOutline()) {
            return;
        }
        this.mRectF.set(0.0f, 0.0f, i10, i11);
        updatePath();
        if (this.mIsSupportSmoothRoundCorner) {
            if (this.mBitmap != null && i10 == i12 && i11 == i13) {
                return;
            }
            this.mBitmap = createClipSmoothRoundBitmap();
        }
    }

    void restoreDefaultMaxSize() {
        if (this.mMaxWidth == 0) {
            return;
        }
        this.mMaxWidth = 0;
        this.mMaxHeight = this.mMaxHeightOfAttr;
        requestLayout();
    }

    public void setHasAnchor(boolean z10) {
        if (this.mHasAnchor != z10) {
            this.mHasAnchor = z10;
            updateClipToOutline(z10);
        }
    }

    public void setIsHandlePanel(boolean z10) {
        this.mIsHandlePanel = z10;
    }

    void setMaxSize(int i10, int i11) {
        if (i11 == this.mMaxHeight && i10 == this.mMaxWidth) {
            return;
        }
        this.mMaxWidth = i10;
        this.mMaxHeight = i11;
        requestLayout();
    }

    public void setPreferWidth(int i10) {
        this.mPreferWidth = i10;
        Log.d(TAG, "setPreferWidth =：" + this.mPreferWidth);
    }

    public void updateLayoutWhileConfigChange(Configuration configuration) {
        this.mRatio = COUIPanelMultiWindowUtils.isSmallScreen(getContext(), configuration) ? 1.0f : 2.0f;
    }

    public COUIPanelPercentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIPanelPercentFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mPath = new Path();
        this.mRectF = new RectF();
        Paint paint = new Paint(1);
        this.mClipPaint = paint;
        this.mRatio = 1.0f;
        this.mHasAnchor = false;
        this.mPreferWidth = -1;
        this.mIsSupportSmoothRoundCorner = false;
        this.mBitmap = null;
        initAttr(attributeSet);
        this.mMeasureRect = new Rect();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }
}
