package com.google.android.material.navigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import com.google.android.material.internal.ParcelableSparseArray;

/* JADX INFO: loaded from: classes.dex */
public class NavigationBarPresenter implements MenuPresenter {

    /* JADX INFO: renamed from: a */
    private MenuBuilder f9778a;

    /* JADX INFO: renamed from: b */
    private NavigationBarMenuView f9779b;

    /* JADX INFO: renamed from: c */
    private boolean f9780c = false;

    /* JADX INFO: renamed from: f */
    private int f9781f;

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        int f9782a;

        /* JADX INFO: renamed from: b */
        ParcelableSparseArray f9783b;

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
            parcel.writeInt(this.f9782a);
            parcel.writeParcelable(this.f9783b, 0);
        }

        SavedState(Parcel parcel) {
            this.f9782a = parcel.readInt();
            this.f9783b = (ParcelableSparseArray) parcel.readParcelable(getClass().getClassLoader());
        }
    }

    public void a(int i10) {
        this.f9781f = i10;
    }

    public void b(NavigationBarMenuView navigationBarMenuView) {
        this.f9779b = navigationBarMenuView;
    }

    public void c(boolean z10) {
        this.f9780c = z10;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f9781f;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        return this.f9779b;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        this.f9778a = menuBuilder;
        this.f9779b.initialize(menuBuilder);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z10) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f9779b.k(savedState.f9782a);
            this.f9779b.j(com.google.android.material.badge.b.b(this.f9779b.getContext(), savedState.f9783b));
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.f9782a = this.f9779b.getSelectedItemId();
        savedState.f9783b = com.google.android.material.badge.b.c(this.f9779b.getBadgeDrawables());
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z10) {
        if (this.f9780c) {
            return;
        }
        if (z10) {
            this.f9779b.c();
        } else {
            this.f9779b.l();
        }
    }
}
