package androidx.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.ComponentActivity;
import androidx.activity.result.IntentSenderRequest;
import androidx.lifecycle.ReportFragment;
import androidx.lifecycle.k0;
import androidx.lifecycle.l;
import androidx.lifecycle.o0;
import androidx.lifecycle.u0;
import androidx.lifecycle.w0;
import androidx.lifecycle.x0;
import androidx.lifecycle.y0;
import androidx.lifecycle.z0;
import d.a;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import l0.a;
import n8.h0;
import q0.e;

/* JADX INFO: loaded from: classes.dex */
public class ComponentActivity extends androidx.core.app.ComponentActivity implements androidx.lifecycle.s, x0, androidx.lifecycle.j, q0.h, x, androidx.activity.result.e, r.c, r.d, androidx.core.app.l, androidx.core.app.m, androidx.core.view.n, t {
    private static final String ACTIVITY_RESULT_TAG = "android:support:activity-result";
    private static final c Companion = new c(null);
    private w0 _viewModelStore;
    private final androidx.activity.result.d activityResultRegistry;
    private int contentLayoutId;
    private final n8.j defaultViewModelProviderFactory$delegate;
    private boolean dispatchingOnMultiWindowModeChanged;
    private boolean dispatchingOnPictureInPictureModeChanged;
    private final n8.j fullyDrawnReporter$delegate;
    private final AtomicInteger nextLocalRequestCode;
    private final n8.j onBackPressedDispatcher$delegate;
    private final CopyOnWriteArrayList<c0.a> onConfigurationChangedListeners;
    private final CopyOnWriteArrayList<c0.a> onMultiWindowModeChangedListeners;
    private final CopyOnWriteArrayList<c0.a> onNewIntentListeners;
    private final CopyOnWriteArrayList<c0.a> onPictureInPictureModeChangedListeners;
    private final CopyOnWriteArrayList<c0.a> onTrimMemoryListeners;
    private final CopyOnWriteArrayList<Runnable> onUserLeaveHintListeners;
    private final e reportFullyDrawnExecutor;
    private final q0.g savedStateRegistryController;
    private final c.a contextAwareHelper = new c.a();
    private final androidx.core.view.q menuHostHelper = new androidx.core.view.q(new Runnable() { // from class: androidx.activity.d
        @Override // java.lang.Runnable
        public final void run() {
            ComponentActivity.Q(this.f164a);
        }
    });

    public static final class a implements androidx.lifecycle.p {
        a() {
        }

        @Override // androidx.lifecycle.p
        public void onStateChanged(androidx.lifecycle.s source, l.a event) {
            kotlin.jvm.internal.r.e(source, "source");
            kotlin.jvm.internal.r.e(event, "event");
            ComponentActivity.this.P();
            ComponentActivity.this.getLifecycle().d(this);
        }
    }

    private static final class b {
        public static final b INSTANCE = new b();

        private b() {
        }

        public final OnBackInvokedDispatcher a(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
            OnBackInvokedDispatcher onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
            kotlin.jvm.internal.r.d(onBackInvokedDispatcher, "activity.getOnBackInvokedDispatcher()");
            return onBackInvokedDispatcher;
        }
    }

    private static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private c() {
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a */
        private Object f152a;

        /* JADX INFO: renamed from: b */
        private w0 f153b;

        public final Object a() {
            return this.f152a;
        }

        public final w0 b() {
            return this.f153b;
        }

        public final void c(Object obj) {
            this.f152a = obj;
        }

        public final void d(w0 w0Var) {
            this.f153b = w0Var;
        }
    }

    private interface e extends Executor {
        void B(View view);

        void c();
    }

    final class f implements e, ViewTreeObserver.OnDrawListener, Runnable {

        /* JADX INFO: renamed from: a */
        private final long f154a = SystemClock.uptimeMillis() + ((long) 10000);

        /* JADX INFO: renamed from: b */
        private Runnable f155b;

        /* JADX INFO: renamed from: c */
        private boolean f156c;

        public f() {
        }

        public static final void b(f this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            Runnable runnable = this$0.f155b;
            if (runnable != null) {
                kotlin.jvm.internal.r.b(runnable);
                runnable.run();
                this$0.f155b = null;
            }
        }

        @Override // androidx.activity.ComponentActivity.e
        public void B(View view) {
            kotlin.jvm.internal.r.e(view, "view");
            if (this.f156c) {
                return;
            }
            this.f156c = true;
            view.getViewTreeObserver().addOnDrawListener(this);
        }

        @Override // androidx.activity.ComponentActivity.e
        public void c() {
            ComponentActivity.this.getWindow().getDecorView().removeCallbacks(this);
            ComponentActivity.this.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            kotlin.jvm.internal.r.e(runnable, "runnable");
            this.f155b = runnable;
            View decorView = ComponentActivity.this.getWindow().getDecorView();
            kotlin.jvm.internal.r.d(decorView, "window.decorView");
            if (!this.f156c) {
                decorView.postOnAnimation(new Runnable() { // from class: androidx.activity.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        ComponentActivity.f.b(this.f171a);
                    }
                });
            } else if (kotlin.jvm.internal.r.a(Looper.myLooper(), Looper.getMainLooper())) {
                decorView.invalidate();
            } else {
                decorView.postInvalidate();
            }
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            Runnable runnable = this.f155b;
            if (runnable == null) {
                if (SystemClock.uptimeMillis() > this.f154a) {
                    this.f156c = false;
                    ComponentActivity.this.getWindow().getDecorView().post(this);
                    return;
                }
                return;
            }
            runnable.run();
            this.f155b = null;
            if (ComponentActivity.this.getFullyDrawnReporter().c()) {
                this.f156c = false;
                ComponentActivity.this.getWindow().getDecorView().post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            ComponentActivity.this.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
        }
    }

    public static final class g extends androidx.activity.result.d {
        g() {
        }

        public static final void s(g this$0, int i10, a.C0131a c0131a) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.f(i10, c0131a.a());
        }

        public static final void t(g this$0, int i10, IntentSender.SendIntentException e10) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(e10, "$e");
            this$0.e(i10, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", e10));
        }

        @Override // androidx.activity.result.d
        public void i(final int i10, d.a contract, Object obj, androidx.core.app.b bVar) {
            Bundle bundleB;
            kotlin.jvm.internal.r.e(contract, "contract");
            ComponentActivity componentActivity = ComponentActivity.this;
            final a.C0131a c0131aB = contract.b(componentActivity, obj);
            if (c0131aB != null) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        ComponentActivity.g.s(this.f172a, i10, c0131aB);
                    }
                });
                return;
            }
            Intent intentA = contract.a(componentActivity, obj);
            if (intentA.getExtras() != null) {
                Bundle extras = intentA.getExtras();
                kotlin.jvm.internal.r.b(extras);
                if (extras.getClassLoader() == null) {
                    intentA.setExtrasClassLoader(componentActivity.getClassLoader());
                }
            }
            if (intentA.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                Bundle bundleExtra = intentA.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                intentA.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                bundleB = bundleExtra;
            } else {
                bundleB = bVar != null ? bVar.b() : null;
            }
            if (kotlin.jvm.internal.r.a("androidx.activity.result.contract.action.REQUEST_PERMISSIONS", intentA.getAction())) {
                String[] stringArrayExtra = intentA.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                if (stringArrayExtra == null) {
                    stringArrayExtra = new String[0];
                }
                androidx.core.app.a.o(componentActivity, stringArrayExtra, i10);
                return;
            }
            if (!kotlin.jvm.internal.r.a("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST", intentA.getAction())) {
                androidx.core.app.a.s(componentActivity, intentA, i10, bundleB);
                return;
            }
            IntentSenderRequest intentSenderRequest = (IntentSenderRequest) intentA.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                kotlin.jvm.internal.r.b(intentSenderRequest);
                androidx.core.app.a.t(componentActivity, intentSenderRequest.d(), i10, intentSenderRequest.a(), intentSenderRequest.b(), intentSenderRequest.c(), 0, bundleB);
            } catch (IntentSender.SendIntentException e10) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        ComponentActivity.g.t(this.f175a, i10, e10);
                    }
                });
            }
        }
    }

    static final class h extends kotlin.jvm.internal.s implements w8.a {
        h() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final o0 mo8invoke() {
            Application application = ComponentActivity.this.getApplication();
            ComponentActivity componentActivity = ComponentActivity.this;
            return new o0(application, componentActivity, componentActivity.getIntent() != null ? ComponentActivity.this.getIntent().getExtras() : null);
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.a {

        static final class a extends kotlin.jvm.internal.s implements w8.a {
            final /* synthetic */ ComponentActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ComponentActivity componentActivity) {
                super(0);
                this.this$0 = componentActivity;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                m0invoke();
                return h0.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke */
            public final void m0invoke() {
                this.this$0.reportFullyDrawn();
            }
        }

        i() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final s mo8invoke() {
            return new s(ComponentActivity.this.reportFullyDrawnExecutor, new a(ComponentActivity.this));
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.a {
        j() {
            super(0);
        }

        public static final void invoke$lambda$0(ComponentActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            try {
                ComponentActivity.super.onBackPressed();
            } catch (IllegalStateException e10) {
                if (!kotlin.jvm.internal.r.a(e10.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                    throw e10;
                }
            } catch (NullPointerException e11) {
                if (!kotlin.jvm.internal.r.a(e11.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                    throw e11;
                }
            }
        }

        public static final void invoke$lambda$2$lambda$1(ComponentActivity this$0, v dispatcher) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(dispatcher, "$dispatcher");
            this$0.M(dispatcher);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final v mo8invoke() {
            final ComponentActivity componentActivity = ComponentActivity.this;
            final v vVar = new v(new Runnable() { // from class: androidx.activity.m
                @Override // java.lang.Runnable
                public final void run() {
                    ComponentActivity.j.invoke$lambda$0(componentActivity);
                }
            });
            final ComponentActivity componentActivity2 = ComponentActivity.this;
            if (Build.VERSION.SDK_INT >= 33) {
                if (kotlin.jvm.internal.r.a(Looper.myLooper(), Looper.getMainLooper())) {
                    componentActivity2.M(vVar);
                } else {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.n
                        @Override // java.lang.Runnable
                        public final void run() {
                            ComponentActivity.j.invoke$lambda$2$lambda$1(componentActivity2, vVar);
                        }
                    });
                }
            }
            return vVar;
        }
    }

    public ComponentActivity() {
        q0.g gVarB = q0.g.f15274c.b(this);
        this.savedStateRegistryController = gVarB;
        this.reportFullyDrawnExecutor = O();
        this.fullyDrawnReporter$delegate = n8.k.b(new i());
        this.nextLocalRequestCode = new AtomicInteger();
        this.activityResultRegistry = new g();
        this.onConfigurationChangedListeners = new CopyOnWriteArrayList<>();
        this.onTrimMemoryListeners = new CopyOnWriteArrayList<>();
        this.onNewIntentListeners = new CopyOnWriteArrayList<>();
        this.onMultiWindowModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onPictureInPictureModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onUserLeaveHintListeners = new CopyOnWriteArrayList<>();
        if (getLifecycle() == null) {
            throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
        getLifecycle().a(new androidx.lifecycle.p() { // from class: androidx.activity.e
            @Override // androidx.lifecycle.p
            public final void onStateChanged(androidx.lifecycle.s sVar, l.a aVar) {
                ComponentActivity.I(this.f165a, sVar, aVar);
            }
        });
        getLifecycle().a(new androidx.lifecycle.p() { // from class: androidx.activity.f
            @Override // androidx.lifecycle.p
            public final void onStateChanged(androidx.lifecycle.s sVar, l.a aVar) {
                ComponentActivity.J(this.f166a, sVar, aVar);
            }
        });
        getLifecycle().a(new a());
        gVarB.c();
        k0.c(this);
        getSavedStateRegistry().c(ACTIVITY_RESULT_TAG, new e.b() { // from class: androidx.activity.g
            @Override // q0.e.b
            public final Bundle saveState() {
                return ComponentActivity.K(this.f167a);
            }
        });
        addOnContextAvailableListener(new c.b() { // from class: androidx.activity.h
            @Override // c.b
            public final void a(Context context) {
                ComponentActivity.L(this.f168a, context);
            }
        });
        this.defaultViewModelProviderFactory$delegate = n8.k.b(new h());
        this.onBackPressedDispatcher$delegate = n8.k.b(new j());
    }

    public static final void I(ComponentActivity this$0, androidx.lifecycle.s sVar, l.a event) {
        Window window;
        View viewPeekDecorView;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(sVar, "<anonymous parameter 0>");
        kotlin.jvm.internal.r.e(event, "event");
        if (event != l.a.ON_STOP || (window = this$0.getWindow()) == null || (viewPeekDecorView = window.peekDecorView()) == null) {
            return;
        }
        viewPeekDecorView.cancelPendingInputEvents();
    }

    public static final void J(ComponentActivity this$0, androidx.lifecycle.s sVar, l.a event) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(sVar, "<anonymous parameter 0>");
        kotlin.jvm.internal.r.e(event, "event");
        if (event == l.a.ON_DESTROY) {
            this$0.contextAwareHelper.b();
            if (!this$0.isChangingConfigurations()) {
                this$0.getViewModelStore().a();
            }
            this$0.reportFullyDrawnExecutor.c();
        }
    }

    public static final Bundle K(ComponentActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Bundle bundle = new Bundle();
        this$0.activityResultRegistry.k(bundle);
        return bundle;
    }

    public static final void L(ComponentActivity this$0, Context it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        Bundle bundleA = this$0.getSavedStateRegistry().a(ACTIVITY_RESULT_TAG);
        if (bundleA != null) {
            this$0.activityResultRegistry.j(bundleA);
        }
    }

    public final void M(final v vVar) {
        getLifecycle().a(new androidx.lifecycle.p() { // from class: androidx.activity.i
            @Override // androidx.lifecycle.p
            public final void onStateChanged(androidx.lifecycle.s sVar, l.a aVar) {
                ComponentActivity.N(vVar, this, sVar, aVar);
            }
        });
    }

    public static final void N(v dispatcher, ComponentActivity this$0, androidx.lifecycle.s sVar, l.a event) {
        kotlin.jvm.internal.r.e(dispatcher, "$dispatcher");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(sVar, "<anonymous parameter 0>");
        kotlin.jvm.internal.r.e(event, "event");
        if (event == l.a.ON_CREATE) {
            dispatcher.n(b.INSTANCE.a(this$0));
        }
    }

    private final e O() {
        return new f();
    }

    public final void P() {
        if (this._viewModelStore == null) {
            d dVar = (d) getLastNonConfigurationInstance();
            if (dVar != null) {
                this._viewModelStore = dVar.b();
            }
            if (this._viewModelStore == null) {
                this._viewModelStore = new w0();
            }
        }
    }

    public static final void Q(ComponentActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.invalidateMenu();
    }

    public static /* synthetic */ void getOnBackPressedDispatcher$annotations() {
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        e eVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.r.d(decorView, "window.decorView");
        eVar.B(decorView);
        super.addContentView(view, layoutParams);
    }

    @Override // androidx.core.view.n
    public void addMenuProvider(androidx.core.view.t provider) {
        kotlin.jvm.internal.r.e(provider, "provider");
        this.menuHostHelper.c(provider);
    }

    @Override // r.c
    public final void addOnConfigurationChangedListener(c0.a listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.onConfigurationChangedListeners.add(listener);
    }

    public final void addOnContextAvailableListener(c.b listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.contextAwareHelper.a(listener);
    }

    @Override // androidx.core.app.l
    public final void addOnMultiWindowModeChangedListener(c0.a listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.onMultiWindowModeChangedListeners.add(listener);
    }

    public final void addOnNewIntentListener(c0.a listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.onNewIntentListeners.add(listener);
    }

    @Override // androidx.core.app.m
    public final void addOnPictureInPictureModeChangedListener(c0.a listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.onPictureInPictureModeChangedListeners.add(listener);
    }

    @Override // r.d
    public final void addOnTrimMemoryListener(c0.a listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.onTrimMemoryListeners.add(listener);
    }

    public final void addOnUserLeaveHintListener(Runnable listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.onUserLeaveHintListeners.add(listener);
    }

    @Override // androidx.activity.result.e
    public final androidx.activity.result.d getActivityResultRegistry() {
        return this.activityResultRegistry;
    }

    @Override // androidx.lifecycle.j
    public l0.a getDefaultViewModelCreationExtras() {
        l0.b bVar = new l0.b(null, 1, null);
        if (getApplication() != null) {
            a.c cVar = u0.a.f2840h;
            Application application = getApplication();
            kotlin.jvm.internal.r.d(application, "application");
            bVar.c(cVar, application);
        }
        bVar.c(k0.f2793a, this);
        bVar.c(k0.f2794b, this);
        Intent intent = getIntent();
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras != null) {
            bVar.c(k0.f2795c, extras);
        }
        return bVar;
    }

    @Override // androidx.lifecycle.j
    public u0.c getDefaultViewModelProviderFactory() {
        return (u0.c) this.defaultViewModelProviderFactory$delegate.getValue();
    }

    public s getFullyDrawnReporter() {
        return (s) this.fullyDrawnReporter$delegate.getValue();
    }

    public Object getLastCustomNonConfigurationInstance() {
        d dVar = (d) getLastNonConfigurationInstance();
        if (dVar != null) {
            return dVar.a();
        }
        return null;
    }

    @Override // androidx.core.app.ComponentActivity, androidx.lifecycle.s
    public androidx.lifecycle.l getLifecycle() {
        return super.getLifecycle();
    }

    @Override // androidx.activity.x
    public final v getOnBackPressedDispatcher() {
        return (v) this.onBackPressedDispatcher$delegate.getValue();
    }

    @Override // q0.h
    public final q0.e getSavedStateRegistry() {
        return this.savedStateRegistryController.b();
    }

    @Override // androidx.lifecycle.x0
    public w0 getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        P();
        w0 w0Var = this._viewModelStore;
        kotlin.jvm.internal.r.b(w0Var);
        return w0Var;
    }

    public void initializeViewTreeOwners() {
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.r.d(decorView, "window.decorView");
        y0.a(decorView, this);
        View decorView2 = getWindow().getDecorView();
        kotlin.jvm.internal.r.d(decorView2, "window.decorView");
        z0.a(decorView2, this);
        View decorView3 = getWindow().getDecorView();
        kotlin.jvm.internal.r.d(decorView3, "window.decorView");
        q0.l.a(decorView3, this);
        View decorView4 = getWindow().getDecorView();
        kotlin.jvm.internal.r.d(decorView4, "window.decorView");
        z.a(decorView4, this);
        View decorView5 = getWindow().getDecorView();
        kotlin.jvm.internal.r.d(decorView5, "window.decorView");
        y.a(decorView5, this);
    }

    public void invalidateMenu() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        if (this.activityResultRegistry.e(i10, i11, intent)) {
            return;
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        getOnBackPressedDispatcher().k();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        kotlin.jvm.internal.r.e(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        Iterator<c0.a> it = this.onConfigurationChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(newConfig);
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.savedStateRegistryController.d(bundle);
        this.contextAwareHelper.c(this);
        super.onCreate(bundle);
        ReportFragment.f2748b.b(this);
        int i10 = this.contentLayoutId;
        if (i10 != 0) {
            setContentView(i10);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i10, Menu menu) {
        kotlin.jvm.internal.r.e(menu, "menu");
        if (i10 != 0) {
            return true;
        }
        super.onCreatePanelMenu(i10, menu);
        this.menuHostHelper.h(menu, getMenuInflater());
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i10, MenuItem item) {
        kotlin.jvm.internal.r.e(item, "item");
        if (super.onMenuItemSelected(i10, item)) {
            return true;
        }
        if (i10 == 0) {
            return this.menuHostHelper.j(item);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z10) {
        if (this.dispatchingOnMultiWindowModeChanged) {
            return;
        }
        Iterator<c0.a> it = this.onMultiWindowModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new androidx.core.app.e(z10));
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        kotlin.jvm.internal.r.e(intent, "intent");
        super.onNewIntent(intent);
        Iterator<c0.a> it = this.onNewIntentListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i10, Menu menu) {
        kotlin.jvm.internal.r.e(menu, "menu");
        this.menuHostHelper.i(menu);
        super.onPanelClosed(i10, menu);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z10) {
        if (this.dispatchingOnPictureInPictureModeChanged) {
            return;
        }
        Iterator<c0.a> it = this.onPictureInPictureModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new androidx.core.app.o(z10));
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i10, View view, Menu menu) {
        kotlin.jvm.internal.r.e(menu, "menu");
        if (i10 != 0) {
            return true;
        }
        super.onPreparePanel(i10, view, menu);
        this.menuHostHelper.k(menu);
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] permissions, int[] grantResults) {
        kotlin.jvm.internal.r.e(permissions, "permissions");
        kotlin.jvm.internal.r.e(grantResults, "grantResults");
        if (this.activityResultRegistry.e(i10, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", permissions).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", grantResults))) {
            return;
        }
        super.onRequestPermissionsResult(i10, permissions, grantResults);
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        d dVar;
        Object objOnRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        w0 w0VarB = this._viewModelStore;
        if (w0VarB == null && (dVar = (d) getLastNonConfigurationInstance()) != null) {
            w0VarB = dVar.b();
        }
        if (w0VarB == null && objOnRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        d dVar2 = new d();
        dVar2.c(objOnRetainCustomNonConfigurationInstance);
        dVar2.d(w0VarB);
        return dVar2;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        kotlin.jvm.internal.r.e(outState, "outState");
        if (getLifecycle() instanceof androidx.lifecycle.u) {
            androidx.lifecycle.l lifecycle = getLifecycle();
            kotlin.jvm.internal.r.c(lifecycle, "null cannot be cast to non-null type androidx.lifecycle.LifecycleRegistry");
            ((androidx.lifecycle.u) lifecycle).n(l.b.CREATED);
        }
        super.onSaveInstanceState(outState);
        this.savedStateRegistryController.e(outState);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i10) {
        super.onTrimMemory(i10);
        Iterator<c0.a> it = this.onTrimMemoryListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(Integer.valueOf(i10));
        }
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
        Iterator<Runnable> it = this.onUserLeaveHintListeners.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
    }

    public Context peekAvailableContext() {
        return this.contextAwareHelper.d();
    }

    public final <I, O> androidx.activity.result.b registerForActivityResult(d.a contract, androidx.activity.result.d registry, androidx.activity.result.a callback) {
        kotlin.jvm.internal.r.e(contract, "contract");
        kotlin.jvm.internal.r.e(registry, "registry");
        kotlin.jvm.internal.r.e(callback, "callback");
        return registry.l("activity_rq#" + this.nextLocalRequestCode.getAndIncrement(), this, contract, callback);
    }

    @Override // androidx.core.view.n
    public void removeMenuProvider(androidx.core.view.t provider) {
        kotlin.jvm.internal.r.e(provider, "provider");
        this.menuHostHelper.l(provider);
    }

    @Override // r.c
    public final void removeOnConfigurationChangedListener(c0.a listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.onConfigurationChangedListeners.remove(listener);
    }

    public final void removeOnContextAvailableListener(c.b listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.contextAwareHelper.e(listener);
    }

    @Override // androidx.core.app.l
    public final void removeOnMultiWindowModeChangedListener(c0.a listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.onMultiWindowModeChangedListeners.remove(listener);
    }

    public final void removeOnNewIntentListener(c0.a listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.onNewIntentListeners.remove(listener);
    }

    @Override // androidx.core.app.m
    public final void removeOnPictureInPictureModeChangedListener(c0.a listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.onPictureInPictureModeChangedListeners.remove(listener);
    }

    @Override // r.d
    public final void removeOnTrimMemoryListener(c0.a listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.onTrimMemoryListeners.remove(listener);
    }

    public final void removeOnUserLeaveHintListener(Runnable listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.onUserLeaveHintListeners.remove(listener);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (v0.a.c()) {
                v0.a.a("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            getFullyDrawnReporter().b();
            v0.a.b();
        } catch (Throwable th) {
            v0.a.b();
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i10) {
        initializeViewTreeOwners();
        e eVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.r.d(decorView, "window.decorView");
        eVar.B(decorView);
        super.setContentView(i10);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i10) {
        kotlin.jvm.internal.r.e(intent, "intent");
        super.startActivityForResult(intent, i10);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intent, int i10, Intent intent2, int i11, int i12, int i13) throws IntentSender.SendIntentException {
        kotlin.jvm.internal.r.e(intent, "intent");
        super.startIntentSenderForResult(intent, i10, intent2, i11, i12, i13);
    }

    public void addMenuProvider(androidx.core.view.t provider, androidx.lifecycle.s owner) {
        kotlin.jvm.internal.r.e(provider, "provider");
        kotlin.jvm.internal.r.e(owner, "owner");
        this.menuHostHelper.d(provider, owner);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i10, Bundle bundle) {
        kotlin.jvm.internal.r.e(intent, "intent");
        super.startActivityForResult(intent, i10, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intent, int i10, Intent intent2, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        kotlin.jvm.internal.r.e(intent, "intent");
        super.startIntentSenderForResult(intent, i10, intent2, i11, i12, i13, bundle);
    }

    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(androidx.core.view.t provider, androidx.lifecycle.s owner, l.b state) {
        kotlin.jvm.internal.r.e(provider, "provider");
        kotlin.jvm.internal.r.e(owner, "owner");
        kotlin.jvm.internal.r.e(state, "state");
        this.menuHostHelper.e(provider, owner, state);
    }

    public final <I, O> androidx.activity.result.b registerForActivityResult(d.a contract, androidx.activity.result.a callback) {
        kotlin.jvm.internal.r.e(contract, "contract");
        kotlin.jvm.internal.r.e(callback, "callback");
        return registerForActivityResult(contract, this.activityResultRegistry, callback);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z10, Configuration newConfig) {
        kotlin.jvm.internal.r.e(newConfig, "newConfig");
        this.dispatchingOnMultiWindowModeChanged = true;
        try {
            super.onMultiWindowModeChanged(z10, newConfig);
            this.dispatchingOnMultiWindowModeChanged = false;
            Iterator<c0.a> it = this.onMultiWindowModeChangedListeners.iterator();
            while (it.hasNext()) {
                it.next().accept(new androidx.core.app.e(z10, newConfig));
            }
        } catch (Throwable th) {
            this.dispatchingOnMultiWindowModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z10, Configuration newConfig) {
        kotlin.jvm.internal.r.e(newConfig, "newConfig");
        this.dispatchingOnPictureInPictureModeChanged = true;
        try {
            super.onPictureInPictureModeChanged(z10, newConfig);
            this.dispatchingOnPictureInPictureModeChanged = false;
            Iterator<c0.a> it = this.onPictureInPictureModeChangedListeners.iterator();
            while (it.hasNext()) {
                it.next().accept(new androidx.core.app.o(z10, newConfig));
            }
        } catch (Throwable th) {
            this.dispatchingOnPictureInPictureModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        initializeViewTreeOwners();
        e eVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.r.d(decorView, "window.decorView");
        eVar.B(decorView);
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        e eVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.r.d(decorView, "window.decorView");
        eVar.B(decorView);
        super.setContentView(view, layoutParams);
    }
}
