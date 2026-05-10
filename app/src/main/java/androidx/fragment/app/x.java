package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.l;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class x extends androidx.viewpager.widget.a {
    public static final int BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT = 1;

    @Deprecated
    public static final int BEHAVIOR_SET_USER_VISIBLE_HINT = 0;
    private static final boolean DEBUG = false;
    private static final String TAG = "FragmentStatePagerAdapt";
    private final int mBehavior;
    private z mCurTransaction;
    private Fragment mCurrentPrimaryItem;
    private boolean mExecutingFinishUpdate;
    private final FragmentManager mFragmentManager;
    private ArrayList<Fragment> mFragments;
    private ArrayList<Fragment.SavedState> mSavedState;

    public x(FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    @Override // androidx.viewpager.widget.a
    public void destroyItem(ViewGroup viewGroup, int i10, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.n();
        }
        while (this.mSavedState.size() <= i10) {
            this.mSavedState.add(null);
        }
        this.mSavedState.set(i10, fragment.isAdded() ? this.mFragmentManager.p1(fragment) : null);
        this.mFragments.set(i10, null);
        this.mCurTransaction.p(fragment);
        if (fragment.equals(this.mCurrentPrimaryItem)) {
            this.mCurrentPrimaryItem = null;
        }
    }

    @Override // androidx.viewpager.widget.a
    public void finishUpdate(ViewGroup viewGroup) {
        z zVar = this.mCurTransaction;
        if (zVar != null) {
            if (!this.mExecutingFinishUpdate) {
                try {
                    this.mExecutingFinishUpdate = true;
                    zVar.k();
                } finally {
                    this.mExecutingFinishUpdate = false;
                }
            }
            this.mCurTransaction = null;
        }
    }

    public abstract Fragment getItem(int i10);

    @Override // androidx.viewpager.widget.a
    public Object instantiateItem(ViewGroup viewGroup, int i10) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.mFragments.size() > i10 && (fragment = this.mFragments.get(i10)) != null) {
            return fragment;
        }
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.n();
        }
        Fragment item = getItem(i10);
        if (this.mSavedState.size() > i10 && (savedState = this.mSavedState.get(i10)) != null) {
            item.setInitialSavedState(savedState);
        }
        while (this.mFragments.size() <= i10) {
            this.mFragments.add(null);
        }
        item.setMenuVisibility(false);
        if (this.mBehavior == 0) {
            item.setUserVisibleHint(false);
        }
        this.mFragments.set(i10, item);
        this.mCurTransaction.b(viewGroup.getId(), item);
        if (this.mBehavior == 1) {
            this.mCurTransaction.u(item, l.b.STARTED);
        }
        return item;
    }

    @Override // androidx.viewpager.widget.a
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.a
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.mSavedState.clear();
            this.mFragments.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.mSavedState.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int i10 = Integer.parseInt(str.substring(1));
                    Fragment fragmentQ0 = this.mFragmentManager.q0(bundle, str);
                    if (fragmentQ0 != null) {
                        while (this.mFragments.size() <= i10) {
                            this.mFragments.add(null);
                        }
                        fragmentQ0.setMenuVisibility(false);
                        this.mFragments.set(i10, fragmentQ0);
                    } else {
                        Log.w(TAG, "Bad fragment at key " + str);
                    }
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.a
    public Parcelable saveState() {
        Bundle bundle;
        if (this.mSavedState.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.mSavedState.size()];
            this.mSavedState.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        for (int i10 = 0; i10 < this.mFragments.size(); i10++) {
            Fragment fragment = this.mFragments.get(i10);
            if (fragment != null && fragment.isAdded()) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                this.mFragmentManager.g1(bundle, "f" + i10, fragment);
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager.widget.a
    public void setPrimaryItem(ViewGroup viewGroup, int i10, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.mCurrentPrimaryItem;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.mBehavior == 1) {
                    if (this.mCurTransaction == null) {
                        this.mCurTransaction = this.mFragmentManager.n();
                    }
                    this.mCurTransaction.u(this.mCurrentPrimaryItem, l.b.STARTED);
                } else {
                    this.mCurrentPrimaryItem.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.mBehavior == 1) {
                if (this.mCurTransaction == null) {
                    this.mCurTransaction = this.mFragmentManager.n();
                }
                this.mCurTransaction.u(fragment, l.b.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.mCurrentPrimaryItem = fragment;
        }
    }

    @Override // androidx.viewpager.widget.a
    public void startUpdate(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    public x(FragmentManager fragmentManager, int i10) {
        this.mCurTransaction = null;
        this.mSavedState = new ArrayList<>();
        this.mFragments = new ArrayList<>();
        this.mCurrentPrimaryItem = null;
        this.mFragmentManager = fragmentManager;
        this.mBehavior = i10;
    }
}
