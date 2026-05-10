package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.R$string;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.view.b;
import com.oplus.aiunit.core.ConfigPackage;
import v.a;
import w.b;

/* JADX INFO: loaded from: classes.dex */
public final class MenuItemImpl implements b {
    private static final int CHECKABLE = 1;
    private static final int CHECKED = 2;
    private static final int ENABLED = 16;
    private static final int EXCLUSIVE = 4;
    private static final int HIDDEN = 8;
    private static final int IS_ACTION = 32;
    static final int NO_ICON = 0;
    private static final int SHOW_AS_ACTION_MASK = 3;
    private static final String TAG = "MenuItemImpl";
    private androidx.core.view.b mActionProvider;
    private View mActionView;
    private final int mCategoryOrder;
    private MenuItem.OnMenuItemClickListener mClickListener;
    private CharSequence mContentDescription;
    private final int mGroup;
    private Drawable mIconDrawable;
    private final int mId;
    private Intent mIntent;
    private Runnable mItemCallback;
    MenuBuilder mMenu;
    private ContextMenu.ContextMenuInfo mMenuInfo;
    private MenuItem.OnActionExpandListener mOnActionExpandListener;
    private final int mOrdering;
    private char mShortcutAlphabeticChar;
    private char mShortcutNumericChar;
    private int mShowAsAction;
    private SubMenuBuilder mSubMenu;
    private CharSequence mTitle;
    private CharSequence mTitleCondensed;
    private CharSequence mTooltipText;
    private int mShortcutNumericModifiers = ConfigPackage.FRAME_SIZE_5;
    private int mShortcutAlphabeticModifiers = ConfigPackage.FRAME_SIZE_5;
    private int mIconResId = 0;
    private ColorStateList mIconTintList = null;
    private PorterDuff.Mode mIconTintMode = null;
    private boolean mHasIconTint = false;
    private boolean mHasIconTintMode = false;
    private boolean mNeedToApplyIconTint = false;
    private int mFlags = 16;
    private boolean mIsActionViewExpanded = false;

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.MenuItemImpl$1 */
    class AnonymousClass1 implements b.InterfaceC0015b {
        AnonymousClass1() {
        }

        @Override // androidx.core.view.b.InterfaceC0015b
        public void onActionProviderVisibilityChanged(boolean z10) {
            MenuItemImpl menuItemImpl = MenuItemImpl.this;
            menuItemImpl.mMenu.onItemVisibleChanged(menuItemImpl);
        }
    }

    MenuItemImpl(MenuBuilder menuBuilder, int i10, int i11, int i12, int i13, CharSequence charSequence, int i14) {
        this.mMenu = menuBuilder;
        this.mId = i11;
        this.mGroup = i10;
        this.mCategoryOrder = i12;
        this.mOrdering = i13;
        this.mTitle = charSequence;
        this.mShowAsAction = i14;
    }

    private static void appendModifier(StringBuilder sb, int i10, int i11, String str) {
        if ((i10 & i11) == i11) {
            sb.append(str);
        }
    }

    private Drawable applyIconTintIfNecessary(Drawable drawable) {
        if (drawable != null && this.mNeedToApplyIconTint && (this.mHasIconTint || this.mHasIconTintMode)) {
            drawable = a.r(drawable).mutate();
            if (this.mHasIconTint) {
                a.o(drawable, this.mIconTintList);
            }
            if (this.mHasIconTintMode) {
                a.p(drawable, this.mIconTintMode);
            }
            this.mNeedToApplyIconTint = false;
        }
        return drawable;
    }

    public void actionFormatChanged() {
        this.mMenu.onItemActionRequestChanged(this);
    }

    @Override // w.b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.mShowAsAction & 8) == 0) {
            return false;
        }
        if (this.mActionView == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.mOnActionExpandListener;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.mMenu.collapseItemActionView(this);
        }
        return false;
    }

    @Override // w.b, android.view.MenuItem
    public boolean expandActionView() {
        if (!hasCollapsibleActionView()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.mOnActionExpandListener;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.mMenu.expandItemActionView(this);
        }
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // w.b, android.view.MenuItem
    public View getActionView() {
        View view = this.mActionView;
        if (view != null) {
            return view;
        }
        androidx.core.view.b bVar = this.mActionProvider;
        if (bVar == null) {
            return null;
        }
        View viewOnCreateActionView = bVar.onCreateActionView(this);
        this.mActionView = viewOnCreateActionView;
        return viewOnCreateActionView;
    }

    @Override // w.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.mShortcutAlphabeticModifiers;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.mShortcutAlphabeticChar;
    }

    Runnable getCallback() {
        return this.mItemCallback;
    }

    @Override // w.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.mContentDescription;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.mGroup;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.mIconDrawable;
        if (drawable != null) {
            return applyIconTintIfNecessary(drawable);
        }
        if (this.mIconResId == 0) {
            return null;
        }
        Drawable drawableB = e.a.b(this.mMenu.getContext(), this.mIconResId);
        this.mIconResId = 0;
        this.mIconDrawable = drawableB;
        return applyIconTintIfNecessary(drawableB);
    }

    @Override // w.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.mIconTintList;
    }

    @Override // w.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.mIconTintMode;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.mIntent;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.mId;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.mMenuInfo;
    }

    @Override // w.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.mShortcutNumericModifiers;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.mShortcutNumericChar;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.mCategoryOrder;
    }

    public int getOrdering() {
        return this.mOrdering;
    }

    char getShortcut() {
        return this.mMenu.isQwertyMode() ? this.mShortcutAlphabeticChar : this.mShortcutNumericChar;
    }

    String getShortcutLabel() {
        char shortcut = getShortcut();
        if (shortcut == 0) {
            return "";
        }
        Resources resources = this.mMenu.getContext().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.mMenu.getContext()).hasPermanentMenuKey()) {
            sb.append(resources.getString(R$string.abc_prepend_shortcut_label));
        }
        int i10 = this.mMenu.isQwertyMode() ? this.mShortcutAlphabeticModifiers : this.mShortcutNumericModifiers;
        appendModifier(sb, i10, 65536, resources.getString(R$string.abc_menu_meta_shortcut_label));
        appendModifier(sb, i10, ConfigPackage.FRAME_SIZE_5, resources.getString(R$string.abc_menu_ctrl_shortcut_label));
        appendModifier(sb, i10, 2, resources.getString(R$string.abc_menu_alt_shortcut_label));
        appendModifier(sb, i10, 1, resources.getString(R$string.abc_menu_shift_shortcut_label));
        appendModifier(sb, i10, 4, resources.getString(R$string.abc_menu_sym_shortcut_label));
        appendModifier(sb, i10, 8, resources.getString(R$string.abc_menu_function_shortcut_label));
        if (shortcut == '\b') {
            sb.append(resources.getString(R$string.abc_menu_delete_shortcut_label));
        } else if (shortcut == '\n') {
            sb.append(resources.getString(R$string.abc_menu_enter_shortcut_label));
        } else if (shortcut != ' ') {
            sb.append(shortcut);
        } else {
            sb.append(resources.getString(R$string.abc_menu_space_shortcut_label));
        }
        return sb.toString();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.mSubMenu;
    }

    @Override // w.b
    public androidx.core.view.b getSupportActionProvider() {
        return this.mActionProvider;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.mTitle;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.mTitleCondensed;
        return charSequence != null ? charSequence : this.mTitle;
    }

    CharSequence getTitleForItemView(MenuView.ItemView itemView) {
        return (itemView == null || !itemView.prefersCondensedTitle()) ? getTitle() : getTitleCondensed();
    }

    @Override // w.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.mTooltipText;
    }

    public boolean hasCollapsibleActionView() {
        androidx.core.view.b bVar;
        if ((this.mShowAsAction & 8) == 0) {
            return false;
        }
        if (this.mActionView == null && (bVar = this.mActionProvider) != null) {
            this.mActionView = bVar.onCreateActionView(this);
        }
        return this.mActionView != null;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.mSubMenu != null;
    }

    public boolean invoke() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.mClickListener;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder.dispatchMenuItemSelected(menuBuilder, this)) {
            return true;
        }
        Runnable runnable = this.mItemCallback;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.mIntent != null) {
            try {
                this.mMenu.getContext().startActivity(this.mIntent);
                return true;
            } catch (ActivityNotFoundException e10) {
                Log.e(TAG, "Can't find activity to handle intent; ignoring", e10);
            }
        }
        androidx.core.view.b bVar = this.mActionProvider;
        return bVar != null && bVar.onPerformDefaultAction();
    }

    public boolean isActionButton() {
        return (this.mFlags & 32) == 32;
    }

    @Override // w.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.mIsActionViewExpanded;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.mFlags & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.mFlags & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.mFlags & 16) != 0;
    }

    public boolean isExclusiveCheckable() {
        return (this.mFlags & 4) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        androidx.core.view.b bVar = this.mActionProvider;
        return (bVar == null || !bVar.overridesItemVisibility()) ? (this.mFlags & 8) == 0 : (this.mFlags & 8) == 0 && this.mActionProvider.isVisible();
    }

    public boolean requestsActionButton() {
        return (this.mShowAsAction & 1) == 1;
    }

    public boolean requiresActionButton() {
        return (this.mShowAsAction & 2) == 2;
    }

    public boolean requiresOverflow() {
        return (requiresActionButton() || requestsActionButton()) ? false : true;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    public void setActionViewExpanded(boolean z10) {
        this.mIsActionViewExpanded = z10;
        this.mMenu.onItemsChanged(false);
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10) {
        if (this.mShortcutAlphabeticChar == c10) {
            return this;
        }
        this.mShortcutAlphabeticChar = Character.toLowerCase(c10);
        this.mMenu.onItemsChanged(false);
        return this;
    }

    public MenuItem setCallback(Runnable runnable) {
        this.mItemCallback = runnable;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z10) {
        int i10 = this.mFlags;
        int i11 = (z10 ? 1 : 0) | (i10 & (-2));
        this.mFlags = i11;
        if (i10 != i11) {
            this.mMenu.onItemsChanged(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z10) {
        if ((this.mFlags & 4) != 0) {
            this.mMenu.setExclusiveItemChecked(this);
        } else {
            setCheckedInt(z10);
        }
        return this;
    }

    void setCheckedInt(boolean z10) {
        int i10 = this.mFlags;
        int i11 = (z10 ? 2 : 0) | (i10 & (-3));
        this.mFlags = i11;
        if (i10 != i11) {
            this.mMenu.onItemsChanged(false);
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z10) {
        if (z10) {
            this.mFlags |= 16;
        } else {
            this.mFlags &= -17;
        }
        this.mMenu.onItemsChanged(false);
        return this;
    }

    public void setExclusiveCheckable(boolean z10) {
        this.mFlags = (z10 ? 4 : 0) | (this.mFlags & (-5));
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.mIconResId = 0;
        this.mIconDrawable = drawable;
        this.mNeedToApplyIconTint = true;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // w.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.mIconTintList = colorStateList;
        this.mHasIconTint = true;
        this.mNeedToApplyIconTint = true;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // w.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.mIconTintMode = mode;
        this.mHasIconTintMode = true;
        this.mNeedToApplyIconTint = true;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.mIntent = intent;
        return this;
    }

    public void setIsActionButton(boolean z10) {
        if (z10) {
            this.mFlags |= 32;
        } else {
            this.mFlags &= -33;
        }
    }

    void setMenuInfo(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.mMenuInfo = contextMenuInfo;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c10) {
        if (this.mShortcutNumericChar == c10) {
            return this;
        }
        this.mShortcutNumericChar = c10;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.mOnActionExpandListener = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.mClickListener = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11) {
        this.mShortcutNumericChar = c10;
        this.mShortcutAlphabeticChar = Character.toLowerCase(c11);
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // w.b, android.view.MenuItem
    public void setShowAsAction(int i10) {
        int i11 = i10 & 3;
        if (i11 != 0 && i11 != 1 && i11 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.mShowAsAction = i10;
        this.mMenu.onItemActionRequestChanged(this);
    }

    public void setSubMenu(SubMenuBuilder subMenuBuilder) {
        this.mSubMenu = subMenuBuilder;
        subMenuBuilder.setHeaderTitle(getTitle());
    }

    @Override // w.b
    public w.b setSupportActionProvider(androidx.core.view.b bVar) {
        androidx.core.view.b bVar2 = this.mActionProvider;
        if (bVar2 != null) {
            bVar2.reset();
        }
        this.mActionView = null;
        this.mActionProvider = bVar;
        this.mMenu.onItemsChanged(true);
        androidx.core.view.b bVar3 = this.mActionProvider;
        if (bVar3 != null) {
            bVar3.setVisibilityListener(new b.InterfaceC0015b() { // from class: androidx.appcompat.view.menu.MenuItemImpl.1
                AnonymousClass1() {
                }

                @Override // androidx.core.view.b.InterfaceC0015b
                public void onActionProviderVisibilityChanged(boolean z10) {
                    MenuItemImpl menuItemImpl = MenuItemImpl.this;
                    menuItemImpl.mMenu.onItemVisibleChanged(menuItemImpl);
                }
            });
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        this.mMenu.onItemsChanged(false);
        SubMenuBuilder subMenuBuilder = this.mSubMenu;
        if (subMenuBuilder != null) {
            subMenuBuilder.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.mTitleCondensed = charSequence;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z10) {
        if (setVisibleInt(z10)) {
            this.mMenu.onItemVisibleChanged(this);
        }
        return this;
    }

    boolean setVisibleInt(boolean z10) {
        int i10 = this.mFlags;
        int i11 = (z10 ? 0 : 8) | (i10 & (-9));
        this.mFlags = i11;
        return i10 != i11;
    }

    public boolean shouldShowIcon() {
        return this.mMenu.getOptionalIconsVisible();
    }

    boolean shouldShowShortcut() {
        return this.mMenu.isShortcutsVisible() && getShortcut() != 0;
    }

    public boolean showsTextAsAction() {
        return (this.mShowAsAction & 4) == 4;
    }

    public String toString() {
        CharSequence charSequence = this.mTitle;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // android.view.MenuItem
    public w.b setContentDescription(CharSequence charSequence) {
        this.mContentDescription = charSequence;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // w.b, android.view.MenuItem
    public w.b setShowAsActionFlags(int i10) {
        setShowAsAction(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public w.b setTooltipText(CharSequence charSequence) {
        this.mTooltipText = charSequence;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // w.b, android.view.MenuItem
    public w.b setActionView(View view) {
        int i10;
        this.mActionView = view;
        this.mActionProvider = null;
        if (view != null && view.getId() == -1 && (i10 = this.mId) > 0) {
            view.setId(i10);
        }
        this.mMenu.onItemActionRequestChanged(this);
        return this;
    }

    @Override // w.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        if (this.mShortcutAlphabeticChar == c10 && this.mShortcutAlphabeticModifiers == i10) {
            return this;
        }
        this.mShortcutAlphabeticChar = Character.toLowerCase(c10);
        this.mShortcutAlphabeticModifiers = KeyEvent.normalizeMetaState(i10);
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // w.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c10, int i10) {
        if (this.mShortcutNumericChar == c10 && this.mShortcutNumericModifiers == i10) {
            return this;
        }
        this.mShortcutNumericChar = c10;
        this.mShortcutNumericModifiers = KeyEvent.normalizeMetaState(i10);
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // w.b, android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.mShortcutNumericChar = c10;
        this.mShortcutNumericModifiers = KeyEvent.normalizeMetaState(i10);
        this.mShortcutAlphabeticChar = Character.toLowerCase(c11);
        this.mShortcutAlphabeticModifiers = KeyEvent.normalizeMetaState(i11);
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i10) {
        this.mIconDrawable = null;
        this.mIconResId = i10;
        this.mNeedToApplyIconTint = true;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i10) {
        return setTitle(this.mMenu.getContext().getString(i10));
    }

    @Override // w.b, android.view.MenuItem
    public w.b setActionView(int i10) {
        Context context = this.mMenu.getContext();
        setActionView(LayoutInflater.from(context).inflate(i10, (ViewGroup) new LinearLayout(context), false));
        return this;
    }
}
