package com.coui.appcompat.viewpager.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.collection.b;
import androidx.collection.f;
import androidx.core.view.m0;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.z;
import androidx.lifecycle.l;
import androidx.lifecycle.p;
import androidx.lifecycle.s;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.coui.appcompat.viewpager.COUIViewPager2;
import java.util.Iterator;
import x0.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class COUIFragmentStateAdapter extends RecyclerView.h implements a {
    private static final long GRACE_WINDOW_TIME_MS = 10000;
    private static final String KEY_PREFIX_FRAGMENT = "f#";
    private static final String KEY_PREFIX_STATE = "s#";
    final FragmentManager mFragmentManager;
    private FragmentMaxLifecycleEnforcer mFragmentMaxLifecycleEnforcer;
    final f mFragments;
    private boolean mHasStaleFragments;
    boolean mIsInGracePeriod;
    private final f mItemIdToViewHolder;
    final l mLifecycle;
    private final f mSavedStates;

    private static abstract class DataSetChangeObserver extends RecyclerView.j {
        private DataSetChangeObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public abstract void onChanged();

        public final void onItemRangeChanged(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public final void onItemRangeInserted(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public final void onItemRangeMoved(int i10, int i11, int i12) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public final void onItemRangeRemoved(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public final void onItemRangeChanged(int i10, int i11, Object obj) {
            onChanged();
        }
    }

    class FragmentMaxLifecycleEnforcer {
        private RecyclerView.j mDataObserver;
        private p mLifecycleObserver;
        private ViewPager2.i mPageChangeCallback;
        private long mPrimaryItemId = -1;
        private COUIViewPager2 mViewPager;

        FragmentMaxLifecycleEnforcer() {
        }

        private COUIViewPager2 inferViewPager(RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof COUIViewPager2) {
                return (COUIViewPager2) parent;
            }
            throw new IllegalStateException("Expected COUIViewPager instance. Got: " + parent);
        }

        void register(RecyclerView recyclerView) {
            this.mViewPager = inferViewPager(recyclerView);
            ViewPager2.i iVar = new ViewPager2.i() { // from class: com.coui.appcompat.viewpager.adapter.COUIFragmentStateAdapter.FragmentMaxLifecycleEnforcer.1
                @Override // androidx.viewpager2.widget.ViewPager2.i
                public void onPageScrollStateChanged(int i10) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }

                @Override // androidx.viewpager2.widget.ViewPager2.i
                public void onPageSelected(int i10) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }
            };
            this.mPageChangeCallback = iVar;
            this.mViewPager.registerOnPageChangeCallback(iVar);
            DataSetChangeObserver dataSetChangeObserver = new DataSetChangeObserver() { // from class: com.coui.appcompat.viewpager.adapter.COUIFragmentStateAdapter.FragmentMaxLifecycleEnforcer.2
                @Override // com.coui.appcompat.viewpager.adapter.COUIFragmentStateAdapter.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.j
                public void onChanged() {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(true);
                }
            };
            this.mDataObserver = dataSetChangeObserver;
            COUIFragmentStateAdapter.this.registerAdapterDataObserver(dataSetChangeObserver);
            p pVar = new p() { // from class: com.coui.appcompat.viewpager.adapter.COUIFragmentStateAdapter.FragmentMaxLifecycleEnforcer.3
                @Override // androidx.lifecycle.p
                public void onStateChanged(s sVar, l.a aVar) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }
            };
            this.mLifecycleObserver = pVar;
            COUIFragmentStateAdapter.this.mLifecycle.a(pVar);
        }

        void unregister(RecyclerView recyclerView) {
            inferViewPager(recyclerView).unregisterOnPageChangeCallback(this.mPageChangeCallback);
            COUIFragmentStateAdapter.this.unregisterAdapterDataObserver(this.mDataObserver);
            COUIFragmentStateAdapter.this.mLifecycle.d(this.mLifecycleObserver);
            this.mViewPager = null;
        }

        void updateFragmentMaxLifecycle(boolean z10) {
            int currentItem;
            Fragment fragment;
            if (COUIFragmentStateAdapter.this.shouldDelayFragmentTransactions() || this.mViewPager.getScrollState() != 0 || COUIFragmentStateAdapter.this.mFragments.g() || COUIFragmentStateAdapter.this.getItemCount() == 0 || (currentItem = this.mViewPager.getCurrentItem()) >= COUIFragmentStateAdapter.this.getItemCount()) {
                return;
            }
            long itemId = COUIFragmentStateAdapter.this.getItemId(currentItem);
            if ((itemId != this.mPrimaryItemId || z10) && (fragment = (Fragment) COUIFragmentStateAdapter.this.mFragments.e(itemId)) != null && fragment.isAdded()) {
                this.mPrimaryItemId = itemId;
                z zVarN = COUIFragmentStateAdapter.this.mFragmentManager.n();
                Fragment fragment2 = null;
                for (int i10 = 0; i10 < COUIFragmentStateAdapter.this.mFragments.l(); i10++) {
                    long jH = COUIFragmentStateAdapter.this.mFragments.h(i10);
                    Fragment fragment3 = (Fragment) COUIFragmentStateAdapter.this.mFragments.m(i10);
                    if (fragment3.isAdded()) {
                        if (jH != this.mPrimaryItemId) {
                            zVarN.u(fragment3, l.b.STARTED);
                        } else {
                            fragment2 = fragment3;
                        }
                        fragment3.setMenuVisibility(jH == this.mPrimaryItemId);
                    }
                }
                if (fragment2 != null) {
                    zVarN.u(fragment2, l.b.RESUMED);
                }
                if (zVarN.o()) {
                    return;
                }
                zVarN.j();
            }
        }
    }

    public static final class FragmentViewHolder extends RecyclerView.d0 {
        private FragmentViewHolder(FrameLayout frameLayout) {
            super(frameLayout);
        }

        static FragmentViewHolder create(ViewGroup viewGroup) {
            FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            frameLayout.setId(m0.i());
            frameLayout.setSaveEnabled(false);
            return new FragmentViewHolder(frameLayout);
        }

        FrameLayout getContainer() {
            return (FrameLayout) this.itemView;
        }
    }

    public COUIFragmentStateAdapter(FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    private static String createKey(String str, long j10) {
        return str + j10;
    }

    private void ensureFragment(int i10) {
        long itemId = getItemId(i10);
        if (this.mFragments.d(itemId)) {
            return;
        }
        Fragment fragmentCreateFragment = createFragment(i10);
        fragmentCreateFragment.setInitialSavedState((Fragment.SavedState) this.mSavedStates.e(itemId));
        this.mFragments.i(itemId, fragmentCreateFragment);
    }

    private boolean isFragmentViewBound(long j10) {
        View view;
        if (this.mItemIdToViewHolder.d(j10)) {
            return true;
        }
        Fragment fragment = (Fragment) this.mFragments.e(j10);
        return (fragment == null || (view = fragment.getView()) == null || view.getParent() == null) ? false : true;
    }

    private static boolean isValidKey(String str, String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    private Long itemForViewHolder(int i10) {
        Long lValueOf = null;
        for (int i11 = 0; i11 < this.mItemIdToViewHolder.l(); i11++) {
            if (((Integer) this.mItemIdToViewHolder.m(i11)).intValue() == i10) {
                if (lValueOf != null) {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
                lValueOf = Long.valueOf(this.mItemIdToViewHolder.h(i11));
            }
        }
        return lValueOf;
    }

    private static long parseIdFromKey(String str, String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    private void removeFragment(long j10) {
        ViewParent parent;
        Fragment fragment = (Fragment) this.mFragments.e(j10);
        if (fragment == null) {
            return;
        }
        if (fragment.getView() != null && (parent = fragment.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!containsItem(j10)) {
            this.mSavedStates.j(j10);
        }
        if (!fragment.isAdded()) {
            this.mFragments.j(j10);
            return;
        }
        if (shouldDelayFragmentTransactions()) {
            this.mHasStaleFragments = true;
            return;
        }
        if (fragment.isAdded() && containsItem(j10)) {
            this.mSavedStates.i(j10, this.mFragmentManager.p1(fragment));
        }
        this.mFragmentManager.n().p(fragment).j();
        this.mFragments.j(j10);
    }

    private void scheduleGracePeriodEnd() {
        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable runnable = new Runnable() { // from class: com.coui.appcompat.viewpager.adapter.COUIFragmentStateAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                COUIFragmentStateAdapter cOUIFragmentStateAdapter = COUIFragmentStateAdapter.this;
                cOUIFragmentStateAdapter.mIsInGracePeriod = false;
                cOUIFragmentStateAdapter.gcFragments();
            }
        };
        this.mLifecycle.a(new p() { // from class: com.coui.appcompat.viewpager.adapter.COUIFragmentStateAdapter.5
            @Override // androidx.lifecycle.p
            public void onStateChanged(s sVar, l.a aVar) {
                if (aVar == l.a.ON_DESTROY) {
                    handler.removeCallbacks(runnable);
                    sVar.getLifecycle().d(this);
                }
            }
        });
        handler.postDelayed(runnable, GRACE_WINDOW_TIME_MS);
    }

    private void scheduleViewAttach(final Fragment fragment, final FrameLayout frameLayout) {
        this.mFragmentManager.h1(new FragmentManager.k() { // from class: com.coui.appcompat.viewpager.adapter.COUIFragmentStateAdapter.3
            @Override // androidx.fragment.app.FragmentManager.k
            public void onFragmentViewCreated(FragmentManager fragmentManager, Fragment fragment2, View view, Bundle bundle) {
                if (fragment2 == fragment) {
                    fragmentManager.y1(this);
                    COUIFragmentStateAdapter.this.addViewToContainer(view, frameLayout);
                }
            }
        }, false);
    }

    void addViewToContainer(View view, FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    public boolean containsItem(long j10) {
        return j10 >= 0 && j10 < ((long) getItemCount());
    }

    public abstract Fragment createFragment(int i10);

    void gcFragments() {
        if (!this.mHasStaleFragments || shouldDelayFragmentTransactions()) {
            return;
        }
        b bVar = new b();
        for (int i10 = 0; i10 < this.mFragments.l(); i10++) {
            long jH = this.mFragments.h(i10);
            if (!containsItem(jH)) {
                bVar.add(Long.valueOf(jH));
                this.mItemIdToViewHolder.j(jH);
            }
        }
        if (!this.mIsInGracePeriod) {
            this.mHasStaleFragments = false;
            for (int i11 = 0; i11 < this.mFragments.l(); i11++) {
                long jH2 = this.mFragments.h(i11);
                if (!isFragmentViewBound(jH2)) {
                    bVar.add(Long.valueOf(jH2));
                }
            }
        }
        Iterator it = bVar.iterator();
        while (it.hasNext()) {
            removeFragment(((Long) it.next()).longValue());
        }
    }

    public Fragment getFragmentWithPosition(int i10) {
        return (Fragment) this.mFragments.e(getItemId(i10));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public long getItemId(int i10) {
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        if (this.mFragmentMaxLifecycleEnforcer != null) {
            throw new IllegalArgumentException();
        }
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer();
        this.mFragmentMaxLifecycleEnforcer = fragmentMaxLifecycleEnforcer;
        fragmentMaxLifecycleEnforcer.register(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.mFragmentMaxLifecycleEnforcer.unregister(recyclerView);
        this.mFragmentMaxLifecycleEnforcer = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final boolean onFailedToRecycleView(FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    void placeFragmentInViewHolder(final FragmentViewHolder fragmentViewHolder) {
        Fragment fragment = (Fragment) this.mFragments.e(fragmentViewHolder.getItemId());
        if (fragment == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        FrameLayout container = fragmentViewHolder.getContainer();
        View view = fragment.getView();
        if (!fragment.isAdded() && view != null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (fragment.isAdded() && view == null) {
            scheduleViewAttach(fragment, container);
            return;
        }
        if (fragment.isAdded() && view.getParent() != null) {
            if (view.getParent() != container) {
                addViewToContainer(view, container);
                return;
            }
            return;
        }
        if (fragment.isAdded()) {
            addViewToContainer(view, container);
            return;
        }
        if (shouldDelayFragmentTransactions()) {
            if (this.mFragmentManager.G0()) {
                return;
            }
            this.mLifecycle.a(new p() { // from class: com.coui.appcompat.viewpager.adapter.COUIFragmentStateAdapter.2
                @Override // androidx.lifecycle.p
                public void onStateChanged(s sVar, l.a aVar) {
                    if (COUIFragmentStateAdapter.this.shouldDelayFragmentTransactions()) {
                        return;
                    }
                    sVar.getLifecycle().d(this);
                    if (m0.N(fragmentViewHolder.getContainer())) {
                        COUIFragmentStateAdapter.this.placeFragmentInViewHolder(fragmentViewHolder);
                    }
                }
            });
            return;
        }
        scheduleViewAttach(fragment, container);
        this.mFragmentManager.n().e(fragment, "f" + fragmentViewHolder.getItemId()).u(fragment, l.b.STARTED).j();
        this.mFragmentMaxLifecycleEnforcer.updateFragmentMaxLifecycle(false);
    }

    @Override // x0.a
    public final void restoreState(Parcelable parcelable) {
        if (!this.mSavedStates.g() || !this.mFragments.g()) {
            throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (isValidKey(str, KEY_PREFIX_FRAGMENT)) {
                this.mFragments.i(parseIdFromKey(str, KEY_PREFIX_FRAGMENT), this.mFragmentManager.q0(bundle, str));
            } else {
                if (!isValidKey(str, KEY_PREFIX_STATE)) {
                    throw new IllegalArgumentException("Unexpected key in savedState: " + str);
                }
                long idFromKey = parseIdFromKey(str, KEY_PREFIX_STATE);
                Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                if (containsItem(idFromKey)) {
                    this.mSavedStates.i(idFromKey, savedState);
                }
            }
        }
        if (this.mFragments.g()) {
            return;
        }
        this.mHasStaleFragments = true;
        this.mIsInGracePeriod = true;
        gcFragments();
        scheduleGracePeriodEnd();
    }

    @Override // x0.a
    public final Parcelable saveState() {
        Bundle bundle = new Bundle(this.mFragments.l() + this.mSavedStates.l());
        for (int i10 = 0; i10 < this.mFragments.l(); i10++) {
            long jH = this.mFragments.h(i10);
            Fragment fragment = (Fragment) this.mFragments.e(jH);
            if (fragment != null && fragment.isAdded()) {
                this.mFragmentManager.g1(bundle, createKey(KEY_PREFIX_FRAGMENT, jH), fragment);
            }
        }
        for (int i11 = 0; i11 < this.mSavedStates.l(); i11++) {
            long jH2 = this.mSavedStates.h(i11);
            if (containsItem(jH2)) {
                bundle.putParcelable(createKey(KEY_PREFIX_STATE, jH2), (Parcelable) this.mSavedStates.e(jH2));
            }
        }
        return bundle;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void setHasStableIds(boolean z10) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    boolean shouldDelayFragmentTransactions() {
        return this.mFragmentManager.O0();
    }

    public COUIFragmentStateAdapter(Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void onBindViewHolder(final FragmentViewHolder fragmentViewHolder, int i10) {
        long itemId = fragmentViewHolder.getItemId();
        int id = fragmentViewHolder.getContainer().getId();
        Long lItemForViewHolder = itemForViewHolder(id);
        if (lItemForViewHolder != null && lItemForViewHolder.longValue() != itemId) {
            removeFragment(lItemForViewHolder.longValue());
            this.mItemIdToViewHolder.j(lItemForViewHolder.longValue());
        }
        this.mItemIdToViewHolder.i(itemId, Integer.valueOf(id));
        ensureFragment(i10);
        final FrameLayout container = fragmentViewHolder.getContainer();
        if (m0.N(container)) {
            if (container.getParent() != null) {
                throw new IllegalStateException("Design assumption violated.");
            }
            container.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.coui.appcompat.viewpager.adapter.COUIFragmentStateAdapter.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                    if (container.getParent() != null) {
                        container.removeOnLayoutChangeListener(this);
                        COUIFragmentStateAdapter.this.placeFragmentInViewHolder(fragmentViewHolder);
                    }
                }
            });
        }
        gcFragments();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final FragmentViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return FragmentViewHolder.create(viewGroup);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void onViewAttachedToWindow(FragmentViewHolder fragmentViewHolder) {
        placeFragmentInViewHolder(fragmentViewHolder);
        gcFragments();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void onViewRecycled(FragmentViewHolder fragmentViewHolder) {
        Long lItemForViewHolder = itemForViewHolder(fragmentViewHolder.getContainer().getId());
        if (lItemForViewHolder != null) {
            removeFragment(lItemForViewHolder.longValue());
            this.mItemIdToViewHolder.j(lItemForViewHolder.longValue());
        }
    }

    public COUIFragmentStateAdapter(FragmentManager fragmentManager, l lVar) {
        this.mFragments = new f();
        this.mSavedStates = new f();
        this.mItemIdToViewHolder = new f();
        this.mIsInGracePeriod = false;
        this.mHasStaleFragments = false;
        this.mFragmentManager = fragmentManager;
        this.mLifecycle = lVar;
        super.setHasStableIds(true);
    }
}
