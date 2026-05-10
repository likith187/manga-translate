package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.k0;
import androidx.lifecycle.l;
import androidx.lifecycle.o0;
import androidx.lifecycle.u0;
import androidx.lifecycle.w0;
import androidx.lifecycle.x0;
import androidx.lifecycle.y0;
import androidx.lifecycle.z0;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.s, x0, androidx.lifecycle.j, q0.h {
    static final int ACTIVITY_CREATED = 4;
    static final int ATTACHED = 0;
    static final int AWAITING_ENTER_EFFECTS = 6;
    static final int AWAITING_EXIT_EFFECTS = 3;
    static final int CREATED = 1;
    static final int INITIALIZING = -1;
    static final int RESUMED = 7;
    static final int STARTED = 5;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    static final int VIEW_CREATED = 2;
    boolean mAdded;
    k mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mBeingSaved;
    private boolean mCalled;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    u0.c mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    FragmentManager mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    androidx.fragment.app.l mHost;
    boolean mInLayout;
    boolean mIsCreated;
    LayoutInflater mLayoutInflater;
    androidx.lifecycle.u mLifecycleRegistry;
    Fragment mParentFragment;
    boolean mPerformedCreateView;
    public String mPreviousWho;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    q0.g mSavedStateRegistryController;
    Boolean mSavedUserVisibleHint;
    Bundle mSavedViewRegistryState;
    SparseArray<Parcelable> mSavedViewState;
    String mTag;
    Fragment mTarget;
    int mTargetRequestCode;
    View mView;
    d0 mViewLifecycleOwner;
    int mState = -1;
    String mWho = UUID.randomUUID().toString();
    String mTargetWho = null;
    private Boolean mIsPrimaryNavigationFragment = null;
    FragmentManager mChildFragmentManager = new t();
    boolean mMenuVisible = true;
    boolean mUserVisibleHint = true;
    Runnable mPostponedDurationRunnable = new b();
    l.b mMaxState = l.b.RESUMED;
    androidx.lifecycle.a0 mViewLifecycleOwnerLiveData = new androidx.lifecycle.a0();
    private final AtomicInteger mNextLocalRequestCode = new AtomicInteger();
    private final ArrayList<n> mOnPreAttachedListeners = new ArrayList<>();
    private final n mSavedStateAttachListener = new c();

    class a extends androidx.activity.result.b {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ AtomicReference f2448a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ d.a f2449b;

        a(AtomicReference atomicReference, d.a aVar) {
            this.f2448a = atomicReference;
            this.f2449b = aVar;
        }

        @Override // androidx.activity.result.b
        public void b(Object obj, androidx.core.app.b bVar) {
            androidx.activity.result.b bVar2 = (androidx.activity.result.b) this.f2448a.get();
            if (bVar2 == null) {
                throw new IllegalStateException("Operation cannot be started before fragment is in created state");
            }
            bVar2.b(obj, bVar);
        }

        @Override // androidx.activity.result.b
        public void c() {
            androidx.activity.result.b bVar = (androidx.activity.result.b) this.f2448a.getAndSet(null);
            if (bVar != null) {
                bVar.c();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.startPostponedEnterTransition();
        }
    }

    class c extends n {
        c() {
            super(null);
        }

        @Override // androidx.fragment.app.Fragment.n
        void a() {
            Fragment.this.mSavedStateRegistryController.c();
            k0.c(Fragment.this);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.callStartTransitionListener(false);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ f0 f2454a;

        e(f0 f0Var) {
            this.f2454a = f0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2454a.g();
        }
    }

    class f extends androidx.fragment.app.i {
        f() {
        }

        @Override // androidx.fragment.app.i
        public View c(int i10) {
            View view = Fragment.this.mView;
            if (view != null) {
                return view.findViewById(i10);
            }
            throw new IllegalStateException("Fragment " + Fragment.this + " does not have a view");
        }

        @Override // androidx.fragment.app.i
        public boolean d() {
            return Fragment.this.mView != null;
        }
    }

    class g implements androidx.lifecycle.p {
        g() {
        }

        @Override // androidx.lifecycle.p
        public void onStateChanged(androidx.lifecycle.s sVar, l.a aVar) {
            View view;
            if (aVar != l.a.ON_STOP || (view = Fragment.this.mView) == null) {
                return;
            }
            l.a(view);
        }
    }

    class h implements j.a {
        h() {
        }

        @Override // j.a
        /* JADX INFO: renamed from: a */
        public androidx.activity.result.d apply(Void r22) {
            Fragment fragment = Fragment.this;
            Object obj = fragment.mHost;
            return obj instanceof androidx.activity.result.e ? ((androidx.activity.result.e) obj).getActivityResultRegistry() : fragment.requireActivity().getActivityResultRegistry();
        }
    }

    class i implements j.a {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ androidx.activity.result.d f2459a;

        i(androidx.activity.result.d dVar) {
            this.f2459a = dVar;
        }

        @Override // j.a
        /* JADX INFO: renamed from: a */
        public androidx.activity.result.d apply(Void r12) {
            return this.f2459a;
        }
    }

    class j extends n {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ j.a f2461a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AtomicReference f2462b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ d.a f2463c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ androidx.activity.result.a f2464d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(j.a aVar, AtomicReference atomicReference, d.a aVar2, androidx.activity.result.a aVar3) {
            super(null);
            this.f2461a = aVar;
            this.f2462b = atomicReference;
            this.f2463c = aVar2;
            this.f2464d = aVar3;
        }

        @Override // androidx.fragment.app.Fragment.n
        void a() {
            String strGenerateActivityResultKey = Fragment.this.generateActivityResultKey();
            this.f2462b.set(((androidx.activity.result.d) this.f2461a.apply(null)).l(strGenerateActivityResultKey, Fragment.this, this.f2463c, this.f2464d));
        }
    }

    static class k {

        /* JADX INFO: renamed from: a */
        View f2466a;

        /* JADX INFO: renamed from: b */
        boolean f2467b;

        /* JADX INFO: renamed from: c */
        int f2468c;

        /* JADX INFO: renamed from: d */
        int f2469d;

        /* JADX INFO: renamed from: e */
        int f2470e;

        /* JADX INFO: renamed from: f */
        int f2471f;

        /* JADX INFO: renamed from: g */
        int f2472g;

        /* JADX INFO: renamed from: h */
        ArrayList f2473h;

        /* JADX INFO: renamed from: i */
        ArrayList f2474i;

        /* JADX INFO: renamed from: j */
        Object f2475j = null;

        /* JADX INFO: renamed from: k */
        Object f2476k;

        /* JADX INFO: renamed from: l */
        Object f2477l;

        /* JADX INFO: renamed from: m */
        Object f2478m;

        /* JADX INFO: renamed from: n */
        Object f2479n;

        /* JADX INFO: renamed from: o */
        Object f2480o;

        /* JADX INFO: renamed from: p */
        Boolean f2481p;

        /* JADX INFO: renamed from: q */
        Boolean f2482q;

        /* JADX INFO: renamed from: r */
        float f2483r;

        /* JADX INFO: renamed from: s */
        View f2484s;

        /* JADX INFO: renamed from: t */
        boolean f2485t;

        k() {
            Object obj = Fragment.USE_DEFAULT_TRANSITION;
            this.f2476k = obj;
            this.f2477l = null;
            this.f2478m = obj;
            this.f2479n = null;
            this.f2480o = obj;
            this.f2483r = 1.0f;
            this.f2484s = null;
        }
    }

    static class l {
        static void a(View view) {
            view.cancelPendingInputEvents();
        }
    }

    public static class m extends RuntimeException {
        public m(String str, Exception exc) {
            super(str, exc);
        }
    }

    private static abstract class n {
        private n() {
        }

        abstract void a();

        /* synthetic */ n(b bVar) {
            this();
        }
    }

    public Fragment() {
        g();
    }

    private k d() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new k();
        }
        return this.mAnimationInfo;
    }

    private int e() {
        l.b bVar = this.mMaxState;
        return (bVar == l.b.INITIALIZED || this.mParentFragment == null) ? bVar.ordinal() : Math.min(bVar.ordinal(), this.mParentFragment.e());
    }

    private Fragment f(boolean z10) {
        String str;
        if (z10) {
            i0.c.j(this);
        }
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return fragmentManager.e0(str);
    }

    private void g() {
        this.mLifecycleRegistry = new androidx.lifecycle.u(this);
        this.mSavedStateRegistryController = q0.g.a(this);
        this.mDefaultFactory = null;
        if (this.mOnPreAttachedListeners.contains(this.mSavedStateAttachListener)) {
            return;
        }
        j(this.mSavedStateAttachListener);
    }

    private androidx.activity.result.b h(d.a aVar, j.a aVar2, androidx.activity.result.a aVar3) {
        if (this.mState <= 1) {
            AtomicReference atomicReference = new AtomicReference();
            j(new j(aVar2, atomicReference, aVar, aVar3));
            return new a(atomicReference, aVar);
        }
        throw new IllegalStateException("Fragment " + this + " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate()).");
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    private void j(n nVar) {
        if (this.mState >= 0) {
            nVar.a();
        } else {
            this.mOnPreAttachedListeners.add(nVar);
        }
    }

    private void k() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this);
        }
        if (this.mView != null) {
            restoreViewState(this.mSavedFragmentState);
        }
        this.mSavedFragmentState = null;
    }

    void callStartTransitionListener(boolean z10) {
        ViewGroup viewGroup;
        FragmentManager fragmentManager;
        k kVar = this.mAnimationInfo;
        if (kVar != null) {
            kVar.f2485t = false;
        }
        if (this.mView == null || (viewGroup = this.mContainer) == null || (fragmentManager = this.mFragmentManager) == null) {
            return;
        }
        f0 f0VarN = f0.n(viewGroup, fragmentManager);
        f0VarN.p();
        if (z10) {
            this.mHost.g().post(new e(f0VarN));
        } else {
            f0VarN.g();
        }
    }

    androidx.fragment.app.i createFragmentContainer() {
        return new f();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.mSavedViewRegistryState);
        }
        Fragment fragmentF = f(false);
        if (fragmentF != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(fragmentF);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(getPopDirection());
        if (getEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(getEnterAnim());
        }
        if (getExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(getExitAnim());
        }
        if (getPopEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(getPopEnterAnim());
        }
        if (getPopExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(getPopExitAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
        }
        if (getContext() != null) {
            androidx.loader.app.a.b(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.V(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    Fragment findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.i0(str);
    }

    String generateActivityResultKey() {
        return "fragment_" + this.mWho + "_rq#" + this.mNextLocalRequestCode.getAndIncrement();
    }

    public final FragmentActivity getActivity() {
        androidx.fragment.app.l lVar = this.mHost;
        if (lVar == null) {
            return null;
        }
        return (FragmentActivity) lVar.e();
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        k kVar = this.mAnimationInfo;
        if (kVar == null || (bool = kVar.f2482q) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        k kVar = this.mAnimationInfo;
        if (kVar == null || (bool = kVar.f2481p) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    View getAnimatingAway() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        return kVar.f2466a;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final FragmentManager getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public Context getContext() {
        androidx.fragment.app.l lVar = this.mHost;
        if (lVar == null) {
            return null;
        }
        return lVar.f();
    }

    @Override // androidx.lifecycle.j
    public l0.a getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        if (application == null && FragmentManager.H0(3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        l0.b bVar = new l0.b();
        if (application != null) {
            bVar.c(u0.a.f2840h, application);
        }
        bVar.c(k0.f2793a, this);
        bVar.c(k0.f2794b, this);
        if (getArguments() != null) {
            bVar.c(k0.f2795c, getArguments());
        }
        return bVar;
    }

    @Override // androidx.lifecycle.j
    public u0.c getDefaultViewModelProviderFactory() {
        Application application;
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.mDefaultFactory == null) {
            Context applicationContext = requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            if (application == null && FragmentManager.H0(3)) {
                Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory");
            }
            this.mDefaultFactory = new o0(application, this, getArguments());
        }
        return this.mDefaultFactory;
    }

    int getEnterAnim() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return 0;
        }
        return kVar.f2468c;
    }

    public Object getEnterTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        return kVar.f2475j;
    }

    androidx.core.app.q getEnterTransitionCallback() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        kVar.getClass();
        return null;
    }

    int getExitAnim() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return 0;
        }
        return kVar.f2469d;
    }

    public Object getExitTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        return kVar.f2477l;
    }

    androidx.core.app.q getExitTransitionCallback() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        kVar.getClass();
        return null;
    }

    View getFocusedView() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        return kVar.f2484s;
    }

    @Deprecated
    public final FragmentManager getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        androidx.fragment.app.l lVar = this.mHost;
        if (lVar == null) {
            return null;
        }
        return lVar.i();
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Override // androidx.lifecycle.s
    public androidx.lifecycle.l getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public androidx.loader.app.a getLoaderManager() {
        return androidx.loader.app.a.b(this);
    }

    int getNextTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return 0;
        }
        return kVar.f2472g;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public final FragmentManager getParentFragmentManager() {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    boolean getPopDirection() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return false;
        }
        return kVar.f2467b;
    }

    int getPopEnterAnim() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return 0;
        }
        return kVar.f2470e;
    }

    int getPopExitAnim() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return 0;
        }
        return kVar.f2471f;
    }

    float getPostOnViewCreatedAlpha() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return 1.0f;
        }
        return kVar.f2483r;
    }

    public Object getReenterTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        Object obj = kVar.f2478m;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        i0.c.h(this);
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        Object obj = kVar.f2476k;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    @Override // q0.h
    public final q0.e getSavedStateRegistry() {
        return this.mSavedStateRegistryController.b();
    }

    public Object getSharedElementEnterTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        return kVar.f2479n;
    }

    public Object getSharedElementReturnTransition() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return null;
        }
        Object obj = kVar.f2480o;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    ArrayList<String> getSharedElementSourceNames() {
        ArrayList<String> arrayList;
        k kVar = this.mAnimationInfo;
        return (kVar == null || (arrayList = kVar.f2473h) == null) ? new ArrayList<>() : arrayList;
    }

    ArrayList<String> getSharedElementTargetNames() {
        ArrayList<String> arrayList;
        k kVar = this.mAnimationInfo;
        return (kVar == null || (arrayList = kVar.f2474i) == null) ? new ArrayList<>() : arrayList;
    }

    public final String getString(int i10) {
        return getResources().getString(i10);
    }

    public final String getTag() {
        return this.mTag;
    }

    @Deprecated
    public final Fragment getTargetFragment() {
        return f(true);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        i0.c.i(this);
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i10) {
        return getResources().getText(i10);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public androidx.lifecycle.s getViewLifecycleOwner() {
        d0 d0Var = this.mViewLifecycleOwner;
        if (d0Var != null) {
            return d0Var;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public androidx.lifecycle.y getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // androidx.lifecycle.x0
    public w0 getViewModelStore() {
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (e() != l.b.INITIALIZED.ordinal()) {
            return this.mFragmentManager.C0(this);
        }
        throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    void initState() {
        g();
        this.mPreviousWho = this.mWho;
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new t();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        FragmentManager fragmentManager;
        return this.mHidden || ((fragmentManager = this.mFragmentManager) != null && fragmentManager.K0(this.mParentFragment));
    }

    final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        FragmentManager fragmentManager;
        return this.mMenuVisible && ((fragmentManager = this.mFragmentManager) == null || fragmentManager.L0(this.mParentFragment));
    }

    boolean isPostponed() {
        k kVar = this.mAnimationInfo;
        if (kVar == null) {
            return false;
        }
        return kVar.f2485t;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null) {
            return false;
        }
        return fragmentManager.O0();
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    void noteStateNotSaved() {
        this.mChildFragmentManager.Y0();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    @Deprecated
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i10 + " resultCode: " + i11 + " data: " + intent);
        }
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        androidx.fragment.app.l lVar = this.mHost;
        Activity activityE = lVar == null ? null : lVar.e();
        if (activityE != null) {
            this.mCalled = false;
            onAttach(activityE);
        }
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        if (this.mChildFragmentManager.N0(1)) {
            return;
        }
        this.mChildFragmentManager.A();
    }

    public Animation onCreateAnimation(int i10, boolean z10, int i11) {
        return null;
    }

    public Animator onCreateAnimator(int i10, boolean z10, int i11) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Deprecated
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i10 = this.mContentLayoutId;
        if (i10 != 0) {
            return layoutInflater.inflate(i10, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    @Deprecated
    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z10) {
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        androidx.fragment.app.l lVar = this.mHost;
        Activity activityE = lVar == null ? null : lVar.e();
        if (activityE != null) {
            this.mCalled = false;
            onInflate(activityE, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z10) {
    }

    @Deprecated
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    @Deprecated
    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z10) {
    }

    @Deprecated
    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z10) {
    }

    @Deprecated
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.Y0();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (this.mCalled) {
            k();
            this.mChildFragmentManager.w();
        } else {
            throw new h0("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
    }

    void performAttach() {
        Iterator<n> it = this.mOnPreAttachedListeners.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.l(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.f());
        if (this.mCalled) {
            this.mFragmentManager.G(this);
            this.mChildFragmentManager.x();
        } else {
            throw new h0("Fragment " + this + " did not call through to super.onAttach()");
        }
    }

    void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
    }

    boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.z(menuItem);
    }

    void performCreate(Bundle bundle) {
        this.mChildFragmentManager.Y0();
        this.mState = 1;
        this.mCalled = false;
        this.mLifecycleRegistry.a(new g());
        this.mSavedStateRegistryController.d(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (this.mCalled) {
            this.mLifecycleRegistry.i(l.a.ON_CREATE);
            return;
        }
        throw new h0("Fragment " + this + " did not call through to super.onCreate()");
    }

    boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z10 = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onCreateOptionsMenu(menu, menuInflater);
            z10 = true;
        }
        return z10 | this.mChildFragmentManager.B(menu, menuInflater);
    }

    void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.Y0();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new d0(this, getViewModelStore());
        View viewOnCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = viewOnCreateView;
        if (viewOnCreateView == null) {
            if (this.mViewLifecycleOwner.c()) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.mViewLifecycleOwner = null;
        } else {
            this.mViewLifecycleOwner.b();
            y0.a(this.mView, this.mViewLifecycleOwner);
            z0.a(this.mView, this.mViewLifecycleOwner);
            q0.l.a(this.mView, this.mViewLifecycleOwner);
            this.mViewLifecycleOwnerLiveData.n(this.mViewLifecycleOwner);
        }
    }

    void performDestroy() {
        this.mChildFragmentManager.C();
        this.mLifecycleRegistry.i(l.a.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (this.mCalled) {
            return;
        }
        throw new h0("Fragment " + this + " did not call through to super.onDestroy()");
    }

    void performDestroyView() {
        this.mChildFragmentManager.D();
        if (this.mView != null && this.mViewLifecycleOwner.getLifecycle().b().isAtLeast(l.b.CREATED)) {
            this.mViewLifecycleOwner.a(l.a.ON_DESTROY);
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (this.mCalled) {
            androidx.loader.app.a.b(this).c();
            this.mPerformedCreateView = false;
        } else {
            throw new h0("Fragment " + this + " did not call through to super.onDestroyView()");
        }
    }

    void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (this.mCalled) {
            if (this.mChildFragmentManager.G0()) {
                return;
            }
            this.mChildFragmentManager.C();
            this.mChildFragmentManager = new t();
            return;
        }
        throw new h0("Fragment " + this + " did not call through to super.onDetach()");
    }

    LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = layoutInflaterOnGetLayoutInflater;
        return layoutInflaterOnGetLayoutInflater;
    }

    void performLowMemory() {
        onLowMemory();
    }

    void performMultiWindowModeChanged(boolean z10) {
        onMultiWindowModeChanged(z10);
    }

    boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.I(menuItem);
    }

    void performOptionsMenuClosed(Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.J(menu);
    }

    void performPause() {
        this.mChildFragmentManager.L();
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(l.a.ON_PAUSE);
        }
        this.mLifecycleRegistry.i(l.a.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (this.mCalled) {
            return;
        }
        throw new h0("Fragment " + this + " did not call through to super.onPause()");
    }

    void performPictureInPictureModeChanged(boolean z10) {
        onPictureInPictureModeChanged(z10);
    }

    boolean performPrepareOptionsMenu(Menu menu) {
        boolean z10 = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onPrepareOptionsMenu(menu);
            z10 = true;
        }
        return z10 | this.mChildFragmentManager.N(menu);
    }

    void performPrimaryNavigationFragmentChanged() {
        boolean zM0 = this.mFragmentManager.M0(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != zM0) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(zM0);
            onPrimaryNavigationFragmentChanged(zM0);
            this.mChildFragmentManager.O();
        }
    }

    void performResume() {
        this.mChildFragmentManager.Y0();
        this.mChildFragmentManager.Z(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new h0("Fragment " + this + " did not call through to super.onResume()");
        }
        androidx.lifecycle.u uVar = this.mLifecycleRegistry;
        l.a aVar = l.a.ON_RESUME;
        uVar.i(aVar);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(aVar);
        }
        this.mChildFragmentManager.P();
    }

    void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.e(bundle);
        Bundle bundleP0 = this.mChildFragmentManager.P0();
        if (bundleP0 != null) {
            bundle.putParcelable("android:support:fragments", bundleP0);
        }
    }

    void performStart() {
        this.mChildFragmentManager.Y0();
        this.mChildFragmentManager.Z(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new h0("Fragment " + this + " did not call through to super.onStart()");
        }
        androidx.lifecycle.u uVar = this.mLifecycleRegistry;
        l.a aVar = l.a.ON_START;
        uVar.i(aVar);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(aVar);
        }
        this.mChildFragmentManager.Q();
    }

    void performStop() {
        this.mChildFragmentManager.S();
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(l.a.ON_STOP);
        }
        this.mLifecycleRegistry.i(l.a.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (this.mCalled) {
            return;
        }
        throw new h0("Fragment " + this + " did not call through to super.onStop()");
    }

    void performViewCreated() {
        onViewCreated(this.mView, this.mSavedFragmentState);
        this.mChildFragmentManager.T();
    }

    public void postponeEnterTransition() {
        d().f2485t = true;
    }

    public final <I, O> androidx.activity.result.b registerForActivityResult(d.a aVar, androidx.activity.result.a aVar2) {
        return h(aVar, new h(), aVar2);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i10) {
        if (this.mHost != null) {
            getParentFragmentManager().U0(this, strArr, i10);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public final FragmentActivity requireActivity() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    @Deprecated
    public final FragmentManager requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a host.");
    }

    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException("Fragment " + this + " is not attached to any Fragment or host");
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.mChildFragmentManager.m1(parcelable);
        this.mChildFragmentManager.A();
    }

    final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        if (this.mView != null) {
            this.mViewLifecycleOwner.d(this.mSavedViewRegistryState);
            this.mSavedViewRegistryState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (this.mCalled) {
            if (this.mView != null) {
                this.mViewLifecycleOwner.a(l.a.ON_CREATE);
            }
        } else {
            throw new h0("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z10) {
        d().f2482q = Boolean.valueOf(z10);
    }

    public void setAllowReturnTransitionOverlap(boolean z10) {
        d().f2481p = Boolean.valueOf(z10);
    }

    void setAnimations(int i10, int i11, int i12, int i13) {
        if (this.mAnimationInfo == null && i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
            return;
        }
        d().f2468c = i10;
        d().f2469d = i11;
        d().f2470e = i12;
        d().f2471f = i13;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(androidx.core.app.q qVar) {
        d().getClass();
    }

    public void setEnterTransition(Object obj) {
        d().f2475j = obj;
    }

    public void setExitSharedElementCallback(androidx.core.app.q qVar) {
        d().getClass();
    }

    public void setExitTransition(Object obj) {
        d().f2477l = obj;
    }

    void setFocusedView(View view) {
        d().f2484s = view;
    }

    @Deprecated
    public void setHasOptionsMenu(boolean z10) {
        if (this.mHasMenu != z10) {
            this.mHasMenu = z10;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.mHost.o();
        }
    }

    public void setInitialSavedState(SavedState savedState) {
        Bundle bundle;
        if (this.mFragmentManager != null) {
            throw new IllegalStateException("Fragment already added");
        }
        if (savedState == null || (bundle = savedState.f2447a) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z10) {
        if (this.mMenuVisible != z10) {
            this.mMenuVisible = z10;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                this.mHost.o();
            }
        }
    }

    void setNextTransition(int i10) {
        if (this.mAnimationInfo == null && i10 == 0) {
            return;
        }
        d();
        this.mAnimationInfo.f2472g = i10;
    }

    void setPopDirection(boolean z10) {
        if (this.mAnimationInfo == null) {
            return;
        }
        d().f2467b = z10;
    }

    void setPostOnViewCreatedAlpha(float f10) {
        d().f2483r = f10;
    }

    public void setReenterTransition(Object obj) {
        d().f2478m = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z10) {
        i0.c.k(this);
        this.mRetainInstance = z10;
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z10) {
            fragmentManager.j(this);
        } else {
            fragmentManager.k1(this);
        }
    }

    public void setReturnTransition(Object obj) {
        d().f2476k = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        d().f2479n = obj;
    }

    void setSharedElementNames(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        d();
        k kVar = this.mAnimationInfo;
        kVar.f2473h = arrayList;
        kVar.f2474i = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        d().f2480o = obj;
    }

    @Deprecated
    public void setTargetFragment(Fragment fragment, int i10) {
        if (fragment != null) {
            i0.c.l(this, fragment, i10);
        }
        FragmentManager fragmentManager = this.mFragmentManager;
        FragmentManager fragmentManager2 = fragment != null ? fragment.mFragmentManager : null;
        if (fragmentManager != null && fragmentManager2 != null && fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException("Fragment " + fragment + " must share the same FragmentManager to be set as a target fragment");
        }
        for (Fragment fragmentF = fragment; fragmentF != null; fragmentF = fragmentF.f(false)) {
            if (fragmentF.equals(this)) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        if (fragment == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager == null || fragment.mFragmentManager == null) {
            this.mTargetWho = null;
            this.mTarget = fragment;
        } else {
            this.mTargetWho = fragment.mWho;
            this.mTarget = null;
        }
        this.mTargetRequestCode = i10;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z10) {
        i0.c.m(this, z10);
        if (!this.mUserVisibleHint && z10 && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            FragmentManager fragmentManager = this.mFragmentManager;
            fragmentManager.a1(fragmentManager.u(this));
        }
        this.mUserVisibleHint = z10;
        this.mDeferStart = this.mState < 5 && !z10;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z10);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        androidx.fragment.app.l lVar = this.mHost;
        if (lVar != null) {
            return lVar.l(str);
        }
        return false;
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent) {
        startActivity(intent, null);
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i10) {
        startActivityForResult(intent, i10, null);
    }

    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in startIntentSenderForResult() requestCode: " + i10 + " IntentSender: " + intentSender + " fillInIntent: " + intent + " options: " + bundle);
        }
        getParentFragmentManager().W0(this, intentSender, i10, intent, i11, i12, i13, bundle);
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !d().f2485t) {
            return;
        }
        if (this.mHost == null) {
            d().f2485t = false;
        } else if (Looper.myLooper() != this.mHost.g().getLooper()) {
            this.mHost.g().postAtFrontOfQueue(new d());
        } else {
            callStartTransitionListener(true);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("}");
        sb.append(" (");
        sb.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" tag=");
            sb.append(this.mTag);
        }
        sb.append(")");
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    @SuppressLint({"BanParcelableUsage, ParcelClassLoader"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        final Bundle f2447a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Bundle bundle) {
            this.f2447a = bundle;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeBundle(this.f2447a);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle bundle = parcel.readBundle();
            this.f2447a = bundle;
            if (classLoader == null || bundle == null) {
                return;
            }
            bundle.setClassLoader(classLoader);
        }
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment fragment = (Fragment) androidx.fragment.app.k.d(context.getClassLoader(), str).getConstructor(null).newInstance(null);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.setArguments(bundle);
            }
            return fragment;
        } catch (IllegalAccessException e10) {
            throw new m("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e10);
        } catch (InstantiationException e11) {
            throw new m("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e11);
        } catch (NoSuchMethodException e12) {
            throw new m("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e12);
        } catch (InvocationTargetException e13) {
            throw new m("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e13);
        }
    }

    public final String getString(int i10, Object... objArr) {
        return getResources().getString(i10, objArr);
    }

    public final void postponeEnterTransition(long j10, TimeUnit timeUnit) {
        d().f2485t = true;
        FragmentManager fragmentManager = this.mFragmentManager;
        Handler handlerG = fragmentManager != null ? fragmentManager.u0().g() : new Handler(Looper.getMainLooper());
        handlerG.removeCallbacks(this.mPostponedDurationRunnable);
        handlerG.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j10));
    }

    public final <I, O> androidx.activity.result.b registerForActivityResult(d.a aVar, androidx.activity.result.d dVar, androidx.activity.result.a aVar2) {
        return h(aVar, new i(dVar), aVar2);
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        androidx.fragment.app.l lVar = this.mHost;
        if (lVar != null) {
            lVar.m(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i10, Bundle bundle) {
        if (this.mHost != null) {
            getParentFragmentManager().V0(this, intent, i10, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        androidx.fragment.app.l lVar = this.mHost;
        if (lVar != null) {
            LayoutInflater layoutInflaterJ = lVar.j();
            androidx.core.view.l.a(layoutInflaterJ, this.mChildFragmentManager.v0());
            return layoutInflaterJ;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }
}
