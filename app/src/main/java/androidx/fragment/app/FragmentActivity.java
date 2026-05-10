package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.core.app.a;
import androidx.lifecycle.l;
import androidx.lifecycle.w0;
import androidx.lifecycle.x0;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import q0.e;

/* JADX INFO: loaded from: classes.dex */
public class FragmentActivity extends ComponentActivity implements a.e {
    static final String LIFECYCLE_TAG = "android:support:lifecycle";
    boolean mCreated;
    boolean mResumed;
    final j mFragments = j.b(new a());
    final androidx.lifecycle.u mFragmentLifecycleRegistry = new androidx.lifecycle.u(this);
    boolean mStopped = true;

    class a extends l implements r.c, r.d, androidx.core.app.l, androidx.core.app.m, x0, androidx.activity.x, androidx.activity.result.e, q0.h, v, androidx.core.view.n {
        public a() {
            super(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.v
        public void a(FragmentManager fragmentManager, Fragment fragment) {
            FragmentActivity.this.onAttachFragment(fragment);
        }

        @Override // androidx.core.view.n
        public void addMenuProvider(androidx.core.view.t tVar) {
            FragmentActivity.this.addMenuProvider(tVar);
        }

        @Override // r.c
        public void addOnConfigurationChangedListener(c0.a aVar) {
            FragmentActivity.this.addOnConfigurationChangedListener(aVar);
        }

        @Override // androidx.core.app.l
        public void addOnMultiWindowModeChangedListener(c0.a aVar) {
            FragmentActivity.this.addOnMultiWindowModeChangedListener(aVar);
        }

        @Override // androidx.core.app.m
        public void addOnPictureInPictureModeChangedListener(c0.a aVar) {
            FragmentActivity.this.addOnPictureInPictureModeChangedListener(aVar);
        }

        @Override // r.d
        public void addOnTrimMemoryListener(c0.a aVar) {
            FragmentActivity.this.addOnTrimMemoryListener(aVar);
        }

        @Override // androidx.fragment.app.i
        public View c(int i10) {
            return FragmentActivity.this.findViewById(i10);
        }

        @Override // androidx.fragment.app.i
        public boolean d() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.activity.result.e
        public androidx.activity.result.d getActivityResultRegistry() {
            return FragmentActivity.this.getActivityResultRegistry();
        }

        @Override // androidx.lifecycle.s
        public androidx.lifecycle.l getLifecycle() {
            return FragmentActivity.this.mFragmentLifecycleRegistry;
        }

        @Override // androidx.activity.x
        public androidx.activity.v getOnBackPressedDispatcher() {
            return FragmentActivity.this.getOnBackPressedDispatcher();
        }

        @Override // q0.h
        public q0.e getSavedStateRegistry() {
            return FragmentActivity.this.getSavedStateRegistry();
        }

        @Override // androidx.lifecycle.x0
        public w0 getViewModelStore() {
            return FragmentActivity.this.getViewModelStore();
        }

        @Override // androidx.fragment.app.l
        public void h(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.fragment.app.l
        public LayoutInflater j() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.l
        public boolean l(String str) {
            return androidx.core.app.a.r(FragmentActivity.this, str);
        }

        @Override // androidx.fragment.app.l
        public void o() {
            p();
        }

        public void p() {
            FragmentActivity.this.invalidateOptionsMenu();
        }

        @Override // androidx.fragment.app.l
        /* JADX INFO: renamed from: q */
        public FragmentActivity i() {
            return FragmentActivity.this;
        }

        @Override // androidx.core.view.n
        public void removeMenuProvider(androidx.core.view.t tVar) {
            FragmentActivity.this.removeMenuProvider(tVar);
        }

        @Override // r.c
        public void removeOnConfigurationChangedListener(c0.a aVar) {
            FragmentActivity.this.removeOnConfigurationChangedListener(aVar);
        }

        @Override // androidx.core.app.l
        public void removeOnMultiWindowModeChangedListener(c0.a aVar) {
            FragmentActivity.this.removeOnMultiWindowModeChangedListener(aVar);
        }

        @Override // androidx.core.app.m
        public void removeOnPictureInPictureModeChangedListener(c0.a aVar) {
            FragmentActivity.this.removeOnPictureInPictureModeChangedListener(aVar);
        }

        @Override // r.d
        public void removeOnTrimMemoryListener(c0.a aVar) {
            FragmentActivity.this.removeOnTrimMemoryListener(aVar);
        }
    }

    public FragmentActivity() {
        V();
    }

    private void V() {
        getSavedStateRegistry().c(LIFECYCLE_TAG, new e.b() { // from class: androidx.fragment.app.d
            @Override // q0.e.b
            public final Bundle saveState() {
                return this.f2640a.W();
            }
        });
        addOnConfigurationChangedListener(new c0.a() { // from class: androidx.fragment.app.e
            @Override // c0.a
            public final void accept(Object obj) {
                this.f2646a.X((Configuration) obj);
            }
        });
        addOnNewIntentListener(new c0.a() { // from class: androidx.fragment.app.f
            @Override // c0.a
            public final void accept(Object obj) {
                this.f2649a.Y((Intent) obj);
            }
        });
        addOnContextAvailableListener(new c.b() { // from class: androidx.fragment.app.g
            @Override // c.b
            public final void a(Context context) {
                this.f2670a.Z(context);
            }
        });
    }

    public /* synthetic */ Bundle W() {
        markFragmentsCreated();
        this.mFragmentLifecycleRegistry.i(l.a.ON_STOP);
        return new Bundle();
    }

    public /* synthetic */ void X(Configuration configuration) {
        this.mFragments.m();
    }

    public /* synthetic */ void Y(Intent intent) {
        this.mFragments.m();
    }

    public /* synthetic */ void Z(Context context) {
        this.mFragments.a(null);
    }

    private static boolean a0(FragmentManager fragmentManager, l.b bVar) {
        boolean zA0 = false;
        for (Fragment fragment : fragmentManager.t0()) {
            if (fragment != null) {
                if (fragment.getHost() != null) {
                    zA0 |= a0(fragment.getChildFragmentManager(), bVar);
                }
                d0 d0Var = fragment.mViewLifecycleOwner;
                if (d0Var != null && d0Var.getLifecycle().b().isAtLeast(l.b.STARTED)) {
                    fragment.mViewLifecycleOwner.f(bVar);
                    zA0 = true;
                }
                if (fragment.mLifecycleRegistry.b().isAtLeast(l.b.STARTED)) {
                    fragment.mLifecycleRegistry.n(bVar);
                    zA0 = true;
                }
            }
        }
        return zA0;
    }

    final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.n(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (shouldDumpInternalState(strArr)) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            String str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print(" mResumed=");
            printWriter.print(this.mResumed);
            printWriter.print(" mStopped=");
            printWriter.print(this.mStopped);
            if (getApplication() != null) {
                androidx.loader.app.a.b(this).a(str2, fileDescriptor, printWriter, strArr);
            }
            this.mFragments.l().V(str, fileDescriptor, printWriter, strArr);
        }
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mFragments.l();
    }

    @Deprecated
    public androidx.loader.app.a getSupportLoaderManager() {
        return androidx.loader.app.a.b(this);
    }

    void markFragmentsCreated() {
        while (a0(getSupportFragmentManager(), l.b.CREATED)) {
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        this.mFragments.m();
        super.onActivityResult(i10, i11, intent);
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.i(l.a.ON_CREATE);
        this.mFragments.e();
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mFragments.f();
        this.mFragmentLifecycleRegistry.i(l.a.ON_DESTROY);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        if (i10 == 6) {
            return this.mFragments.d(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.g();
        this.mFragmentLifecycleRegistry.i(l.a.ON_PAUSE);
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        this.mFragments.m();
        super.onRequestPermissionsResult(i10, strArr, iArr);
    }

    @Override // android.app.Activity
    protected void onResume() {
        this.mFragments.m();
        super.onResume();
        this.mResumed = true;
        this.mFragments.k();
    }

    protected void onResumeFragments() {
        this.mFragmentLifecycleRegistry.i(l.a.ON_RESUME);
        this.mFragments.h();
    }

    @Override // android.app.Activity
    protected void onStart() {
        this.mFragments.m();
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.c();
        }
        this.mFragments.k();
        this.mFragmentLifecycleRegistry.i(l.a.ON_START);
        this.mFragments.i();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.m();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.j();
        this.mFragmentLifecycleRegistry.i(l.a.ON_STOP);
    }

    public void setEnterSharedElementCallback(androidx.core.app.q qVar) {
        androidx.core.app.a.p(this, qVar);
    }

    public void setExitSharedElementCallback(androidx.core.app.q qVar) {
        androidx.core.app.a.q(this, qVar);
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i10) {
        startActivityFromFragment(fragment, intent, i10, (Bundle) null);
    }

    @Deprecated
    public void startIntentSenderFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        if (i10 == -1) {
            androidx.core.app.a.t(this, intentSender, i10, intent, i11, i12, i13, bundle);
        } else {
            fragment.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        androidx.core.app.a.l(this);
    }

    public void supportPostponeEnterTransition() {
        androidx.core.app.a.m(this);
    }

    public void supportStartPostponedEnterTransition() {
        androidx.core.app.a.u(this);
    }

    @Override // androidx.core.app.a.e
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i10) {
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i10, Bundle bundle) {
        if (i10 == -1) {
            androidx.core.app.a.s(this, intent, -1, bundle);
        } else {
            fragment.startActivityForResult(intent, i10, bundle);
        }
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }
}
