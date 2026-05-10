package com.coui.appcompat.list;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ListView;
import com.coui.appcompat.scrollbar.COUIScrollBar;
import com.support.appcompat.R$style;
import com.support.listview.R$dimen;
import com.support.listview.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIListView extends ListView implements COUIScrollBar.COUIScrollable {
    private static final float DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE = 20.0f;
    private static final double DEGREE_TO_ARC_CONSTANT = 0.017453292519943295d;
    private static final int INVALID_SCROLL_CHOICE_POSITION = -2;
    private static final int SCROLLBARS_NONE = 0;
    private static final int SCROLLBARS_VERTICAL = 512;
    private static final long SCROLL_CHOICE_SCROLL_DELAY = 50;
    private static final String TAG = "COUIListView";
    private COUIScrollBar mCOUIScrollBar;
    private int mCheckItemId;
    private Runnable mDelayedScroll;
    private boolean mEnableDispatchEventWhileScrolling;
    private float mEventFilterAngle;
    private boolean mFlag;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mLastPosition;
    private int mLastSite;
    private int mLasterPosition;
    private int mLeftOffset;
    private boolean mMultiChoice;
    private int mRightOffset;
    private ScrollMultiChoiceListener mScrollMultiChoiceListener;
    private Drawable mScrollbarThumbVertical;
    private int mScrollbars;
    private int mScrollbarsSize;
    private int mStyle;
    private boolean mUpScroll;

    public interface ScrollMultiChoiceListener {
        void onItemTouch(int i10, View view);
    }

    public COUIListView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void alignBottomChild(int i10, int i11) {
        setSelectionFromTop(i10, (((getHeight() - getPaddingTop()) - getPaddingBottom()) - getChildAt(getChildCount() - 1).getHeight()) + i11);
    }

    private void createCOUIScrollDelegate(Context context) {
        this.mCOUIScrollBar = new COUIScrollBar.Builder(this).build();
    }

    private void initAttr(Context context, AttributeSet attributeSet, int i10, int i11) {
        if (attributeSet == null || attributeSet.getStyleAttribute() == 0) {
            this.mStyle = i10;
        } else {
            this.mStyle = attributeSet.getStyleAttribute();
        }
        if (context != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.COUIListView, i10, i11);
            this.mScrollbars = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIListView_couiScrollbars, 0);
            this.mScrollbarsSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIListView_couiScrollbarSize, 0);
            this.mScrollbarThumbVertical = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIListView_couiScrollbarThumbVertical);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private boolean isInScrollRange(MotionEvent motionEvent) {
        int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        int rawX = (int) motionEvent.getRawX();
        int[] iArr = new int[2];
        try {
            if (this.mCheckItemId <= 0) {
                this.mMultiChoice = false;
                return false;
            }
            CheckBox checkBox = (CheckBox) getChildAt(iPointToPosition - getFirstVisiblePosition()).findViewById(this.mCheckItemId);
            checkBox.getLocationOnScreen(iArr);
            int i10 = iArr[0];
            int i11 = i10 - this.mLeftOffset;
            int i12 = i10 + this.mRightOffset;
            if (checkBox.getVisibility() == 0 && rawX > i11 && rawX < i12 && iPointToPosition > getHeaderViewsCount() - 1 && iPointToPosition < getCount() - getFooterViewsCount()) {
                this.mMultiChoice = true;
                return true;
            }
            if (motionEvent.getActionMasked() == 0) {
                this.mMultiChoice = false;
            }
            return false;
        } catch (Exception unused) {
            if (motionEvent.getActionMasked() == 0) {
                this.mMultiChoice = false;
            }
            return false;
        }
    }

    @Override // android.view.View
    protected boolean awakenScrollBars() {
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        return cOUIScrollBar != null ? cOUIScrollBar.awakenScrollBars() : super.awakenScrollBars();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar != null) {
            cOUIScrollBar.dispatchDrawOver(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.mEnableDispatchEventWhileScrolling && (motionEvent.getAction() & 255) == 0) {
            super.onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public COUIScrollBar getCOUIScrollDelegate() {
        return this.mCOUIScrollBar;
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public View getCOUIScrollableView() {
        return this;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar != null) {
            cOUIScrollBar.onAttachedToWindow();
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar != null) {
            cOUIScrollBar.release();
            this.mCOUIScrollBar = null;
        }
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar != null && cOUIScrollBar.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.mInitialTouchX = (int) motionEvent.getX();
            this.mInitialTouchY = (int) motionEvent.getY();
            if (isInScrollRange(motionEvent)) {
                return true;
            }
        }
        if (action == 2) {
            float fAbs = Math.abs(motionEvent.getX() - this.mInitialTouchX);
            float fAbs2 = Math.abs(motionEvent.getY() - this.mInitialTouchY);
            if (fAbs != 0.0f && this.mEnableDispatchEventWhileScrolling && Math.abs(fAbs2 / fAbs) < Math.tan(((double) this.mEventFilterAngle) * DEGREE_TO_ARC_CONSTANT)) {
                return false;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
    
        if (r5 != 2) goto L45;
     */
    @Override // android.widget.AbsListView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.list.COUIListView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar != null) {
            cOUIScrollBar.onVisibilityChanged(view, i10);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar != null) {
            cOUIScrollBar.onWindowVisibilityChanged(i10);
        }
    }

    public void refresh() {
        String resourceTypeName = getResources().getResourceTypeName(this.mStyle);
        TypedArray typedArrayObtainStyledAttributes = null;
        if ("attr".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.COUIListView, this.mStyle, 0);
        } else if ("style".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.COUIListView, 0, this.mStyle);
        }
        if (typedArrayObtainStyledAttributes != null) {
            this.mScrollbarThumbVertical = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIListView_couiScrollbarThumbVertical);
            typedArrayObtainStyledAttributes.recycle();
        }
        if (this.mScrollbars == 512) {
            Drawable drawable = this.mScrollbarThumbVertical;
            if (drawable != null) {
                this.mCOUIScrollBar.setThumbDrawable(drawable);
            } else {
                this.mCOUIScrollBar.refreshScrollBarColor();
            }
        }
        invalidate();
    }

    public void setCheckItemId(int i10) {
        this.mCheckItemId = i10;
    }

    public void setDispatchEventWhileScrolling(boolean z10) {
        this.mEnableDispatchEventWhileScrolling = z10;
    }

    public void setEventFilterTangent(float f10) {
        this.mEventFilterAngle = f10;
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public void setNewCOUIScrollDelegate(COUIScrollBar cOUIScrollBar) {
        if (cOUIScrollBar == null) {
            throw new IllegalArgumentException("setNewFastScrollDelegate must NOT be NULL.");
        }
        this.mCOUIScrollBar = cOUIScrollBar;
        cOUIScrollBar.onAttachedToWindow();
    }

    public void setScrollMultiChoiceListener(ScrollMultiChoiceListener scrollMultiChoiceListener) {
        this.mScrollMultiChoiceListener = scrollMultiChoiceListener;
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public int superComputeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public int superComputeVerticalScrollOffset() {
        return super.computeVerticalScrollOffset();
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public int superComputeVerticalScrollRange() {
        return super.computeVerticalScrollRange();
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public void superOnTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
    }

    public COUIListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    public COUIListView(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Widget_COUI_ListView);
    }

    public COUIListView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mMultiChoice = true;
        this.mLastPosition = -2;
        this.mLasterPosition = -2;
        this.mFlag = false;
        this.mUpScroll = true;
        this.mLastSite = -1;
        this.mCheckItemId = -1;
        this.mScrollbars = 0;
        this.mEventFilterAngle = DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE;
        this.mEnableDispatchEventWhileScrolling = false;
        this.mDelayedScroll = new Runnable() { // from class: com.coui.appcompat.list.COUIListView.1
            @Override // java.lang.Runnable
            public void run() {
                if (COUIListView.this.mUpScroll) {
                    COUIListView.this.setSelectionFromTop(r0.getFirstVisiblePosition() - 1, -COUIListView.this.getPaddingTop());
                } else {
                    COUIListView cOUIListView = COUIListView.this;
                    cOUIListView.alignBottomChild(cOUIListView.getLastVisiblePosition() + 1, COUIListView.this.getPaddingBottom());
                }
            }
        };
        initAttr(context, attributeSet, i10, i11);
        if (this.mScrollbars == 512) {
            createCOUIScrollDelegate(context);
            int i12 = this.mScrollbarsSize;
            if (i12 != 0) {
                this.mCOUIScrollBar.setThumbSize(i12);
            }
            Drawable drawable = this.mScrollbarThumbVertical;
            if (drawable != null) {
                this.mCOUIScrollBar.setThumbDrawable(drawable);
            }
        }
        this.mLeftOffset = getResources().getDimensionPixelOffset(R$dimen.coui_listview_scrollchoice_left_offset);
        this.mRightOffset = getResources().getDimensionPixelOffset(R$dimen.coui_listview_scrollchoice_right_offset);
    }
}
