package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.m0;
import androidx.fragment.R$id;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.f0;
import androidx.lifecycle.l;
import androidx.lifecycle.x0;

/* JADX INFO: loaded from: classes.dex */
class w {

    /* JADX INFO: renamed from: a */
    private final n f2705a;

    /* JADX INFO: renamed from: b */
    private final y f2706b;

    /* JADX INFO: renamed from: c */
    private final Fragment f2707c;

    /* JADX INFO: renamed from: d */
    private boolean f2708d = false;

    /* JADX INFO: renamed from: e */
    private int f2709e = -1;

    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f2710a;

        a(View view) {
            this.f2710a = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f2710a.removeOnAttachStateChangeListener(this);
            m0.f0(this.f2710a);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f2712a;

        static {
            int[] iArr = new int[l.b.values().length];
            f2712a = iArr;
            try {
                iArr[l.b.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2712a[l.b.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2712a[l.b.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2712a[l.b.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    w(n nVar, y yVar, Fragment fragment) {
        this.f2705a = nVar;
        this.f2706b = yVar;
        this.f2707c = fragment;
    }

    private boolean l(View view) {
        if (view == this.f2707c.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.f2707c.mView) {
                return true;
            }
        }
        return false;
    }

    private Bundle q() {
        Bundle bundle = new Bundle();
        this.f2707c.performSaveInstanceState(bundle);
        this.f2705a.j(this.f2707c, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.f2707c.mView != null) {
            t();
        }
        if (this.f2707c.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", this.f2707c.mSavedViewState);
        }
        if (this.f2707c.mSavedViewRegistryState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle("android:view_registry_state", this.f2707c.mSavedViewRegistryState);
        }
        if (!this.f2707c.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", this.f2707c.mUserVisibleHint);
        }
        return bundle;
    }

    void a() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.f2707c);
        }
        Fragment fragment = this.f2707c;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        n nVar = this.f2705a;
        Fragment fragment2 = this.f2707c;
        nVar.a(fragment2, fragment2.mSavedFragmentState, false);
    }

    void b() {
        int iJ = this.f2706b.j(this.f2707c);
        Fragment fragment = this.f2707c;
        fragment.mContainer.addView(fragment.mView, iJ);
    }

    void c() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto ATTACHED: " + this.f2707c);
        }
        Fragment fragment = this.f2707c;
        Fragment fragment2 = fragment.mTarget;
        w wVarN = null;
        if (fragment2 != null) {
            w wVarN2 = this.f2706b.n(fragment2.mWho);
            if (wVarN2 == null) {
                throw new IllegalStateException("Fragment " + this.f2707c + " declared target fragment " + this.f2707c.mTarget + " that does not belong to this FragmentManager!");
            }
            Fragment fragment3 = this.f2707c;
            fragment3.mTargetWho = fragment3.mTarget.mWho;
            fragment3.mTarget = null;
            wVarN = wVarN2;
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (wVarN = this.f2706b.n(str)) == null) {
                throw new IllegalStateException("Fragment " + this.f2707c + " declared target fragment " + this.f2707c.mTargetWho + " that does not belong to this FragmentManager!");
            }
        }
        if (wVarN != null) {
            wVarN.m();
        }
        Fragment fragment4 = this.f2707c;
        fragment4.mHost = fragment4.mFragmentManager.u0();
        Fragment fragment5 = this.f2707c;
        fragment5.mParentFragment = fragment5.mFragmentManager.x0();
        this.f2705a.g(this.f2707c, false);
        this.f2707c.performAttach();
        this.f2705a.b(this.f2707c, false);
    }

    int d() {
        Fragment fragment = this.f2707c;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int iMin = this.f2709e;
        int i10 = b.f2712a[fragment.mMaxState.ordinal()];
        if (i10 != 1) {
            iMin = i10 != 2 ? i10 != 3 ? i10 != 4 ? Math.min(iMin, -1) : Math.min(iMin, 0) : Math.min(iMin, 1) : Math.min(iMin, 5);
        }
        Fragment fragment2 = this.f2707c;
        if (fragment2.mFromLayout) {
            if (fragment2.mInLayout) {
                iMin = Math.max(this.f2709e, 2);
                View view = this.f2707c.mView;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f2709e < 4 ? Math.min(iMin, fragment2.mState) : Math.min(iMin, 1);
            }
        }
        if (!this.f2707c.mAdded) {
            iMin = Math.min(iMin, 1);
        }
        Fragment fragment3 = this.f2707c;
        ViewGroup viewGroup = fragment3.mContainer;
        f0.e.b bVarL = viewGroup != null ? f0.n(viewGroup, fragment3.getParentFragmentManager()).l(this) : null;
        if (bVarL == f0.e.b.ADDING) {
            iMin = Math.min(iMin, 6);
        } else if (bVarL == f0.e.b.REMOVING) {
            iMin = Math.max(iMin, 3);
        } else {
            Fragment fragment4 = this.f2707c;
            if (fragment4.mRemoving) {
                iMin = fragment4.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, -1);
            }
        }
        Fragment fragment5 = this.f2707c;
        if (fragment5.mDeferStart && fragment5.mState < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + this.f2707c);
        }
        return iMin;
    }

    void e() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.f2707c);
        }
        Fragment fragment = this.f2707c;
        if (fragment.mIsCreated) {
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.f2707c.mState = 1;
            return;
        }
        this.f2705a.h(fragment, fragment.mSavedFragmentState, false);
        Fragment fragment2 = this.f2707c;
        fragment2.performCreate(fragment2.mSavedFragmentState);
        n nVar = this.f2705a;
        Fragment fragment3 = this.f2707c;
        nVar.c(fragment3, fragment3.mSavedFragmentState, false);
    }

    void f() {
        String resourceName;
        if (this.f2707c.mFromLayout) {
            return;
        }
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f2707c);
        }
        Fragment fragment = this.f2707c;
        LayoutInflater layoutInflaterPerformGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        Fragment fragment2 = this.f2707c;
        ViewGroup viewGroup = fragment2.mContainer;
        if (viewGroup == null) {
            int i10 = fragment2.mContainerId;
            if (i10 == 0) {
                viewGroup = null;
            } else {
                if (i10 == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f2707c + " for a container view with no id");
                }
                viewGroup = (ViewGroup) fragment2.mFragmentManager.p0().c(this.f2707c.mContainerId);
                if (viewGroup == null) {
                    Fragment fragment3 = this.f2707c;
                    if (!fragment3.mRestored) {
                        try {
                            resourceName = fragment3.getResources().getResourceName(this.f2707c.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f2707c.mContainerId) + " (" + resourceName + ") for fragment " + this.f2707c);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    i0.c.n(this.f2707c, viewGroup);
                }
            }
        }
        Fragment fragment4 = this.f2707c;
        fragment4.mContainer = viewGroup;
        fragment4.performCreateView(layoutInflaterPerformGetLayoutInflater, viewGroup, fragment4.mSavedFragmentState);
        View view = this.f2707c.mView;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.f2707c;
            fragment5.mView.setTag(R$id.fragment_container_view_tag, fragment5);
            if (viewGroup != null) {
                b();
            }
            Fragment fragment6 = this.f2707c;
            if (fragment6.mHidden) {
                fragment6.mView.setVisibility(8);
            }
            if (m0.N(this.f2707c.mView)) {
                m0.f0(this.f2707c.mView);
            } else {
                View view2 = this.f2707c.mView;
                view2.addOnAttachStateChangeListener(new a(view2));
            }
            this.f2707c.performViewCreated();
            n nVar = this.f2705a;
            Fragment fragment7 = this.f2707c;
            nVar.m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
            int visibility = this.f2707c.mView.getVisibility();
            this.f2707c.setPostOnViewCreatedAlpha(this.f2707c.mView.getAlpha());
            Fragment fragment8 = this.f2707c;
            if (fragment8.mContainer != null && visibility == 0) {
                View viewFindFocus = fragment8.mView.findFocus();
                if (viewFindFocus != null) {
                    this.f2707c.setFocusedView(viewFindFocus);
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + this.f2707c);
                    }
                }
                this.f2707c.mView.setAlpha(0.0f);
            }
        }
        this.f2707c.mState = 2;
    }

    void g() {
        Fragment fragmentF;
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.f2707c);
        }
        Fragment fragment = this.f2707c;
        boolean zIsChangingConfigurations = true;
        boolean z10 = fragment.mRemoving && !fragment.isInBackStack();
        if (z10) {
            Fragment fragment2 = this.f2707c;
            if (!fragment2.mBeingSaved) {
                this.f2706b.B(fragment2.mWho, null);
            }
        }
        if (!z10 && !this.f2706b.p().q(this.f2707c)) {
            String str = this.f2707c.mTargetWho;
            if (str != null && (fragmentF = this.f2706b.f(str)) != null && fragmentF.mRetainInstance) {
                this.f2707c.mTarget = fragmentF;
            }
            this.f2707c.mState = 0;
            return;
        }
        l lVar = this.f2707c.mHost;
        if (lVar instanceof x0) {
            zIsChangingConfigurations = this.f2706b.p().n();
        } else if (lVar.f() instanceof Activity) {
            zIsChangingConfigurations = true ^ ((Activity) lVar.f()).isChangingConfigurations();
        }
        if ((z10 && !this.f2707c.mBeingSaved) || zIsChangingConfigurations) {
            this.f2706b.p().f(this.f2707c);
        }
        this.f2707c.performDestroy();
        this.f2705a.d(this.f2707c, false);
        for (w wVar : this.f2706b.k()) {
            if (wVar != null) {
                Fragment fragmentK = wVar.k();
                if (this.f2707c.mWho.equals(fragmentK.mTargetWho)) {
                    fragmentK.mTarget = this.f2707c;
                    fragmentK.mTargetWho = null;
                }
            }
        }
        Fragment fragment3 = this.f2707c;
        String str2 = fragment3.mTargetWho;
        if (str2 != null) {
            fragment3.mTarget = this.f2706b.f(str2);
        }
        this.f2706b.s(this);
    }

    void h() {
        View view;
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + this.f2707c);
        }
        Fragment fragment = this.f2707c;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        this.f2707c.performDestroyView();
        this.f2705a.n(this.f2707c, false);
        Fragment fragment2 = this.f2707c;
        fragment2.mContainer = null;
        fragment2.mView = null;
        fragment2.mViewLifecycleOwner = null;
        fragment2.mViewLifecycleOwnerLiveData.n(null);
        this.f2707c.mInLayout = false;
    }

    void i() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.f2707c);
        }
        this.f2707c.performDetach();
        this.f2705a.e(this.f2707c, false);
        Fragment fragment = this.f2707c;
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if ((!fragment.mRemoving || fragment.isInBackStack()) && !this.f2706b.p().q(this.f2707c)) {
            return;
        }
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + this.f2707c);
        }
        this.f2707c.initState();
    }

    void j() {
        Fragment fragment = this.f2707c;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.H0(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f2707c);
            }
            Fragment fragment2 = this.f2707c;
            fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), null, this.f2707c.mSavedFragmentState);
            View view = this.f2707c.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.f2707c;
                fragment3.mView.setTag(R$id.fragment_container_view_tag, fragment3);
                Fragment fragment4 = this.f2707c;
                if (fragment4.mHidden) {
                    fragment4.mView.setVisibility(8);
                }
                this.f2707c.performViewCreated();
                n nVar = this.f2705a;
                Fragment fragment5 = this.f2707c;
                nVar.m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
                this.f2707c.mState = 2;
            }
        }
    }

    Fragment k() {
        return this.f2707c;
    }

    void m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.f2708d) {
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + k());
                return;
            }
            return;
        }
        try {
            this.f2708d = true;
            boolean z10 = false;
            while (true) {
                int iD = d();
                Fragment fragment = this.f2707c;
                int i10 = fragment.mState;
                if (iD == i10) {
                    if (!z10 && i10 == -1 && fragment.mRemoving && !fragment.isInBackStack() && !this.f2707c.mBeingSaved) {
                        if (FragmentManager.H0(3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + this.f2707c);
                        }
                        this.f2706b.p().f(this.f2707c);
                        this.f2706b.s(this);
                        if (FragmentManager.H0(3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + this.f2707c);
                        }
                        this.f2707c.initState();
                    }
                    Fragment fragment2 = this.f2707c;
                    if (fragment2.mHiddenChanged) {
                        if (fragment2.mView != null && (viewGroup = fragment2.mContainer) != null) {
                            f0 f0VarN = f0.n(viewGroup, fragment2.getParentFragmentManager());
                            if (this.f2707c.mHidden) {
                                f0VarN.c(this);
                            } else {
                                f0VarN.e(this);
                            }
                        }
                        Fragment fragment3 = this.f2707c;
                        FragmentManager fragmentManager = fragment3.mFragmentManager;
                        if (fragmentManager != null) {
                            fragmentManager.F0(fragment3);
                        }
                        Fragment fragment4 = this.f2707c;
                        fragment4.mHiddenChanged = false;
                        fragment4.onHiddenChanged(fragment4.mHidden);
                        this.f2707c.mChildFragmentManager.H();
                    }
                    this.f2708d = false;
                    return;
                }
                if (iD <= i10) {
                    switch (i10 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            if (fragment.mBeingSaved && this.f2706b.q(fragment.mWho) == null) {
                                s();
                            }
                            g();
                            break;
                        case 1:
                            h();
                            this.f2707c.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (FragmentManager.H0(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.f2707c);
                            }
                            Fragment fragment5 = this.f2707c;
                            if (fragment5.mBeingSaved) {
                                s();
                            } else if (fragment5.mView != null && fragment5.mSavedViewState == null) {
                                t();
                            }
                            Fragment fragment6 = this.f2707c;
                            if (fragment6.mView != null && (viewGroup2 = fragment6.mContainer) != null) {
                                f0.n(viewGroup2, fragment6.getParentFragmentManager()).d(this);
                            }
                            this.f2707c.mState = 3;
                            break;
                        case 4:
                            w();
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            n();
                            break;
                    }
                } else {
                    switch (i10 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup3 = fragment.mContainer) != null) {
                                f0.n(viewGroup3, fragment.getParentFragmentManager()).b(f0.e.c.from(this.f2707c.mView.getVisibility()), this);
                            }
                            this.f2707c.mState = 4;
                            break;
                        case 5:
                            v();
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            p();
                            break;
                    }
                }
                z10 = true;
            }
        } catch (Throwable th) {
            this.f2708d = false;
            throw th;
        }
    }

    void n() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.f2707c);
        }
        this.f2707c.performPause();
        this.f2705a.f(this.f2707c, false);
    }

    void o(ClassLoader classLoader) {
        Bundle bundle = this.f2707c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.f2707c;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.f2707c;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle("android:view_registry_state");
        Fragment fragment3 = this.f2707c;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString("android:target_state");
        Fragment fragment4 = this.f2707c;
        if (fragment4.mTargetWho != null) {
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        Fragment fragment5 = this.f2707c;
        Boolean bool = fragment5.mSavedUserVisibleHint;
        if (bool != null) {
            fragment5.mUserVisibleHint = bool.booleanValue();
            this.f2707c.mSavedUserVisibleHint = null;
        } else {
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        Fragment fragment6 = this.f2707c;
        if (fragment6.mUserVisibleHint) {
            return;
        }
        fragment6.mDeferStart = true;
    }

    void p() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.f2707c);
        }
        View focusedView = this.f2707c.getFocusedView();
        if (focusedView != null && l(focusedView)) {
            boolean zRequestFocus = focusedView.requestFocus();
            if (FragmentManager.H0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("requestFocus: Restoring focused view ");
                sb.append(focusedView);
                sb.append(" ");
                sb.append(zRequestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(this.f2707c);
                sb.append(" resulting in focused view ");
                sb.append(this.f2707c.mView.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        this.f2707c.setFocusedView(null);
        this.f2707c.performResume();
        this.f2705a.i(this.f2707c, false);
        Fragment fragment = this.f2707c;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    Fragment.SavedState r() {
        Bundle bundleQ;
        if (this.f2707c.mState <= -1 || (bundleQ = q()) == null) {
            return null;
        }
        return new Fragment.SavedState(bundleQ);
    }

    void s() {
        FragmentState fragmentState = new FragmentState(this.f2707c);
        Fragment fragment = this.f2707c;
        if (fragment.mState <= -1 || fragmentState.f2553p != null) {
            fragmentState.f2553p = fragment.mSavedFragmentState;
        } else {
            Bundle bundleQ = q();
            fragmentState.f2553p = bundleQ;
            if (this.f2707c.mTargetWho != null) {
                if (bundleQ == null) {
                    fragmentState.f2553p = new Bundle();
                }
                fragmentState.f2553p.putString("android:target_state", this.f2707c.mTargetWho);
                int i10 = this.f2707c.mTargetRequestCode;
                if (i10 != 0) {
                    fragmentState.f2553p.putInt("android:target_req_state", i10);
                }
            }
        }
        this.f2706b.B(this.f2707c.mWho, fragmentState);
    }

    void t() {
        if (this.f2707c.mView == null) {
            return;
        }
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + this.f2707c + " with view " + this.f2707c.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f2707c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f2707c.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f2707c.mViewLifecycleOwner.e(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f2707c.mSavedViewRegistryState = bundle;
    }

    void u(int i10) {
        this.f2709e = i10;
    }

    void v() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.f2707c);
        }
        this.f2707c.performStart();
        this.f2705a.k(this.f2707c, false);
    }

    void w() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.f2707c);
        }
        this.f2707c.performStop();
        this.f2705a.l(this.f2707c, false);
    }

    w(n nVar, y yVar, ClassLoader classLoader, k kVar, FragmentState fragmentState) {
        this.f2705a = nVar;
        this.f2706b = yVar;
        Fragment fragmentA = fragmentState.a(kVar, classLoader);
        this.f2707c = fragmentA;
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + fragmentA);
        }
    }

    w(n nVar, y yVar, Fragment fragment, FragmentState fragmentState) {
        this.f2705a = nVar;
        this.f2706b = yVar;
        this.f2707c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = fragmentState.f2553p;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }
}
