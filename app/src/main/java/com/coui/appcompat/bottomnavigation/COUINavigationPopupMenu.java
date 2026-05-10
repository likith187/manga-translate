package com.coui.appcompat.bottomnavigation;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.core.view.m0;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.support.bottomnavigation.R$dimen;
import com.support.bottomnavigation.R$drawable;
import com.support.bottomnavigation.R$id;
import com.support.bottomnavigation.R$layout;
import java.util.ArrayList;
import java.util.List;
import v.a;

/* JADX INFO: loaded from: classes.dex */
public class COUINavigationPopupMenu implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, View.OnLayoutChangeListener {
    private static final int DROP_DOWN_GRAVITY = 8388693;
    private static final int DROP_DOWN_GRAVITY_RTL = 8388693;
    private static final float POINT_FIVE = 0.5f;
    private final MenuAdapter mAdapter;
    private COUINavigationMenuView mAnchor;
    private final Context mContext;
    private int mDropDownGravity;
    private final LayoutInflater mInflater;
    private ListView mListViewUsedToMeasure;
    private ListPopupWindow mPopup;
    private int mPopupHorizontalMargin;
    private int mPopupMaxHeight;
    private int mPopupVerticalMargin;
    private int mPopupWidth;
    private int mScreenWidth;
    private final float mSuitableFontSize;
    private ViewTreeObserver mTreeObserver;
    private int mUsedSpace;
    private static final int ITEM_LAYOUT = R$layout.coui_navigation_popup_item;
    private static final int POPUP_WINDOW_BACKGROUND = R$drawable.coui_navigation_popup_bg;
    private List<COUINavigationItemView> mMenuList = new ArrayList();
    private List<COUINavigationItemView> mVisibleMenus = new ArrayList();

    private class MenuAdapter extends BaseAdapter {
        MenuAdapter() {
        }

        private void setIcon(ImageView imageView, COUINavigationItemView cOUINavigationItemView) {
            MenuItemImpl itemData = cOUINavigationItemView.getItemData();
            Drawable icon = itemData.getIcon();
            if (icon != null) {
                imageView.setVisibility(0);
                if (icon instanceof AnimatedStateListDrawable) {
                    imageView.setImageState(new int[]{(itemData.isChecked() ? 1 : -1) * R.attr.state_checked}, true);
                } else {
                    Drawable.ConstantState constantState = icon.getConstantState();
                    if (constantState != null) {
                        icon = constantState.newDrawable();
                    }
                    icon = a.r(icon).mutate();
                    a.o(icon, COUINavigationPopupMenu.this.mAnchor.getIconTintList());
                }
            } else {
                imageView.setVisibility(8);
            }
            imageView.setImageDrawable(icon);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return COUINavigationPopupMenu.this.mVisibleMenus.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = COUINavigationPopupMenu.this.mInflater.inflate(COUINavigationPopupMenu.ITEM_LAYOUT, viewGroup, false);
            }
            if (i10 == 0) {
                view.setBackgroundResource(R$drawable.coui_popup_list_top_selector);
            } else if (i10 == getCount() - 1) {
                view.setBackgroundResource(R$drawable.coui_popup_list_bottom_selector);
            } else {
                view.setBackgroundResource(R$drawable.coui_popup_list_center_selector);
            }
            boolean zIsEnabled = ((COUINavigationItemView) COUINavigationPopupMenu.this.mVisibleMenus.get(i10)).isEnabled();
            view.setEnabled(zIsEnabled);
            ImageView imageView = (ImageView) view.findViewById(R$id.popup_item_imageView);
            TextView textView = (TextView) view.findViewById(R$id.popup_item_textView);
            imageView.setEnabled(zIsEnabled);
            textView.setEnabled(zIsEnabled);
            setIcon(imageView, (COUINavigationItemView) COUINavigationPopupMenu.this.mVisibleMenus.get(i10));
            textView.setText(((COUINavigationItemView) COUINavigationPopupMenu.this.mVisibleMenus.get(i10)).getItemData().getTitle());
            textView.setTextColor(COUINavigationPopupMenu.this.mAnchor.getItemTextColor());
            textView.setTextSize(0, COUINavigationPopupMenu.this.mSuitableFontSize);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            if (m0.v(viewGroup) == 1) {
                marginLayoutParams.rightMargin = COUINavigationPopupMenu.this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_navigation_popup_horizontal_margin);
            } else {
                marginLayoutParams.leftMargin = COUINavigationPopupMenu.this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_navigation_popup_horizontal_margin);
            }
            return view;
        }

        @Override // android.widget.Adapter
        public MenuItemImpl getItem(int i10) {
            return ((COUINavigationItemView) COUINavigationPopupMenu.this.mVisibleMenus.get(i10)).getItemData();
        }
    }

    public COUINavigationPopupMenu(Context context, COUINavigationMenuView cOUINavigationMenuView) {
        this.mContext = context;
        this.mAnchor = cOUINavigationMenuView;
        cOUINavigationMenuView.addOnLayoutChangeListener(this);
        this.mInflater = LayoutInflater.from(context);
        this.mAdapter = new MenuAdapter();
        if (m0.v(cOUINavigationMenuView) == 1) {
            this.mDropDownGravity = 8388693;
        } else {
            this.mDropDownGravity = 8388693;
        }
        Resources resources = context.getResources();
        this.mSuitableFontSize = COUIChangeTextUtil.getSuitableFontSize(resources.getDimensionPixelSize(R$dimen.coui_navigation_popup_text_size), resources.getConfiguration().fontScale, 5);
        this.mPopupHorizontalMargin = resources.getDimensionPixelOffset(R$dimen.coui_navigation_popup_horizontal_margin);
        this.mPopupVerticalMargin = resources.getDimensionPixelOffset(R$dimen.coui_navigation_popup_vertical_margin);
        this.mUsedSpace = resources.getDimensionPixelSize(R$dimen.coui_navigation_popup_item_used_space);
        this.mPopupWidth = resources.getDimensionPixelOffset(R$dimen.coui_navigation_popup_item_min_width);
        this.mPopupMaxHeight = resources.getDimensionPixelOffset(R$dimen.coui_navigation_popup_max_height);
        if (resources.getConfiguration().orientation == 1) {
            this.mScreenWidth = resources.getDisplayMetrics().widthPixels;
        } else {
            this.mScreenWidth = resources.getDisplayMetrics().heightPixels;
        }
        ListView listView = new ListView(context);
        this.mListViewUsedToMeasure = listView;
        listView.setDivider(null);
        this.mListViewUsedToMeasure.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    }

    private int measureHeightOfChildrenCompat(int i10) {
        int i11;
        MenuAdapter menuAdapter = this.mAdapter;
        int count = menuAdapter.getCount();
        int measuredHeight = 0;
        int i12 = 0;
        View view = null;
        for (int i13 = 0; i13 < count; i13++) {
            int itemViewType = menuAdapter.getItemViewType(i13);
            if (itemViewType != i12) {
                view = null;
                i12 = itemViewType;
            }
            view = menuAdapter.getView(i13, view, this.mListViewUsedToMeasure);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            view.measure(i10, (layoutParams == null || (i11 = layoutParams.height) <= 0) ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
            measuredHeight += view.getMeasuredHeight();
        }
        return measuredHeight;
    }

    private boolean tryShow() {
        ListPopupWindow listPopupWindow = new ListPopupWindow(this.mContext, null, 0);
        this.mPopup = listPopupWindow;
        listPopupWindow.G(this);
        this.mPopup.H(this);
        this.mPopup.k(this.mAdapter);
        this.mPopup.F(true);
        COUINavigationMenuView cOUINavigationMenuView = this.mAnchor;
        if (cOUINavigationMenuView == null) {
            return false;
        }
        boolean z10 = this.mTreeObserver == null;
        ViewTreeObserver viewTreeObserver = cOUINavigationMenuView.getViewTreeObserver();
        this.mTreeObserver = viewTreeObserver;
        if (z10) {
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        this.mPopup.y(cOUINavigationMenuView);
        this.mPopup.B(this.mDropDownGravity);
        Rect rect = new Rect();
        Drawable drawable = this.mContext.getResources().getDrawable(POPUP_WINDOW_BACKGROUND);
        drawable.getPadding(rect);
        int i10 = this.mPopupWidth;
        int i11 = rect.left;
        int i12 = rect.right;
        int iMin = Math.min(i10 + i11 + i12, (this.mScreenWidth - (this.mPopupHorizontalMargin * 2)) + i11 + i12);
        this.mPopup.A(iMin);
        int iMeasureHeightOfChildrenCompat = measureHeightOfChildrenCompat(View.MeasureSpec.makeMeasureSpec((iMin - rect.right) - rect.left, 1073741824));
        this.mPopup.a(drawable);
        int i13 = rect.top;
        int i14 = rect.bottom;
        int i15 = iMeasureHeightOfChildrenCompat + i13 + i14;
        int i16 = this.mPopupMaxHeight;
        boolean z11 = i15 >= i16;
        this.mPopup.D(Math.min(iMeasureHeightOfChildrenCompat + i13 + i14, i16));
        this.mPopup.E(2);
        int i17 = (-this.mPopupHorizontalMargin) + rect.right;
        int i18 = rect.bottom - this.mPopupVerticalMargin;
        this.mPopup.g(i17);
        this.mPopup.e(i18);
        this.mPopup.show();
        ListView listView = this.mPopup.getListView();
        listView.setBackgroundDrawable(null);
        listView.setSelector(new ColorDrawable(0));
        listView.setOnKeyListener(this);
        if (z11) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) listView.getLayoutParams();
            marginLayoutParams.leftMargin = rect.left;
            marginLayoutParams.rightMargin = rect.right;
            listView.setLayoutParams(marginLayoutParams);
        }
        return true;
    }

    public void addMenuItem(COUINavigationItemView cOUINavigationItemView) {
        this.mMenuList.add(cOUINavigationItemView);
        MenuItemImpl itemData = cOUINavigationItemView.getItemData();
        if (itemData.isVisible()) {
            Paint paint = new Paint();
            paint.setTextSize(this.mSuitableFontSize);
            COUIChangeTextUtil.adaptBoldAndMediumFont(paint, true);
            this.mVisibleMenus.add(cOUINavigationItemView);
            this.mPopupWidth = (int) (Math.max(this.mPopupWidth, paint.measureText(itemData.getTitle().toString()) + this.mUsedSpace) + 0.5f);
        }
    }

    public void clearMenuItems() {
        this.mMenuList.clear();
        this.mVisibleMenus.clear();
    }

    public void dismiss() {
        this.mPopup.dismiss();
    }

    public boolean isShowing() {
        ListPopupWindow listPopupWindow = this.mPopup;
        return listPopupWindow != null && listPopupWindow.isShowing();
    }

    public void notifyMenuChange() {
        this.mVisibleMenus.clear();
        for (COUINavigationItemView cOUINavigationItemView : this.mMenuList) {
            MenuItemImpl itemData = cOUINavigationItemView.getItemData();
            if (itemData.isVisible() && itemData.isEnabled()) {
                this.mVisibleMenus.add(cOUINavigationItemView);
            }
        }
        this.mAdapter.notifyDataSetChanged();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.mTreeObserver;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.mTreeObserver = this.mAnchor.getViewTreeObserver();
            }
            this.mTreeObserver.removeGlobalOnLayoutListener(this);
            this.mTreeObserver = null;
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (isShowing()) {
            COUINavigationMenuView cOUINavigationMenuView = this.mAnchor;
            if (cOUINavigationMenuView == null || !cOUINavigationMenuView.isShown()) {
                dismiss();
            } else if (isShowing()) {
                this.mPopup.show();
            }
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
        if (this.mVisibleMenus.get(i10).isEnabled()) {
            this.mPopup.dismiss();
            this.mVisibleMenus.get(i10).performClick();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i10 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        ListPopupWindow listPopupWindow = this.mPopup;
        if (listPopupWindow == null || !listPopupWindow.isShowing()) {
            return;
        }
        this.mPopup.dismiss();
    }

    public void setGravity(int i10) {
        this.mDropDownGravity = i10;
    }

    public void show() {
        if (!tryShow()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }
}
