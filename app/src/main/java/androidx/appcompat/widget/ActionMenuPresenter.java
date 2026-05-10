package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$layout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.BaseMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.b;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class ActionMenuPresenter extends BaseMenuPresenter implements b.a {

    /* JADX INFO: renamed from: a */
    d f594a;

    /* JADX INFO: renamed from: b */
    private Drawable f595b;

    /* JADX INFO: renamed from: c */
    private boolean f596c;

    /* JADX INFO: renamed from: f */
    private boolean f597f;

    /* JADX INFO: renamed from: h */
    private boolean f598h;

    /* JADX INFO: renamed from: i */
    private int f599i;

    /* JADX INFO: renamed from: j */
    private int f600j;

    /* JADX INFO: renamed from: k */
    private int f601k;

    /* JADX INFO: renamed from: l */
    private boolean f602l;

    /* JADX INFO: renamed from: m */
    private boolean f603m;

    /* JADX INFO: renamed from: n */
    private boolean f604n;

    /* JADX INFO: renamed from: o */
    private boolean f605o;

    /* JADX INFO: renamed from: p */
    private int f606p;

    /* JADX INFO: renamed from: q */
    private final SparseBooleanArray f607q;

    /* JADX INFO: renamed from: r */
    e f608r;

    /* JADX INFO: renamed from: s */
    a f609s;

    /* JADX INFO: renamed from: t */
    c f610t;

    /* JADX INFO: renamed from: u */
    private b f611u;

    /* JADX INFO: renamed from: v */
    final f f612v;

    /* JADX INFO: renamed from: w */
    int f613w;

    @SuppressLint({"BanParcelableUsage"})
    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        public int f614a;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f614a);
        }

        SavedState(Parcel parcel) {
            this.f614a = parcel.readInt();
        }
    }

    private class a extends MenuPopupHelper {
        public a(Context context, SubMenuBuilder subMenuBuilder, View view) {
            super(context, subMenuBuilder, view, false, R$attr.actionOverflowMenuStyle);
            if (!((MenuItemImpl) subMenuBuilder.getItem()).isActionButton()) {
                View view2 = ActionMenuPresenter.this.f594a;
                setAnchorView(view2 == null ? (View) ((BaseMenuPresenter) ActionMenuPresenter.this).mMenuView : view2);
            }
            setPresenterCallback(ActionMenuPresenter.this.f612v);
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        protected void onDismiss() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.f609s = null;
            actionMenuPresenter.f613w = 0;
            super.onDismiss();
        }
    }

    private class b extends ActionMenuItemView.PopupCallback {
        b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.PopupCallback
        public ShowableListMenu getPopup() {
            a aVar = ActionMenuPresenter.this.f609s;
            if (aVar != null) {
                return aVar.getPopup();
            }
            return null;
        }
    }

    private class c implements Runnable {

        /* JADX INFO: renamed from: a */
        private e f617a;

        public c(e eVar) {
            this.f617a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((BaseMenuPresenter) ActionMenuPresenter.this).mMenu != null) {
                ((BaseMenuPresenter) ActionMenuPresenter.this).mMenu.changeMenuMode();
            }
            View view = (View) ((BaseMenuPresenter) ActionMenuPresenter.this).mMenuView;
            if (view != null && view.getWindowToken() != null && this.f617a.tryShow()) {
                ActionMenuPresenter.this.f608r = this.f617a;
            }
            ActionMenuPresenter.this.f610t = null;
        }
    }

    private class d extends AppCompatImageView implements ActionMenuView.a {

        class a extends x {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ ActionMenuPresenter f620a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(View view, ActionMenuPresenter actionMenuPresenter) {
                super(view);
                this.f620a = actionMenuPresenter;
            }

            @Override // androidx.appcompat.widget.x
            public ShowableListMenu getPopup() {
                e eVar = ActionMenuPresenter.this.f608r;
                if (eVar == null) {
                    return null;
                }
                return eVar.getPopup();
            }

            @Override // androidx.appcompat.widget.x
            public boolean onForwardingStarted() {
                ActionMenuPresenter.this.u();
                return true;
            }

            @Override // androidx.appcompat.widget.x
            public boolean onForwardingStopped() {
                ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                if (actionMenuPresenter.f610t != null) {
                    return false;
                }
                actionMenuPresenter.l();
                return true;
            }
        }

        public d(Context context) {
            super(context, null, R$attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            m0.a(this, getContentDescription());
            setOnTouchListener(new a(this, ActionMenuPresenter.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean needsDividerAfter() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean needsDividerBefore() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.u();
            return true;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i10, int i11, int i12, int i13) {
            boolean frame = super.setFrame(i10, i11, i12, i13);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                v.a.l(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    private class e extends MenuPopupHelper {
        public e(Context context, MenuBuilder menuBuilder, View view, boolean z10) {
            super(context, menuBuilder, view, z10, R$attr.actionOverflowMenuStyle);
            setGravity(8388613);
            setPresenterCallback(ActionMenuPresenter.this.f612v);
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        protected void onDismiss() {
            if (((BaseMenuPresenter) ActionMenuPresenter.this).mMenu != null) {
                ((BaseMenuPresenter) ActionMenuPresenter.this).mMenu.close();
            }
            ActionMenuPresenter.this.f608r = null;
            super.onDismiss();
        }
    }

    private class f implements MenuPresenter.Callback {
        f() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z10) {
            if (menuBuilder instanceof SubMenuBuilder) {
                menuBuilder.getRootMenu().close(false);
            }
            MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
            if (callback != null) {
                callback.onCloseMenu(menuBuilder, z10);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == ((BaseMenuPresenter) ActionMenuPresenter.this).mMenu) {
                return false;
            }
            ActionMenuPresenter.this.f613w = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
            MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
            if (callback != null) {
                return callback.onOpenSubMenu(menuBuilder);
            }
            return false;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, R$layout.abc_action_menu_layout, R$layout.abc_action_menu_item_layout);
        this.f607q = new SparseBooleanArray();
        this.f612v = new f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View j(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof MenuView.ItemView) && ((MenuView.ItemView) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    @Override // androidx.core.view.b.a
    public void a(boolean z10) {
        if (z10) {
            super.onSubMenuSelected(null);
            return;
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.close(false);
        }
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public void bindItemView(MenuItemImpl menuItemImpl, MenuView.ItemView itemView) {
        itemView.initialize(menuItemImpl, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) itemView;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.mMenuView);
        if (this.f611u == null) {
            this.f611u = new b();
        }
        actionMenuItemView.setPopupCallback(this.f611u);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public boolean filterLeftoverView(ViewGroup viewGroup, int i10) {
        if (viewGroup.getChildAt(i10) == this.f594a) {
            return false;
        }
        return super.filterLeftoverView(viewGroup, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.ActionMenuPresenter] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r15v1, types: [androidx.appcompat.view.menu.MenuItemImpl] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v12 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        ArrayList<MenuItemImpl> visibleItems;
        int size;
        int i10;
        int iMeasureChildForCells;
        ?? r02;
        int i11;
        ActionMenuPresenter actionMenuPresenter = this;
        MenuBuilder menuBuilder = actionMenuPresenter.mMenu;
        View view = null;
        ?? r32 = 0;
        if (menuBuilder != null) {
            visibleItems = menuBuilder.getVisibleItems();
            size = visibleItems.size();
        } else {
            visibleItems = null;
            size = 0;
        }
        int i12 = actionMenuPresenter.f601k;
        int i13 = actionMenuPresenter.f600j;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.mMenuView;
        boolean z10 = false;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < size; i16++) {
            MenuItemImpl menuItemImpl = visibleItems.get(i16);
            if (menuItemImpl.requiresActionButton()) {
                i14++;
            } else if (menuItemImpl.requestsActionButton()) {
                i15++;
            } else {
                z10 = true;
            }
            if (actionMenuPresenter.f605o && menuItemImpl.isActionViewExpanded()) {
                i12 = 0;
            }
        }
        if (actionMenuPresenter.f597f && (z10 || i15 + i14 > i12)) {
            i12--;
        }
        int i17 = i12 - i14;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.f607q;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.f603m) {
            int i18 = actionMenuPresenter.f606p;
            iMeasureChildForCells = i13 / i18;
            i10 = i18 + ((i13 % i18) / iMeasureChildForCells);
        } else {
            i10 = 0;
            iMeasureChildForCells = 0;
        }
        int i19 = 0;
        int i20 = 0;
        ?? r03 = actionMenuPresenter;
        while (i19 < size) {
            MenuItemImpl menuItemImpl2 = visibleItems.get(i19);
            if (menuItemImpl2.requiresActionButton()) {
                View itemView = r03.getItemView(menuItemImpl2, view, viewGroup);
                if (r03.f603m) {
                    iMeasureChildForCells -= ActionMenuView.measureChildForCells(itemView, i10, iMeasureChildForCells, iMakeMeasureSpec, r32);
                } else {
                    itemView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                int measuredWidth = itemView.getMeasuredWidth();
                i13 -= measuredWidth;
                if (i20 == 0) {
                    i20 = measuredWidth;
                }
                int groupId = menuItemImpl2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                menuItemImpl2.setIsActionButton(true);
                r02 = r32;
                i11 = size;
            } else if (menuItemImpl2.requestsActionButton()) {
                int groupId2 = menuItemImpl2.getGroupId();
                boolean z11 = sparseBooleanArray.get(groupId2);
                boolean z12 = (i17 > 0 || z11) && i13 > 0 && (!r03.f603m || iMeasureChildForCells > 0);
                boolean z13 = z12;
                i11 = size;
                if (z12) {
                    View itemView2 = r03.getItemView(menuItemImpl2, null, viewGroup);
                    if (r03.f603m) {
                        int iMeasureChildForCells2 = ActionMenuView.measureChildForCells(itemView2, i10, iMeasureChildForCells, iMakeMeasureSpec, 0);
                        iMeasureChildForCells -= iMeasureChildForCells2;
                        if (iMeasureChildForCells2 == 0) {
                            z13 = false;
                        }
                    } else {
                        itemView2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    }
                    boolean z14 = z13;
                    int measuredWidth2 = itemView2.getMeasuredWidth();
                    i13 -= measuredWidth2;
                    if (i20 == 0) {
                        i20 = measuredWidth2;
                    }
                    z12 = z14 & (!r03.f603m ? i13 + i20 <= 0 : i13 < 0);
                }
                if (z12 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z11) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i21 = 0; i21 < i19; i21++) {
                        MenuItemImpl menuItemImpl3 = visibleItems.get(i21);
                        if (menuItemImpl3.getGroupId() == groupId2) {
                            if (menuItemImpl3.isActionButton()) {
                                i17++;
                            }
                            menuItemImpl3.setIsActionButton(false);
                        }
                    }
                }
                if (z12) {
                    i17--;
                }
                menuItemImpl2.setIsActionButton(z12);
                r02 = 0;
            } else {
                r02 = r32;
                i11 = size;
                menuItemImpl2.setIsActionButton(r02);
            }
            i19++;
            r32 = r02;
            size = i11;
            view = null;
            r03 = this;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.hasCollapsibleActionView()) {
            actionView = super.getItemView(menuItemImpl, view, viewGroup);
        }
        actionView.setVisibility(menuItemImpl.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        MenuView menuView = this.mMenuView;
        MenuView menuView2 = super.getMenuView(viewGroup);
        if (menuView != menuView2) {
            ((ActionMenuView) menuView2).setPresenter(this);
        }
        return menuView2;
    }

    public boolean i() {
        return m() | l();
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        super.initForMenu(context, menuBuilder);
        Resources resources = context.getResources();
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(context);
        if (!this.f598h) {
            this.f597f = aVarB.h();
        }
        if (!this.f604n) {
            this.f599i = aVarB.c();
        }
        if (!this.f602l) {
            this.f601k = aVarB.d();
        }
        int measuredWidth = this.f599i;
        if (this.f597f) {
            if (this.f594a == null) {
                d dVar = new d(this.mSystemContext);
                this.f594a = dVar;
                if (this.f596c) {
                    dVar.setImageDrawable(this.f595b);
                    this.f595b = null;
                    this.f596c = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f594a.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f594a.getMeasuredWidth();
        } else {
            this.f594a = null;
        }
        this.f600j = measuredWidth;
        this.f606p = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    public Drawable k() {
        d dVar = this.f594a;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.f596c) {
            return this.f595b;
        }
        return null;
    }

    public boolean l() {
        Object obj;
        c cVar = this.f610t;
        if (cVar != null && (obj = this.mMenuView) != null) {
            ((View) obj).removeCallbacks(cVar);
            this.f610t = null;
            return true;
        }
        e eVar = this.f608r;
        if (eVar == null) {
            return false;
        }
        eVar.dismiss();
        return true;
    }

    public boolean m() {
        a aVar = this.f609s;
        if (aVar == null) {
            return false;
        }
        aVar.dismiss();
        return true;
    }

    public boolean n() {
        return this.f610t != null || o();
    }

    public boolean o() {
        e eVar = this.f608r;
        return eVar != null && eVar.isShowing();
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z10) {
        i();
        super.onCloseMenu(menuBuilder, z10);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i10;
        MenuItem menuItemFindItem;
        if ((parcelable instanceof SavedState) && (i10 = ((SavedState) parcelable).f614a) > 0 && (menuItemFindItem = this.mMenu.findItem(i10)) != null) {
            onSubMenuSelected((SubMenuBuilder) menuItemFindItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.f614a = this.f613w;
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        boolean z10 = false;
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        while (subMenuBuilder2.getParentMenu() != this.mMenu) {
            subMenuBuilder2 = (SubMenuBuilder) subMenuBuilder2.getParentMenu();
        }
        View viewJ = j(subMenuBuilder2.getItem());
        if (viewJ == null) {
            return false;
        }
        this.f613w = subMenuBuilder.getItem().getItemId();
        int size = subMenuBuilder.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                break;
            }
            MenuItem item = subMenuBuilder.getItem(i10);
            if (item.isVisible() && item.getIcon() != null) {
                z10 = true;
                break;
            }
            i10++;
        }
        a aVar = new a(this.mContext, subMenuBuilder, viewJ);
        this.f609s = aVar;
        aVar.setForceShowIcon(z10);
        this.f609s.show();
        super.onSubMenuSelected(subMenuBuilder);
        return true;
    }

    public void p(Configuration configuration) {
        if (!this.f602l) {
            this.f601k = androidx.appcompat.view.a.b(this.mContext).d();
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.onItemsChanged(true);
        }
    }

    public void q(boolean z10) {
        this.f605o = z10;
    }

    public void r(ActionMenuView actionMenuView) {
        this.mMenuView = actionMenuView;
        actionMenuView.initialize(this.mMenu);
    }

    public void s(Drawable drawable) {
        d dVar = this.f594a;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            this.f596c = true;
            this.f595b = drawable;
        }
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public boolean shouldIncludeItem(int i10, MenuItemImpl menuItemImpl) {
        return menuItemImpl.isActionButton();
    }

    public void t(boolean z10) {
        this.f597f = z10;
        this.f598h = true;
    }

    public boolean u() {
        MenuBuilder menuBuilder;
        if (!this.f597f || o() || (menuBuilder = this.mMenu) == null || this.mMenuView == null || this.f610t != null || menuBuilder.getNonActionItems().isEmpty()) {
            return false;
        }
        c cVar = new c(new e(this.mContext, this.mMenu, this.f594a, true));
        this.f610t = cVar;
        ((View) this.mMenuView).post(cVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z10) {
        super.updateMenuView(z10);
        ((View) this.mMenuView).requestLayout();
        MenuBuilder menuBuilder = this.mMenu;
        boolean z11 = false;
        if (menuBuilder != null) {
            ArrayList<MenuItemImpl> actionItems = menuBuilder.getActionItems();
            int size = actionItems.size();
            for (int i10 = 0; i10 < size; i10++) {
                androidx.core.view.b supportActionProvider = actionItems.get(i10).getSupportActionProvider();
                if (supportActionProvider != null) {
                    supportActionProvider.setSubUiVisibilityListener(this);
                }
            }
        }
        MenuBuilder menuBuilder2 = this.mMenu;
        ArrayList<MenuItemImpl> nonActionItems = menuBuilder2 != null ? menuBuilder2.getNonActionItems() : null;
        if (this.f597f && nonActionItems != null) {
            int size2 = nonActionItems.size();
            if (size2 == 1) {
                z11 = !nonActionItems.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z11 = true;
            }
        }
        if (z11) {
            if (this.f594a == null) {
                this.f594a = new d(this.mSystemContext);
            }
            ViewGroup viewGroup = (ViewGroup) this.f594a.getParent();
            if (viewGroup != this.mMenuView) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f594a);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.mMenuView;
                actionMenuView.addView(this.f594a, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else {
            d dVar = this.f594a;
            if (dVar != null) {
                Object parent = dVar.getParent();
                Object obj = this.mMenuView;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f594a);
                }
            }
        }
        ((ActionMenuView) this.mMenuView).setOverflowReserved(this.f597f);
    }
}
