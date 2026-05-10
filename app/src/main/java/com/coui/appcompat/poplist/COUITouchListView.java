package com.coui.appcompat.poplist;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.AbsListView;
import com.coui.appcompat.AccessibilityUtils.COUIAccessibilityUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.list.COUIForegroundListView;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.scrollbar.COUIScrollBar;
import com.coui.appcompat.state.COUIMaskEffectDrawable;
import com.support.poplist.R$dimen;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class COUITouchListView extends COUIForegroundListView implements COUIScrollBar.COUIScrollable {
    public static final int ACTION_IS_FROM_TOUCH_LISTVIEW = -1;
    private static final int CAN_SCROLL_DOWN = 1;
    private static final int CAN_SCROLL_UP = -1;
    private static final boolean COUI_DEBUG;
    private static final String TAG = "COUITouchListView";
    private boolean mAllowDispatchEvent;
    private boolean mAllowScroll;
    private COUIScrollBar mCOUIScrollBar;
    private Rect mChildRectTemp;
    private View mDownView;
    private int mDownY;
    private boolean mInTalkbackMode;
    private boolean mIsDynamicSelection;
    private boolean mIsNeedVibrate;
    private List<Integer> mItemHeightMap;
    private int mLastMotion;
    private int mLastScrollY;
    private int mLastTouchTarget;
    private boolean mListViewScrolled;
    private Rect mParentRectTemp;
    private int mPreviousFirstVisibleItem;
    private int mScrollY;
    private int mScrollbarVerticalPadding;
    private int mTotalHeight;

    /* JADX INFO: renamed from: com.coui.appcompat.poplist.COUITouchListView$1 */
    class AnonymousClass1 implements AbsListView.OnScrollListener {
        AnonymousClass1() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            if (COUITouchListView.this.mItemHeightMap != null) {
                int iIntValue = ((Integer) COUITouchListView.this.mItemHeightMap.get(i10)).intValue();
                View childAt = absListView.getChildAt(0);
                if (childAt != null) {
                    iIntValue = (iIntValue - childAt.getHeight()) - childAt.getTop();
                }
                COUITouchListView.this.mScrollY = iIntValue;
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.poplist.COUITouchListView$2 */
    class AnonymousClass2 implements AbsListView.OnScrollListener {
        AnonymousClass2() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            if (i12 == 0) {
                return;
            }
            if (COUITouchListView.this.isSameRow(i10)) {
                int topItemScrollY = COUITouchListView.this.getTopItemScrollY();
                if (Math.abs(COUITouchListView.this.mLastScrollY - topItemScrollY) > 0) {
                    if (COUITouchListView.this.mLastScrollY > topItemScrollY) {
                        COUITouchListView.this.onScrollUp();
                    } else {
                        COUITouchListView.this.onScrollDown();
                    }
                }
                COUITouchListView.this.mLastScrollY = topItemScrollY;
                return;
            }
            if (i10 > COUITouchListView.this.mPreviousFirstVisibleItem) {
                COUITouchListView.this.onScrollUp();
            } else {
                COUITouchListView.this.onScrollDown();
            }
            COUITouchListView cOUITouchListView = COUITouchListView.this;
            cOUITouchListView.mLastScrollY = cOUITouchListView.getTopItemScrollY();
            COUITouchListView.this.mPreviousFirstVisibleItem = i10;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
            if (i10 == 1) {
                COUITouchListView cOUITouchListView = COUITouchListView.this;
                cOUITouchListView.mLastScrollY = cOUITouchListView.getTopItemScrollY();
                COUITouchListView cOUITouchListView2 = COUITouchListView.this;
                cOUITouchListView2.mPreviousFirstVisibleItem = cOUITouchListView2.getFirstVisiblePosition();
            }
        }
    }

    static {
        COUI_DEBUG = COUILog.LOG_DEBUG || COUILog.isLoggable(TAG, 3);
    }

    public COUITouchListView(Context context) {
        this(context, null);
    }

    private boolean cancelLastItemSelect(MotionEvent motionEvent) {
        View childAt = getChildAt(this.mLastTouchTarget - getFirstVisiblePosition());
        if (childAt != null && (childAt.getBackground() instanceof COUIMaskEffectDrawable) && childAt.isEnabled()) {
            dispatchTargetEvent(childAt, motionEvent, 3);
            ((COUIMaskEffectDrawable) childAt.getBackground()).setTouchSelectExited();
        }
        this.mLastTouchTarget = -1;
        return true;
    }

    private void createCOUIScrollDelegate() {
        this.mCOUIScrollBar = new COUIScrollBar.Builder(this).marginTop(this.mScrollbarVerticalPadding).marginBottom(this.mScrollbarVerticalPadding).build();
    }

    private void dispatchTargetEvent(View view, MotionEvent motionEvent, int i10) {
        this.mChildRectTemp = new Rect();
        this.mParentRectTemp = new Rect();
        getChildVisibleRect(view, this.mChildRectTemp, null);
        getLocalVisibleRect(this.mParentRectTemp);
        Rect rect = this.mChildRectTemp;
        int i11 = rect.left;
        Rect rect2 = this.mParentRectTemp;
        int i12 = i11 - rect2.left;
        int i13 = rect.top - rect2.top;
        int x10 = (int) motionEvent.getX();
        int y10 = (int) motionEvent.getY();
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.setSource(-1);
        motionEventObtain.setLocation(x10 - i12, y10 - i13);
        motionEventObtain.setAction(i10);
        view.dispatchTouchEvent(motionEventObtain);
    }

    public int getTopItemScrollY() {
        if (getChildAt(0) == null) {
            return 0;
        }
        return getChildAt(0).getTop();
    }

    private void initScrollListener(Context context) {
        setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.coui.appcompat.poplist.COUITouchListView.2
            AnonymousClass2() {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                if (i12 == 0) {
                    return;
                }
                if (COUITouchListView.this.isSameRow(i10)) {
                    int topItemScrollY = COUITouchListView.this.getTopItemScrollY();
                    if (Math.abs(COUITouchListView.this.mLastScrollY - topItemScrollY) > 0) {
                        if (COUITouchListView.this.mLastScrollY > topItemScrollY) {
                            COUITouchListView.this.onScrollUp();
                        } else {
                            COUITouchListView.this.onScrollDown();
                        }
                    }
                    COUITouchListView.this.mLastScrollY = topItemScrollY;
                    return;
                }
                if (i10 > COUITouchListView.this.mPreviousFirstVisibleItem) {
                    COUITouchListView.this.onScrollUp();
                } else {
                    COUITouchListView.this.onScrollDown();
                }
                COUITouchListView cOUITouchListView = COUITouchListView.this;
                cOUITouchListView.mLastScrollY = cOUITouchListView.getTopItemScrollY();
                COUITouchListView.this.mPreviousFirstVisibleItem = i10;
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i10) {
                if (i10 == 1) {
                    COUITouchListView cOUITouchListView = COUITouchListView.this;
                    cOUITouchListView.mLastScrollY = cOUITouchListView.getTopItemScrollY();
                    COUITouchListView cOUITouchListView2 = COUITouchListView.this;
                    cOUITouchListView2.mPreviousFirstVisibleItem = cOUITouchListView2.getFirstVisiblePosition();
                }
            }
        });
    }

    public boolean isSameRow(int i10) {
        return i10 == this.mPreviousFirstVisibleItem;
    }

    public void onScrollDown() {
        if (canScrollVertically(1)) {
            this.mListViewScrolled = true;
        }
    }

    public void onScrollUp() {
        if (canScrollVertically(-1)) {
            this.mListViewScrolled = true;
        }
    }

    private void performHapticFeedback() {
        if (this.mIsNeedVibrate) {
            performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE);
        }
    }

    public void allowDispatchEvent(boolean z10) {
        this.mAllowDispatchEvent = z10;
    }

    public void allowScroll(boolean z10) {
        this.mAllowScroll = z10;
    }

    @Override // android.view.View
    protected boolean awakenScrollBars() {
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        return cOUIScrollBar != null ? cOUIScrollBar.awakenScrollBars(COUIScrollBar.SCROLLER_FADE_TIMEOUT) : super.awakenScrollBars();
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
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.mAllowDispatchEvent) {
            return super.dispatchHoverEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View view;
        if (!this.mAllowDispatchEvent) {
            return false;
        }
        if (!this.mAllowScroll && motionEvent.getActionMasked() == 2) {
            return true;
        }
        if (canScrollVertically(1) || canScrollVertically(-1)) {
            this.mIsDynamicSelection = false;
        } else {
            this.mIsDynamicSelection = true;
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        int x10 = (int) motionEvent.getX();
        int y10 = (int) motionEvent.getY();
        if (COUI_DEBUG) {
            Log.d(TAG, "dispatchTouchEvent actionMasked:" + MotionEvent.actionToString(actionMasked) + ",actionIndex:" + actionIndex + ",getPointerCount:" + motionEvent.getPointerCount());
        }
        if (actionMasked == 0) {
            this.mDownY = y10;
            this.mInTalkbackMode = COUIAccessibilityUtil.isTalkbackEnabled(getContext());
            this.mListViewScrolled = false;
            int iPointToPosition = pointToPosition(x10, y10);
            this.mLastTouchTarget = iPointToPosition;
            if (!this.mIsDynamicSelection) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                this.mDownView = childAt;
                if (childAt != null && (childAt.getBackground() instanceof COUIMaskEffectDrawable) && this.mDownView.isEnabled()) {
                    ((COUIMaskEffectDrawable) this.mDownView.getBackground()).setTouchEntered();
                }
            }
        } else if (actionMasked == 1) {
            int i10 = this.mLastTouchTarget;
            if ((i10 != -1 && !this.mInTalkbackMode) || this.mLastMotion == 0) {
                View childAt2 = getChildAt(i10 - getFirstVisiblePosition());
                if (childAt2 != null) {
                    COUILog.d(TAG, "target = " + childAt2 + " lastTouchTarget = " + this.mLastTouchTarget + " item id at position = " + this.mLastTouchTarget);
                    int i11 = this.mLastTouchTarget;
                    performItemClick(childAt2, i11, getItemIdAtPosition(i11));
                    dispatchTargetEvent(childAt2, motionEvent, 1);
                }
                this.mLastTouchTarget = -1;
                this.mLastMotion = actionMasked;
                return false;
            }
            this.mLastTouchTarget = -1;
        } else if (actionMasked == 2) {
            if (this.mLastTouchTarget != -1 && !this.mIsDynamicSelection && Math.abs(y10 - this.mDownY) > ViewConfiguration.get(getContext()).getScaledTouchSlop() && (view = this.mDownView) != null && (view.getBackground() instanceof COUIMaskEffectDrawable) && this.mDownView.isEnabled()) {
                ((COUIMaskEffectDrawable) this.mDownView.getBackground()).setTouchExited();
                this.mLastTouchTarget = -1;
            }
            int iPointToPosition2 = pointToPosition(x10, y10);
            if (iPointToPosition2 == -1 || motionEvent.getPointerCount() > 1 || this.mInTalkbackMode) {
                this.mLastMotion = actionMasked;
                return cancelLastItemSelect(motionEvent);
            }
            if (iPointToPosition2 != this.mLastTouchTarget && DefaultAdapter.isDataIndex(iPointToPosition2) && !this.mListViewScrolled) {
                cancelLastItemSelect(motionEvent);
                View childAt3 = getChildAt(iPointToPosition2 - getFirstVisiblePosition());
                if (childAt3 != null && this.mIsDynamicSelection) {
                    dispatchTargetEvent(childAt3, motionEvent, 0);
                    if ((childAt3.getBackground() instanceof COUIMaskEffectDrawable) && childAt3.isEnabled()) {
                        ((COUIMaskEffectDrawable) childAt3.getBackground()).setTouchSelectEntered();
                        performHapticFeedback();
                    }
                    this.mLastTouchTarget = iPointToPosition2;
                }
            } else if (this.mListViewScrolled && this.mLastTouchTarget != -1) {
                this.mLastMotion = actionMasked;
                return cancelLastItemSelect(motionEvent);
            }
        } else if (actionMasked == 5) {
            this.mLastMotion = actionMasked;
            return cancelLastItemSelect(motionEvent);
        }
        this.mLastMotion = actionMasked;
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
        } else {
            createCOUIScrollDelegate();
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
        if (this.mIsDynamicSelection) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar == null || !cOUIScrollBar.onTouchEvent(motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
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

    public void setIsNeedVibrate(boolean z10) {
        this.mIsNeedVibrate = z10;
    }

    protected void setItemHeightMap(List<Integer> list, int i10) {
        this.mItemHeightMap = list;
        this.mTotalHeight = i10;
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public void setNewCOUIScrollDelegate(COUIScrollBar cOUIScrollBar) {
        if (cOUIScrollBar == null) {
            throw new IllegalArgumentException("setNewFastScrollDelegate must NOT be NULL.");
        }
        this.mCOUIScrollBar = cOUIScrollBar;
        cOUIScrollBar.onAttachedToWindow();
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public int superComputeVerticalScrollExtent() {
        return getHeight();
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public int superComputeVerticalScrollOffset() {
        return this.mScrollY;
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public int superComputeVerticalScrollRange() {
        return this.mTotalHeight;
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public void superOnTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
    }

    public COUITouchListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUITouchListView(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public COUITouchListView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mAllowDispatchEvent = true;
        this.mAllowScroll = true;
        this.mIsNeedVibrate = true;
        this.mIsDynamicSelection = true;
        this.mTotalHeight = 0;
        this.mScrollY = 0;
        this.mLastMotion = -1;
        initScrollListener(context);
        setVerticalFadingEdgeEnabled(true);
        setFadingEdgeLength(context.getResources().getDimensionPixelOffset(R$dimen.coui_popup_list_window_fade_edge_length));
        this.mScrollbarVerticalPadding = context.getResources().getDimensionPixelOffset(R$dimen.coui_popup_list_window_scrollbar_vertical_padding);
        setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.coui.appcompat.poplist.COUITouchListView.1
            AnonymousClass1() {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i102, int i112, int i12) {
                if (COUITouchListView.this.mItemHeightMap != null) {
                    int iIntValue = ((Integer) COUITouchListView.this.mItemHeightMap.get(i102)).intValue();
                    View childAt = absListView.getChildAt(0);
                    if (childAt != null) {
                        iIntValue = (iIntValue - childAt.getHeight()) - childAt.getTop();
                    }
                    COUITouchListView.this.mScrollY = iIntValue;
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i102) {
            }
        });
        createCOUIScrollDelegate();
        setDefaultFocusHighlightEnabled(false);
    }
}
