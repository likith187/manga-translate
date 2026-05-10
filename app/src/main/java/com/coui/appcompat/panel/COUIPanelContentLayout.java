package com.coui.appcompat.panel;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.coui.appcompat.buttonBar.COUIButtonBarLayout;
import com.coui.appcompat.poplist.PopupMenuConfigRule;
import com.support.panel.R$bool;
import com.support.panel.R$dimen;
import com.support.panel.R$drawable;
import com.support.panel.R$id;

/* JADX INFO: loaded from: classes.dex */
public class COUIPanelContentLayout extends LinearLayout implements PopupMenuConfigRule {
    private static final Rect PANEL_OUTSETS = new Rect();
    private COUIPanelPressHelper mCOUIPanelPressHelper;
    private Rect mDisplayFrame;
    private boolean mIsLayoutAtMaxHeight;
    public boolean mIsTurnOnAnim;
    private final int mPanelHorizontalPadding;
    private boolean mPopupRuleEnable;

    public COUIPanelContentLayout(Context context) {
        this(context, null);
    }

    private int getNavigationBarHeight(WindowInsets windowInsets, Configuration configuration) {
        if (windowInsets != null) {
            return windowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom;
        }
        int identifier = getContext().getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        return configuration != null ? getContext().createConfigurationContext(configuration).getResources().getDimensionPixelSize(identifier) : getContext().getResources().getDimensionPixelSize(identifier);
    }

    private void initButton(Button button, String str, View.OnClickListener onClickListener) {
        if (button != null) {
            if (TextUtils.isEmpty(str)) {
                button.setVisibility(8);
                return;
            }
            button.setVisibility(0);
            button.setText(str);
            button.setOnClickListener(onClickListener);
        }
    }

    private boolean isBigScreen(Configuration configuration) {
        return configuration == null ? getContext().getResources().getBoolean(R$bool.is_coui_bottom_sheet_dialog_in_big_screen) : getContext().createConfigurationContext(configuration).getResources().getBoolean(R$bool.is_coui_bottom_sheet_dialog_in_big_screen);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setDragViewPressAnim$0(View view, boolean z10, View view2, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (view != null) {
                view.setVisibility(0);
            }
            if (z10) {
                this.mIsTurnOnAnim = true;
                this.mCOUIPanelPressHelper.startAnim(view);
            }
        }
        return true;
    }

    public void addContentView(View view) {
        if (view != null) {
            ((LinearLayout) findViewById(R$id.panel_content)).addView(view, new LinearLayout.LayoutParams(-1, -1));
        }
    }

    public void dragBgEndAnim() {
        this.mCOUIPanelPressHelper.endAnim(findViewById(R$id.tv_drag_press_bg));
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public int getBarrierDirection() {
        return 4;
    }

    public COUIButtonBarLayout getBtnBarLayout() {
        return (COUIButtonBarLayout) findViewById(R$id.bottom_bar);
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public Rect getDisplayFrame() {
        if (this.mDisplayFrame == null) {
            this.mDisplayFrame = new Rect();
        }
        getGlobalVisibleRect(this.mDisplayFrame);
        Rect rect = this.mDisplayFrame;
        int i10 = rect.left;
        int i11 = this.mPanelHorizontalPadding;
        rect.left = i10 + i11;
        rect.right -= i11;
        return rect;
    }

    public View getDivider() {
        return findViewById(R$id.divider_line);
    }

    public View getDragBgView() {
        return findViewById(R$id.tv_drag_press_bg);
    }

    public ImageView getDragView() {
        return (ImageView) findViewById(R$id.drag_img);
    }

    public FrameLayout getDrawLayout() {
        return (FrameLayout) findViewById(R$id.drag_layout);
    }

    public boolean getLayoutAtMaxHeight() {
        return this.mIsLayoutAtMaxHeight;
    }

    public int getMaxHeight() {
        return COUIPanelMultiWindowUtils.getPanelMaxHeight(getContext(), null);
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public Rect getOutsets() {
        return PANEL_OUTSETS;
    }

    public COUIPanelBarView getPanelBarView() {
        return (COUIPanelBarView) findViewById(R$id.panel_drag_bar);
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public boolean getPopupMenuRuleEnabled() {
        return this.mPopupRuleEnable;
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public int getType() {
        return 2;
    }

    void refresh() {
        findViewById(R$id.tv_drag_press_bg).setBackground(e.a.b(getContext(), R$drawable.coui_pannel_press_shadow_bg));
    }

    public void removeContentView() {
        ((LinearLayout) findViewById(R$id.panel_content)).removeAllViews();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void removeDragViewPressAnim() {
        View viewFindViewById = findViewById(R$id.tv_drag_press_bg);
        if (viewFindViewById != null) {
            viewFindViewById.setOnTouchListener(null);
        }
    }

    public void setCenterButton(String str, View.OnClickListener onClickListener) {
        initButton((Button) findViewById(R.id.button3), str, onClickListener);
    }

    public void setDividerVisibility(boolean z10) {
        View viewFindViewById = findViewById(R$id.divider_line);
        if (z10) {
            viewFindViewById.setVisibility(0);
        } else {
            viewFindViewById.setVisibility(8);
        }
    }

    public void setDragViewDrawable(Drawable drawable) {
        if (drawable != null) {
            ((ImageView) findViewById(R$id.drag_img)).setImageDrawable(drawable);
        }
    }

    public void setDragViewDrawableTintColor(int i10) {
        ((AppCompatImageView) findViewById(R$id.drag_img)).getDrawable().setTint(i10);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setDragViewPressAnim(final boolean z10) {
        final View viewFindViewById = findViewById(R$id.tv_drag_press_bg);
        if (viewFindViewById != null) {
            viewFindViewById.setOnTouchListener(null);
            viewFindViewById.setOnTouchListener(new View.OnTouchListener() { // from class: com.coui.appcompat.panel.e
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return this.f7285a.lambda$setDragViewPressAnim$0(viewFindViewById, z10, view, motionEvent);
                }
            });
        }
    }

    public void setLayoutAtMaxHeight(boolean z10) {
        this.mIsLayoutAtMaxHeight = z10;
        if (z10) {
            getLayoutParams().height = -1;
        } else {
            getLayoutParams().height = -2;
        }
        requestLayout();
    }

    public void setLeftButton(String str, View.OnClickListener onClickListener) {
        initButton((Button) findViewById(R.id.button2), str, onClickListener);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setNavigationMargin(android.content.res.Configuration r7, int r8, android.view.WindowInsets r9) {
        /*
            r6 = this;
            android.content.Context r8 = r6.getContext()
            boolean r8 = com.coui.appcompat.panel.COUINavigationBarUtil.isGestureNavigation(r8)
            if (r8 == 0) goto L63
            android.content.Context r8 = r6.getContext()
            android.app.Activity r8 = com.coui.appcompat.panel.COUIPanelMultiWindowUtils.contextToActivity(r8)
            boolean r8 = com.coui.appcompat.panel.COUIPanelMultiWindowUtils.isDisplayInUpperWindow(r8)
            android.content.Context r0 = r6.getContext()
            android.app.Activity r0 = com.coui.appcompat.panel.COUIPanelMultiWindowUtils.contextToActivity(r0)
            boolean r0 = com.coui.appcompat.panel.COUIPanelMultiWindowUtils.isInMultiWindowMode(r0)
            boolean r1 = r6.isBigScreen(r7)
            int r7 = r6.getNavigationBarHeight(r9, r7)
            int r9 = com.support.panel.R$id.panel_content
            android.view.View r6 = r6.findViewById(r9)
            android.view.View r9 = r6.getRootView()
            int r2 = com.support.panel.R$id.coordinator
            android.view.View r9 = r9.findViewById(r2)
            r2 = 0
            if (r9 == 0) goto L4e
            int r3 = com.support.appcompat.R$id.design_bottom_sheet
            android.view.View r3 = r9.findViewById(r3)
            boolean r4 = r3 instanceof com.coui.appcompat.panel.COUIPanelPercentFrameLayout
            if (r4 == 0) goto L4e
            com.coui.appcompat.panel.COUIPanelPercentFrameLayout r3 = (com.coui.appcompat.panel.COUIPanelPercentFrameLayout) r3
            boolean r3 = r3.isIsHandlePanel()
            goto L4f
        L4e:
            r3 = r2
        L4f:
            if (r8 == 0) goto L54
            if (r0 == 0) goto L54
            goto L5c
        L54:
            if (r1 == 0) goto L5c
            if (r3 == 0) goto L59
            goto L5c
        L59:
            r5 = r2
            r2 = r7
            r7 = r5
        L5c:
            r8 = 3
            com.coui.appcompat.panel.COUIViewMarginUtil.setMargin(r6, r8, r7)
            com.coui.appcompat.panel.COUIViewMarginUtil.setMargin(r9, r8, r2)
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.panel.COUIPanelContentLayout.setNavigationMargin(android.content.res.Configuration, int, android.view.WindowInsets):void");
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public void setPopupMenuRuleEnabled(boolean z10) {
        this.mPopupRuleEnable = z10;
    }

    public void setRightButton(String str, View.OnClickListener onClickListener) {
        initButton((Button) findViewById(R.id.button1), str, onClickListener);
    }

    public void setUpBottomBar(boolean z10, String str, View.OnClickListener onClickListener, String str2, View.OnClickListener onClickListener2, String str3, View.OnClickListener onClickListener3) {
        setDividerVisibility(z10);
        COUIButtonBarLayout cOUIButtonBarLayout = (COUIButtonBarLayout) findViewById(R$id.bottom_bar);
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            cOUIButtonBarLayout.setVisibility(8);
            return;
        }
        cOUIButtonBarLayout.setVisibility(0);
        cOUIButtonBarLayout.setVerButDividerVerMargin(getContext().getResources().getDimensionPixelOffset(R$dimen.coui_panel_bottom_bar_padding_top));
        cOUIButtonBarLayout.setVerButVerPadding(getContext().getResources().getDimensionPixelOffset(R$dimen.coui_panel_bottom_button_vertical_padding));
        cOUIButtonBarLayout.setVerPaddingBottom(getContext().getResources().getDimensionPixelOffset(R$dimen.coui_panel_bottom_bar_padding_bottom));
        cOUIButtonBarLayout.setVerButPaddingOffset(0);
        Button button = (Button) findViewById(R.id.button2);
        Button button2 = (Button) findViewById(R.id.button3);
        Button button3 = (Button) findViewById(R.id.button1);
        initButton(button, str, onClickListener);
        initButton(button2, str2, onClickListener2);
        initButton(button3, str3, onClickListener3);
    }

    public COUIPanelContentLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIPanelContentLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mPopupRuleEnable = true;
        this.mCOUIPanelPressHelper = new COUIPanelPressHelper();
        this.mPanelHorizontalPadding = context.getResources().getDimensionPixelOffset(R$dimen.coui_bottom_sheet_content_horizontal_padding_with_card);
    }
}
