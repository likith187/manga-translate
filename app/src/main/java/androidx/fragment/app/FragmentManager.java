package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.fragment.R$id;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.z;
import androidx.lifecycle.l;
import androidx.lifecycle.w0;
import androidx.lifecycle.x0;
import i0.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import q0.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class FragmentManager {
    private static boolean S = false;
    private androidx.activity.result.b D;
    private androidx.activity.result.b E;
    private androidx.activity.result.b F;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private ArrayList M;
    private ArrayList N;
    private ArrayList O;
    private u P;
    private c.C0149c Q;

    /* JADX INFO: renamed from: b */
    private boolean f2492b;

    /* JADX INFO: renamed from: d */
    ArrayList f2494d;

    /* JADX INFO: renamed from: e */
    private ArrayList f2495e;

    /* JADX INFO: renamed from: g */
    private androidx.activity.v f2497g;

    /* JADX INFO: renamed from: m */
    private ArrayList f2503m;

    /* JADX INFO: renamed from: v */
    private androidx.fragment.app.l f2512v;

    /* JADX INFO: renamed from: w */
    private androidx.fragment.app.i f2513w;

    /* JADX INFO: renamed from: x */
    private Fragment f2514x;

    /* JADX INFO: renamed from: y */
    Fragment f2515y;

    /* JADX INFO: renamed from: a */
    private final ArrayList f2491a = new ArrayList();

    /* JADX INFO: renamed from: c */
    private final y f2493c = new y();

    /* JADX INFO: renamed from: f */
    private final androidx.fragment.app.m f2496f = new androidx.fragment.app.m(this);

    /* JADX INFO: renamed from: h */
    private final androidx.activity.u f2498h = new b(false);

    /* JADX INFO: renamed from: i */
    private final AtomicInteger f2499i = new AtomicInteger();

    /* JADX INFO: renamed from: j */
    private final Map f2500j = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: k */
    private final Map f2501k = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: l */
    private final Map f2502l = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: n */
    private final n f2504n = new n(this);

    /* JADX INFO: renamed from: o */
    private final CopyOnWriteArrayList f2505o = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: p */
    private final c0.a f2506p = new c0.a() { // from class: androidx.fragment.app.o
        @Override // c0.a
        public final void accept(Object obj) {
            this.f2692a.Q0((Configuration) obj);
        }
    };

    /* JADX INFO: renamed from: q */
    private final c0.a f2507q = new c0.a() { // from class: androidx.fragment.app.p
        @Override // c0.a
        public final void accept(Object obj) {
            this.f2693a.R0((Integer) obj);
        }
    };

    /* JADX INFO: renamed from: r */
    private final c0.a f2508r = new c0.a() { // from class: androidx.fragment.app.q
        @Override // c0.a
        public final void accept(Object obj) {
            this.f2694a.S0((androidx.core.app.e) obj);
        }
    };

    /* JADX INFO: renamed from: s */
    private final c0.a f2509s = new c0.a() { // from class: androidx.fragment.app.r
        @Override // c0.a
        public final void accept(Object obj) {
            this.f2695a.T0((androidx.core.app.o) obj);
        }
    };

    /* JADX INFO: renamed from: t */
    private final androidx.core.view.t f2510t = new c();

    /* JADX INFO: renamed from: u */
    int f2511u = -1;

    /* JADX INFO: renamed from: z */
    private androidx.fragment.app.k f2516z = null;
    private androidx.fragment.app.k A = new d();
    private g0 B = null;
    private g0 C = new e();
    ArrayDeque G = new ArrayDeque();
    private Runnable R = new f();

    class a implements androidx.activity.result.a {
        a() {
        }

        @Override // androidx.activity.result.a
        /* JADX INFO: renamed from: b */
        public void a(Map map) {
            String[] strArr = (String[]) map.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map.values());
            int[] iArr = new int[arrayList.size()];
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                iArr[i10] = ((Boolean) arrayList.get(i10)).booleanValue() ? 0 : -1;
            }
            LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) FragmentManager.this.G.pollFirst();
            if (launchedFragmentInfo == null) {
                Log.w("FragmentManager", "No permissions were requested for " + this);
                return;
            }
            String str = launchedFragmentInfo.f2517a;
            int i11 = launchedFragmentInfo.f2518b;
            Fragment fragmentI = FragmentManager.this.f2493c.i(str);
            if (fragmentI != null) {
                fragmentI.onRequestPermissionsResult(i11, strArr, iArr);
                return;
            }
            Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
        }
    }

    class b extends androidx.activity.u {
        b(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.u
        public void d() {
            FragmentManager.this.D0();
        }
    }

    class c implements androidx.core.view.t {
        c() {
        }

        @Override // androidx.core.view.t
        public boolean a(MenuItem menuItem) {
            return FragmentManager.this.I(menuItem);
        }

        @Override // androidx.core.view.t
        public void b(Menu menu) {
            FragmentManager.this.J(menu);
        }

        @Override // androidx.core.view.t
        public void c(Menu menu, MenuInflater menuInflater) {
            FragmentManager.this.B(menu, menuInflater);
        }

        @Override // androidx.core.view.t
        public void d(Menu menu) {
            FragmentManager.this.N(menu);
        }
    }

    class d extends androidx.fragment.app.k {
        d() {
        }

        @Override // androidx.fragment.app.k
        public Fragment a(ClassLoader classLoader, String str) {
            return FragmentManager.this.u0().b(FragmentManager.this.u0().f(), str, null);
        }
    }

    class e implements g0 {
        e() {
        }

        @Override // androidx.fragment.app.g0
        public f0 a(ViewGroup viewGroup) {
            return new androidx.fragment.app.b(viewGroup);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentManager.this.Z(true);
        }
    }

    class g implements v {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Fragment f2525a;

        g(Fragment fragment) {
            this.f2525a = fragment;
        }

        @Override // androidx.fragment.app.v
        public void a(FragmentManager fragmentManager, Fragment fragment) {
            this.f2525a.onAttachFragment(fragment);
        }
    }

    class h implements androidx.activity.result.a {
        h() {
        }

        @Override // androidx.activity.result.a
        /* JADX INFO: renamed from: b */
        public void a(ActivityResult activityResult) {
            LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) FragmentManager.this.G.pollFirst();
            if (launchedFragmentInfo == null) {
                Log.w("FragmentManager", "No Activities were started for result for " + this);
                return;
            }
            String str = launchedFragmentInfo.f2517a;
            int i10 = launchedFragmentInfo.f2518b;
            Fragment fragmentI = FragmentManager.this.f2493c.i(str);
            if (fragmentI != null) {
                fragmentI.onActivityResult(i10, activityResult.b(), activityResult.a());
                return;
            }
            Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
        }
    }

    class i implements androidx.activity.result.a {
        i() {
        }

        @Override // androidx.activity.result.a
        /* JADX INFO: renamed from: b */
        public void a(ActivityResult activityResult) {
            LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) FragmentManager.this.G.pollFirst();
            if (launchedFragmentInfo == null) {
                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                return;
            }
            String str = launchedFragmentInfo.f2517a;
            int i10 = launchedFragmentInfo.f2518b;
            Fragment fragmentI = FragmentManager.this.f2493c.i(str);
            if (fragmentI != null) {
                fragmentI.onActivityResult(i10, activityResult.b(), activityResult.a());
                return;
            }
            Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
        }
    }

    static class j extends d.a {
        j() {
        }

        @Override // d.a
        /* JADX INFO: renamed from: d */
        public Intent a(Context context, IntentSenderRequest intentSenderRequest) {
            Bundle bundleExtra;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent intentA = intentSenderRequest.a();
            if (intentA != null && (bundleExtra = intentA.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                intentA.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (intentA.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    intentSenderRequest = new IntentSenderRequest.a(intentSenderRequest.d()).b(null).c(intentSenderRequest.c(), intentSenderRequest.b()).a();
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest);
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
            }
            return intent;
        }

        @Override // d.a
        /* JADX INFO: renamed from: e */
        public ActivityResult c(int i10, Intent intent) {
            return new ActivityResult(i10, intent);
        }
    }

    public static abstract class k {
        @Deprecated
        public void onFragmentActivityCreated(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        }

        public void onFragmentAttached(FragmentManager fragmentManager, Fragment fragment, Context context) {
        }

        public void onFragmentCreated(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        }

        public void onFragmentDestroyed(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentDetached(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentPaused(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentPreAttached(FragmentManager fragmentManager, Fragment fragment, Context context) {
        }

        public void onFragmentPreCreated(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        }

        public void onFragmentResumed(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentSaveInstanceState(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        }

        public void onFragmentStarted(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentStopped(FragmentManager fragmentManager, Fragment fragment) {
        }

        public abstract void onFragmentViewCreated(FragmentManager fragmentManager, Fragment fragment, View view, Bundle bundle);

        public void onFragmentViewDestroyed(FragmentManager fragmentManager, Fragment fragment) {
        }
    }

    interface l {
        boolean a(ArrayList arrayList, ArrayList arrayList2);
    }

    private class m implements l {

        /* JADX INFO: renamed from: a */
        final String f2529a;

        /* JADX INFO: renamed from: b */
        final int f2530b;

        /* JADX INFO: renamed from: c */
        final int f2531c;

        m(String str, int i10, int i11) {
            this.f2529a = str;
            this.f2530b = i10;
            this.f2531c = i11;
        }

        @Override // androidx.fragment.app.FragmentManager.l
        public boolean a(ArrayList arrayList, ArrayList arrayList2) {
            Fragment fragment = FragmentManager.this.f2515y;
            if (fragment == null || this.f2530b >= 0 || this.f2529a != null || !fragment.getChildFragmentManager().c1()) {
                return FragmentManager.this.f1(arrayList, arrayList2, this.f2529a, this.f2530b, this.f2531c);
            }
            return false;
        }
    }

    static Fragment B0(View view) {
        Object tag = view.getTag(R$id.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    public static boolean H0(int i10) {
        return S || Log.isLoggable("FragmentManager", i10);
    }

    private boolean I0(Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.o();
    }

    private boolean J0() {
        Fragment fragment = this.f2514x;
        if (fragment == null) {
            return true;
        }
        return fragment.isAdded() && this.f2514x.getParentFragmentManager().J0();
    }

    private void K(Fragment fragment) {
        if (fragment == null || !fragment.equals(e0(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    public /* synthetic */ void Q0(Configuration configuration) {
        if (J0()) {
            y(configuration, false);
        }
    }

    private void R(int i10) {
        try {
            this.f2492b = true;
            this.f2493c.d(i10);
            X0(i10, false);
            Iterator it = s().iterator();
            while (it.hasNext()) {
                ((f0) it.next()).j();
            }
            this.f2492b = false;
            Z(true);
        } catch (Throwable th) {
            this.f2492b = false;
            throw th;
        }
    }

    public /* synthetic */ void R0(Integer num) {
        if (J0() && num.intValue() == 80) {
            E(false);
        }
    }

    public /* synthetic */ void S0(androidx.core.app.e eVar) {
        if (J0()) {
            F(eVar.a(), false);
        }
    }

    public /* synthetic */ void T0(androidx.core.app.o oVar) {
        if (J0()) {
            M(oVar.a(), false);
        }
    }

    private void U() {
        if (this.L) {
            this.L = false;
            w1();
        }
    }

    private void W() {
        Iterator it = s().iterator();
        while (it.hasNext()) {
            ((f0) it.next()).j();
        }
    }

    private void Y(boolean z10) {
        if (this.f2492b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f2512v == null) {
            if (!this.K) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f2512v.g().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z10) {
            p();
        }
        if (this.M == null) {
            this.M = new ArrayList();
            this.N = new ArrayList();
        }
    }

    private static void b0(ArrayList arrayList, ArrayList arrayList2, int i10, int i11) {
        while (i10 < i11) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) arrayList.get(i10);
            if (((Boolean) arrayList2.get(i10)).booleanValue()) {
                aVar.x(-1);
                aVar.C();
            } else {
                aVar.x(1);
                aVar.B();
            }
            i10++;
        }
    }

    private void c0(ArrayList arrayList, ArrayList arrayList2, int i10, int i11) {
        boolean z10 = ((androidx.fragment.app.a) arrayList.get(i10)).f2734r;
        ArrayList arrayList3 = this.O;
        if (arrayList3 == null) {
            this.O = new ArrayList();
        } else {
            arrayList3.clear();
        }
        this.O.addAll(this.f2493c.o());
        Fragment fragmentY0 = y0();
        boolean z11 = false;
        for (int i12 = i10; i12 < i11; i12++) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) arrayList.get(i12);
            fragmentY0 = !((Boolean) arrayList2.get(i12)).booleanValue() ? aVar.D(this.O, fragmentY0) : aVar.G(this.O, fragmentY0);
            z11 = z11 || aVar.f2725i;
        }
        this.O.clear();
        if (!z10 && this.f2511u >= 1) {
            for (int i13 = i10; i13 < i11; i13++) {
                Iterator it = ((androidx.fragment.app.a) arrayList.get(i13)).f2719c.iterator();
                while (it.hasNext()) {
                    Fragment fragment = ((z.a) it.next()).f2737b;
                    if (fragment != null && fragment.mFragmentManager != null) {
                        this.f2493c.r(u(fragment));
                    }
                }
            }
        }
        b0(arrayList, arrayList2, i10, i11);
        boolean zBooleanValue = ((Boolean) arrayList2.get(i11 - 1)).booleanValue();
        for (int i14 = i10; i14 < i11; i14++) {
            androidx.fragment.app.a aVar2 = (androidx.fragment.app.a) arrayList.get(i14);
            if (zBooleanValue) {
                for (int size = aVar2.f2719c.size() - 1; size >= 0; size--) {
                    Fragment fragment2 = ((z.a) aVar2.f2719c.get(size)).f2737b;
                    if (fragment2 != null) {
                        u(fragment2).m();
                    }
                }
            } else {
                Iterator it2 = aVar2.f2719c.iterator();
                while (it2.hasNext()) {
                    Fragment fragment3 = ((z.a) it2.next()).f2737b;
                    if (fragment3 != null) {
                        u(fragment3).m();
                    }
                }
            }
        }
        X0(this.f2511u, true);
        for (f0 f0Var : t(arrayList, i10, i11)) {
            f0Var.r(zBooleanValue);
            f0Var.p();
            f0Var.g();
        }
        while (i10 < i11) {
            androidx.fragment.app.a aVar3 = (androidx.fragment.app.a) arrayList.get(i10);
            if (((Boolean) arrayList2.get(i10)).booleanValue() && aVar3.f2562v >= 0) {
                aVar3.f2562v = -1;
            }
            aVar3.F();
            i10++;
        }
        if (z11) {
            l1();
        }
    }

    private boolean e1(String str, int i10, int i11) {
        Z(false);
        Y(true);
        Fragment fragment = this.f2515y;
        if (fragment != null && i10 < 0 && str == null && fragment.getChildFragmentManager().c1()) {
            return true;
        }
        boolean zF1 = f1(this.M, this.N, str, i10, i11);
        if (zF1) {
            this.f2492b = true;
            try {
                j1(this.M, this.N);
            } finally {
                q();
            }
        }
        z1();
        U();
        this.f2493c.b();
        return zF1;
    }

    private int f0(String str, int i10, boolean z10) {
        ArrayList arrayList = this.f2494d;
        if (arrayList == null || arrayList.isEmpty()) {
            return -1;
        }
        if (str == null && i10 < 0) {
            if (z10) {
                return 0;
            }
            return this.f2494d.size() - 1;
        }
        int size = this.f2494d.size() - 1;
        while (size >= 0) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) this.f2494d.get(size);
            if ((str != null && str.equals(aVar.E())) || (i10 >= 0 && i10 == aVar.f2562v)) {
                break;
            }
            size--;
        }
        if (size < 0) {
            return size;
        }
        if (!z10) {
            if (size == this.f2494d.size() - 1) {
                return -1;
            }
            return size + 1;
        }
        while (size > 0) {
            androidx.fragment.app.a aVar2 = (androidx.fragment.app.a) this.f2494d.get(size - 1);
            if ((str == null || !str.equals(aVar2.E())) && (i10 < 0 || i10 != aVar2.f2562v)) {
                return size;
            }
            size--;
        }
        return size;
    }

    static FragmentManager j0(View view) {
        FragmentActivity fragmentActivity;
        Fragment fragmentK0 = k0(view);
        if (fragmentK0 != null) {
            if (fragmentK0.isAdded()) {
                return fragmentK0.getChildFragmentManager();
            }
            throw new IllegalStateException("The Fragment " + fragmentK0 + " that owns View " + view + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
        }
        Context context = view.getContext();
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                fragmentActivity = null;
                break;
            }
            if (context instanceof FragmentActivity) {
                fragmentActivity = (FragmentActivity) context;
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (fragmentActivity != null) {
            return fragmentActivity.getSupportFragmentManager();
        }
        throw new IllegalStateException("View " + view + " is not within a subclass of FragmentActivity.");
    }

    private void j1(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            if (!((androidx.fragment.app.a) arrayList.get(i10)).f2734r) {
                if (i11 != i10) {
                    c0(arrayList, arrayList2, i11, i10);
                }
                i11 = i10 + 1;
                if (((Boolean) arrayList2.get(i10)).booleanValue()) {
                    while (i11 < size && ((Boolean) arrayList2.get(i11)).booleanValue() && !((androidx.fragment.app.a) arrayList.get(i11)).f2734r) {
                        i11++;
                    }
                }
                c0(arrayList, arrayList2, i10, i11);
                i10 = i11 - 1;
            }
            i10++;
        }
        if (i11 != size) {
            c0(arrayList, arrayList2, i11, size);
        }
    }

    private static Fragment k0(View view) {
        while (view != null) {
            Fragment fragmentB0 = B0(view);
            if (fragmentB0 != null) {
                return fragmentB0;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return null;
    }

    private void l0() {
        Iterator it = s().iterator();
        while (it.hasNext()) {
            ((f0) it.next()).k();
        }
    }

    private void l1() {
        ArrayList arrayList = this.f2503m;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        androidx.appcompat.app.t.a(this.f2503m.get(0));
        throw null;
    }

    private boolean m0(ArrayList arrayList, ArrayList arrayList2) {
        synchronized (this.f2491a) {
            if (this.f2491a.isEmpty()) {
                return false;
            }
            try {
                int size = this.f2491a.size();
                boolean zA = false;
                for (int i10 = 0; i10 < size; i10++) {
                    zA |= ((l) this.f2491a.get(i10)).a(arrayList, arrayList2);
                }
                return zA;
            } finally {
                this.f2491a.clear();
                this.f2512v.g().removeCallbacks(this.R);
            }
        }
    }

    static int n1(int i10) {
        int i11 = 4097;
        if (i10 == 4097) {
            return 8194;
        }
        if (i10 != 8194) {
            i11 = 8197;
            if (i10 == 8197) {
                return 4100;
            }
            if (i10 == 4099) {
                return 4099;
            }
            if (i10 != 4100) {
                return 0;
            }
        }
        return i11;
    }

    private u o0(Fragment fragment) {
        return this.P.j(fragment);
    }

    private void p() {
        if (O0()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    private void q() {
        this.f2492b = false;
        this.N.clear();
        this.M.clear();
    }

    private void r() {
        androidx.fragment.app.l lVar = this.f2512v;
        if (lVar instanceof x0 ? this.f2493c.p().n() : lVar.f() instanceof Activity ? !((Activity) this.f2512v.f()).isChangingConfigurations() : true) {
            Iterator it = this.f2500j.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((BackStackState) it.next()).f2445a.iterator();
                while (it2.hasNext()) {
                    this.f2493c.p().g((String) it2.next());
                }
            }
        }
    }

    private ViewGroup r0(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.f2513w.d()) {
            View viewC = this.f2513w.c(fragment.mContainerId);
            if (viewC instanceof ViewGroup) {
                return (ViewGroup) viewC;
            }
        }
        return null;
    }

    private Set s() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f2493c.k().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((w) it.next()).k().mContainer;
            if (viewGroup != null) {
                hashSet.add(f0.o(viewGroup, z0()));
            }
        }
        return hashSet;
    }

    private Set t(ArrayList arrayList, int i10, int i11) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i10 < i11) {
            Iterator it = ((androidx.fragment.app.a) arrayList.get(i10)).f2719c.iterator();
            while (it.hasNext()) {
                Fragment fragment = ((z.a) it.next()).f2737b;
                if (fragment != null && (viewGroup = fragment.mContainer) != null) {
                    hashSet.add(f0.n(viewGroup, this));
                }
            }
            i10++;
        }
        return hashSet;
    }

    private void u1(Fragment fragment) {
        ViewGroup viewGroupR0 = r0(fragment);
        if (viewGroupR0 == null || fragment.getEnterAnim() + fragment.getExitAnim() + fragment.getPopEnterAnim() + fragment.getPopExitAnim() <= 0) {
            return;
        }
        if (viewGroupR0.getTag(R$id.visible_removing_fragment_view_tag) == null) {
            viewGroupR0.setTag(R$id.visible_removing_fragment_view_tag, fragment);
        }
        ((Fragment) viewGroupR0.getTag(R$id.visible_removing_fragment_view_tag)).setPopDirection(fragment.getPopDirection());
    }

    private void w1() {
        Iterator it = this.f2493c.k().iterator();
        while (it.hasNext()) {
            a1((w) it.next());
        }
    }

    private void x1(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new e0("FragmentManager"));
        androidx.fragment.app.l lVar = this.f2512v;
        if (lVar != null) {
            try {
                lVar.h("  ", null, printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e10) {
                Log.e("FragmentManager", "Failed dumping state", e10);
                throw runtimeException;
            }
        }
        try {
            V("  ", null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e11) {
            Log.e("FragmentManager", "Failed dumping state", e11);
            throw runtimeException;
        }
    }

    private void z1() {
        synchronized (this.f2491a) {
            try {
                if (this.f2491a.isEmpty()) {
                    this.f2498h.j(n0() > 0 && M0(this.f2514x));
                } else {
                    this.f2498h.j(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void A() {
        this.I = false;
        this.J = false;
        this.P.p(false);
        R(1);
    }

    public c.C0149c A0() {
        return this.Q;
    }

    boolean B(Menu menu, MenuInflater menuInflater) {
        if (this.f2511u < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z10 = false;
        for (Fragment fragment : this.f2493c.o()) {
            if (fragment != null && L0(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(fragment);
                z10 = true;
            }
        }
        if (this.f2495e != null) {
            for (int i10 = 0; i10 < this.f2495e.size(); i10++) {
                Fragment fragment2 = (Fragment) this.f2495e.get(i10);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f2495e = arrayList;
        return z10;
    }

    void C() {
        this.K = true;
        Z(true);
        W();
        r();
        R(-1);
        Object obj = this.f2512v;
        if (obj instanceof r.d) {
            ((r.d) obj).removeOnTrimMemoryListener(this.f2507q);
        }
        Object obj2 = this.f2512v;
        if (obj2 instanceof r.c) {
            ((r.c) obj2).removeOnConfigurationChangedListener(this.f2506p);
        }
        Object obj3 = this.f2512v;
        if (obj3 instanceof androidx.core.app.l) {
            ((androidx.core.app.l) obj3).removeOnMultiWindowModeChangedListener(this.f2508r);
        }
        Object obj4 = this.f2512v;
        if (obj4 instanceof androidx.core.app.m) {
            ((androidx.core.app.m) obj4).removeOnPictureInPictureModeChangedListener(this.f2509s);
        }
        Object obj5 = this.f2512v;
        if (obj5 instanceof androidx.core.view.n) {
            ((androidx.core.view.n) obj5).removeMenuProvider(this.f2510t);
        }
        this.f2512v = null;
        this.f2513w = null;
        this.f2514x = null;
        if (this.f2497g != null) {
            this.f2498h.h();
            this.f2497g = null;
        }
        androidx.activity.result.b bVar = this.D;
        if (bVar != null) {
            bVar.c();
            this.E.c();
            this.F.c();
        }
    }

    w0 C0(Fragment fragment) {
        return this.P.m(fragment);
    }

    void D() {
        R(1);
    }

    void D0() {
        Z(true);
        if (this.f2498h.g()) {
            c1();
        } else {
            this.f2497g.k();
        }
    }

    void E(boolean z10) {
        if (z10 && (this.f2512v instanceof r.d)) {
            x1(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
        }
        for (Fragment fragment : this.f2493c.o()) {
            if (fragment != null) {
                fragment.performLowMemory();
                if (z10) {
                    fragment.mChildFragmentManager.E(true);
                }
            }
        }
    }

    void E0(Fragment fragment) {
        if (H0(2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
        u1(fragment);
    }

    void F(boolean z10, boolean z11) {
        if (z11 && (this.f2512v instanceof androidx.core.app.l)) {
            x1(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
        }
        for (Fragment fragment : this.f2493c.o()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z10);
                if (z11) {
                    fragment.mChildFragmentManager.F(z10, true);
                }
            }
        }
    }

    void F0(Fragment fragment) {
        if (fragment.mAdded && I0(fragment)) {
            this.H = true;
        }
    }

    void G(Fragment fragment) {
        Iterator it = this.f2505o.iterator();
        while (it.hasNext()) {
            ((v) it.next()).a(this, fragment);
        }
    }

    public boolean G0() {
        return this.K;
    }

    void H() {
        for (Fragment fragment : this.f2493c.l()) {
            if (fragment != null) {
                fragment.onHiddenChanged(fragment.isHidden());
                fragment.mChildFragmentManager.H();
            }
        }
    }

    boolean I(MenuItem menuItem) {
        if (this.f2511u < 1) {
            return false;
        }
        for (Fragment fragment : this.f2493c.o()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    void J(Menu menu) {
        if (this.f2511u < 1) {
            return;
        }
        for (Fragment fragment : this.f2493c.o()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    boolean K0(Fragment fragment) {
        if (fragment == null) {
            return false;
        }
        return fragment.isHidden();
    }

    void L() {
        R(5);
    }

    boolean L0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    void M(boolean z10, boolean z11) {
        if (z11 && (this.f2512v instanceof androidx.core.app.m)) {
            x1(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
        }
        for (Fragment fragment : this.f2493c.o()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z10);
                if (z11) {
                    fragment.mChildFragmentManager.M(z10, true);
                }
            }
        }
    }

    boolean M0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment.equals(fragmentManager.y0()) && M0(fragmentManager.f2514x);
    }

    boolean N(Menu menu) {
        boolean z10 = false;
        if (this.f2511u < 1) {
            return false;
        }
        for (Fragment fragment : this.f2493c.o()) {
            if (fragment != null && L0(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z10 = true;
            }
        }
        return z10;
    }

    boolean N0(int i10) {
        return this.f2511u >= i10;
    }

    void O() {
        z1();
        K(this.f2515y);
    }

    public boolean O0() {
        return this.I || this.J;
    }

    void P() {
        this.I = false;
        this.J = false;
        this.P.p(false);
        R(7);
    }

    void Q() {
        this.I = false;
        this.J = false;
        this.P.p(false);
        R(5);
    }

    void S() {
        this.J = true;
        this.P.p(true);
        R(4);
    }

    void T() {
        R(2);
    }

    void U0(Fragment fragment, String[] strArr, int i10) {
        if (this.F == null) {
            this.f2512v.k(fragment, strArr, i10);
            return;
        }
        this.G.addLast(new LaunchedFragmentInfo(fragment.mWho, i10));
        this.F.a(strArr);
    }

    public void V(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.f2493c.e(str, fileDescriptor, printWriter, strArr);
        ArrayList arrayList = this.f2495e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i10 = 0; i10 < size2; i10++) {
                Fragment fragment = (Fragment) this.f2495e.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        ArrayList arrayList2 = this.f2494d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i11 = 0; i11 < size; i11++) {
                androidx.fragment.app.a aVar = (androidx.fragment.app.a) this.f2494d.get(i11);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i11);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.z(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f2499i.get());
        synchronized (this.f2491a) {
            try {
                int size3 = this.f2491a.size();
                if (size3 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i12 = 0; i12 < size3; i12++) {
                        l lVar = (l) this.f2491a.get(i12);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i12);
                        printWriter.print(": ");
                        printWriter.println(lVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f2512v);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f2513w);
        if (this.f2514x != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f2514x);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f2511u);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.I);
        printWriter.print(" mStopped=");
        printWriter.print(this.J);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.K);
        if (this.H) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.H);
        }
    }

    void V0(Fragment fragment, Intent intent, int i10, Bundle bundle) {
        if (this.D == null) {
            this.f2512v.m(fragment, intent, i10, bundle);
            return;
        }
        this.G.addLast(new LaunchedFragmentInfo(fragment.mWho, i10));
        if (intent != null && bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        this.D.a(intent);
    }

    void W0(Fragment fragment, IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) {
        Intent intent2;
        if (this.E == null) {
            this.f2512v.n(fragment, intentSender, i10, intent, i11, i12, i13, bundle);
            return;
        }
        if (bundle != null) {
            if (intent == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            } else {
                intent2 = intent;
            }
            if (H0(2)) {
                Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + fragment);
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        } else {
            intent2 = intent;
        }
        IntentSenderRequest intentSenderRequestA = new IntentSenderRequest.a(intentSender).b(intent2).c(i12, i11).a();
        this.G.addLast(new LaunchedFragmentInfo(fragment.mWho, i10));
        if (H0(2)) {
            Log.v("FragmentManager", "Fragment " + fragment + "is launching an IntentSender for result ");
        }
        this.E.a(intentSenderRequestA);
    }

    void X(l lVar, boolean z10) {
        if (!z10) {
            if (this.f2512v == null) {
                if (!this.K) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            p();
        }
        synchronized (this.f2491a) {
            try {
                if (this.f2512v == null) {
                    if (!z10) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f2491a.add(lVar);
                    q1();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void X0(int i10, boolean z10) {
        androidx.fragment.app.l lVar;
        if (this.f2512v == null && i10 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z10 || i10 != this.f2511u) {
            this.f2511u = i10;
            this.f2493c.t();
            w1();
            if (this.H && (lVar = this.f2512v) != null && this.f2511u == 7) {
                lVar.o();
                this.H = false;
            }
        }
    }

    void Y0() {
        if (this.f2512v == null) {
            return;
        }
        this.I = false;
        this.J = false;
        this.P.p(false);
        for (Fragment fragment : this.f2493c.o()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    boolean Z(boolean z10) {
        Y(z10);
        boolean z11 = false;
        while (m0(this.M, this.N)) {
            z11 = true;
            this.f2492b = true;
            try {
                j1(this.M, this.N);
            } finally {
                q();
            }
        }
        z1();
        U();
        this.f2493c.b();
        return z11;
    }

    void Z0(FragmentContainerView fragmentContainerView) {
        View view;
        for (w wVar : this.f2493c.k()) {
            Fragment fragmentK = wVar.k();
            if (fragmentK.mContainerId == fragmentContainerView.getId() && (view = fragmentK.mView) != null && view.getParent() == null) {
                fragmentK.mContainer = fragmentContainerView;
                wVar.b();
            }
        }
    }

    void a0(l lVar, boolean z10) {
        if (z10 && (this.f2512v == null || this.K)) {
            return;
        }
        Y(z10);
        if (lVar.a(this.M, this.N)) {
            this.f2492b = true;
            try {
                j1(this.M, this.N);
            } finally {
                q();
            }
        }
        z1();
        U();
        this.f2493c.b();
    }

    void a1(w wVar) {
        Fragment fragmentK = wVar.k();
        if (fragmentK.mDeferStart) {
            if (this.f2492b) {
                this.L = true;
            } else {
                fragmentK.mDeferStart = false;
                wVar.m();
            }
        }
    }

    void b1(int i10, int i11, boolean z10) {
        if (i10 >= 0) {
            X(new m(null, i10, i11), z10);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i10);
    }

    public boolean c1() {
        return e1(null, -1, 0);
    }

    public boolean d0() {
        boolean Z = Z(true);
        l0();
        return Z;
    }

    public boolean d1(int i10, int i11) {
        if (i10 >= 0) {
            return e1(null, i10, i11);
        }
        throw new IllegalArgumentException("Bad id: " + i10);
    }

    Fragment e0(String str) {
        return this.f2493c.f(str);
    }

    boolean f1(ArrayList arrayList, ArrayList arrayList2, String str, int i10, int i11) {
        int iF0 = f0(str, i10, (i11 & 1) != 0);
        if (iF0 < 0) {
            return false;
        }
        for (int size = this.f2494d.size() - 1; size >= iF0; size--) {
            arrayList.add((androidx.fragment.app.a) this.f2494d.remove(size));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    void g(androidx.fragment.app.a aVar) {
        if (this.f2494d == null) {
            this.f2494d = new ArrayList();
        }
        this.f2494d.add(aVar);
    }

    public Fragment g0(int i10) {
        return this.f2493c.g(i10);
    }

    public void g1(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mFragmentManager != this) {
            x1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.mWho);
    }

    w h(Fragment fragment) {
        String str = fragment.mPreviousWho;
        if (str != null) {
            i0.c.f(fragment, str);
        }
        if (H0(2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        w wVarU = u(fragment);
        fragment.mFragmentManager = this;
        this.f2493c.r(wVarU);
        if (!fragment.mDetached) {
            this.f2493c.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (I0(fragment)) {
                this.H = true;
            }
        }
        return wVarU;
    }

    public Fragment h0(String str) {
        return this.f2493c.h(str);
    }

    public void h1(k kVar, boolean z10) {
        this.f2504n.o(kVar, z10);
    }

    public void i(v vVar) {
        this.f2505o.add(vVar);
    }

    Fragment i0(String str) {
        return this.f2493c.i(str);
    }

    void i1(Fragment fragment) {
        if (H0(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean zIsInBackStack = fragment.isInBackStack();
        if (fragment.mDetached && zIsInBackStack) {
            return;
        }
        this.f2493c.u(fragment);
        if (I0(fragment)) {
            this.H = true;
        }
        fragment.mRemoving = true;
        u1(fragment);
    }

    void j(Fragment fragment) {
        this.P.e(fragment);
    }

    int k() {
        return this.f2499i.getAndIncrement();
    }

    void k1(Fragment fragment) {
        this.P.o(fragment);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void l(androidx.fragment.app.l lVar, androidx.fragment.app.i iVar, Fragment fragment) {
        String str;
        if (this.f2512v != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f2512v = lVar;
        this.f2513w = iVar;
        this.f2514x = fragment;
        if (fragment != null) {
            i(new g(fragment));
        } else if (lVar instanceof v) {
            i((v) lVar);
        }
        if (this.f2514x != null) {
            z1();
        }
        if (lVar instanceof androidx.activity.x) {
            androidx.activity.x xVar = (androidx.activity.x) lVar;
            androidx.activity.v onBackPressedDispatcher = xVar.getOnBackPressedDispatcher();
            this.f2497g = onBackPressedDispatcher;
            androidx.lifecycle.s sVar = xVar;
            if (fragment != null) {
                sVar = fragment;
            }
            onBackPressedDispatcher.h(sVar, this.f2498h);
        }
        if (fragment != null) {
            this.P = fragment.mFragmentManager.o0(fragment);
        } else if (lVar instanceof x0) {
            this.P = u.k(((x0) lVar).getViewModelStore());
        } else {
            this.P = new u(false);
        }
        this.P.p(O0());
        this.f2493c.A(this.P);
        Object obj = this.f2512v;
        if ((obj instanceof q0.h) && fragment == null) {
            q0.e savedStateRegistry = ((q0.h) obj).getSavedStateRegistry();
            savedStateRegistry.c("android:support:fragments", new e.b() { // from class: androidx.fragment.app.s
                @Override // q0.e.b
                public final Bundle saveState() {
                    return this.f2696a.P0();
                }
            });
            Bundle bundleA = savedStateRegistry.a("android:support:fragments");
            if (bundleA != null) {
                m1(bundleA);
            }
        }
        Object obj2 = this.f2512v;
        if (obj2 instanceof androidx.activity.result.e) {
            androidx.activity.result.d activityResultRegistry = ((androidx.activity.result.e) obj2).getActivityResultRegistry();
            if (fragment != null) {
                str = fragment.mWho + ":";
            } else {
                str = "";
            }
            String str2 = "FragmentManager:" + str;
            this.D = activityResultRegistry.m(str2 + "StartActivityForResult", new d.d(), new h());
            this.E = activityResultRegistry.m(str2 + "StartIntentSenderForResult", new j(), new i());
            this.F = activityResultRegistry.m(str2 + "RequestPermissions", new d.b(), new a());
        }
        Object obj3 = this.f2512v;
        if (obj3 instanceof r.c) {
            ((r.c) obj3).addOnConfigurationChangedListener(this.f2506p);
        }
        Object obj4 = this.f2512v;
        if (obj4 instanceof r.d) {
            ((r.d) obj4).addOnTrimMemoryListener(this.f2507q);
        }
        Object obj5 = this.f2512v;
        if (obj5 instanceof androidx.core.app.l) {
            ((androidx.core.app.l) obj5).addOnMultiWindowModeChangedListener(this.f2508r);
        }
        Object obj6 = this.f2512v;
        if (obj6 instanceof androidx.core.app.m) {
            ((androidx.core.app.m) obj6).addOnPictureInPictureModeChangedListener(this.f2509s);
        }
        Object obj7 = this.f2512v;
        if ((obj7 instanceof androidx.core.view.n) && fragment == null) {
            ((androidx.core.view.n) obj7).addMenuProvider(this.f2510t);
        }
    }

    void m(Fragment fragment) {
        if (H0(2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f2493c.a(fragment);
            if (H0(2)) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            if (I0(fragment)) {
                this.H = true;
            }
        }
    }

    void m1(Parcelable parcelable) {
        w wVar;
        Bundle bundle;
        Bundle bundle2;
        if (parcelable == null) {
            return;
        }
        Bundle bundle3 = (Bundle) parcelable;
        for (String str : bundle3.keySet()) {
            if (str.startsWith("result_") && (bundle2 = bundle3.getBundle(str)) != null) {
                bundle2.setClassLoader(this.f2512v.f().getClassLoader());
                this.f2501k.put(str.substring(7), bundle2);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : bundle3.keySet()) {
            if (str2.startsWith("fragment_") && (bundle = bundle3.getBundle(str2)) != null) {
                bundle.setClassLoader(this.f2512v.f().getClassLoader());
                arrayList.add((FragmentState) bundle.getParcelable("state"));
            }
        }
        this.f2493c.x(arrayList);
        FragmentManagerState fragmentManagerState = (FragmentManagerState) bundle3.getParcelable("state");
        if (fragmentManagerState == null) {
            return;
        }
        this.f2493c.v();
        Iterator it = fragmentManagerState.f2533a.iterator();
        while (it.hasNext()) {
            FragmentState fragmentStateB = this.f2493c.B((String) it.next(), null);
            if (fragmentStateB != null) {
                Fragment fragmentI = this.P.i(fragmentStateB.f2542b);
                if (fragmentI != null) {
                    if (H0(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragmentI);
                    }
                    wVar = new w(this.f2504n, this.f2493c, fragmentI, fragmentStateB);
                } else {
                    wVar = new w(this.f2504n, this.f2493c, this.f2512v.f().getClassLoader(), s0(), fragmentStateB);
                }
                Fragment fragmentK = wVar.k();
                fragmentK.mFragmentManager = this;
                if (H0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + fragmentK.mWho + "): " + fragmentK);
                }
                wVar.o(this.f2512v.f().getClassLoader());
                this.f2493c.r(wVar);
                wVar.u(this.f2511u);
            }
        }
        for (Fragment fragment : this.P.l()) {
            if (!this.f2493c.c(fragment.mWho)) {
                if (H0(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + fragmentManagerState.f2533a);
                }
                this.P.o(fragment);
                fragment.mFragmentManager = this;
                w wVar2 = new w(this.f2504n, this.f2493c, fragment);
                wVar2.u(1);
                wVar2.m();
                fragment.mRemoving = true;
                wVar2.m();
            }
        }
        this.f2493c.w(fragmentManagerState.f2534b);
        if (fragmentManagerState.f2535c != null) {
            this.f2494d = new ArrayList(fragmentManagerState.f2535c.length);
            int i10 = 0;
            while (true) {
                BackStackRecordState[] backStackRecordStateArr = fragmentManagerState.f2535c;
                if (i10 >= backStackRecordStateArr.length) {
                    break;
                }
                androidx.fragment.app.a aVarB = backStackRecordStateArr[i10].b(this);
                if (H0(2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i10 + " (index " + aVarB.f2562v + "): " + aVarB);
                    PrintWriter printWriter = new PrintWriter(new e0("FragmentManager"));
                    aVarB.A("  ", printWriter, false);
                    printWriter.close();
                }
                this.f2494d.add(aVarB);
                i10++;
            }
        } else {
            this.f2494d = null;
        }
        this.f2499i.set(fragmentManagerState.f2536f);
        String str3 = fragmentManagerState.f2537h;
        if (str3 != null) {
            Fragment fragmentE0 = e0(str3);
            this.f2515y = fragmentE0;
            K(fragmentE0);
        }
        ArrayList arrayList2 = fragmentManagerState.f2538i;
        if (arrayList2 != null) {
            for (int i11 = 0; i11 < arrayList2.size(); i11++) {
                this.f2500j.put((String) arrayList2.get(i11), (BackStackState) fragmentManagerState.f2539j.get(i11));
            }
        }
        this.G = new ArrayDeque(fragmentManagerState.f2540k);
    }

    public z n() {
        return new androidx.fragment.app.a(this);
    }

    public int n0() {
        ArrayList arrayList = this.f2494d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    boolean o() {
        boolean zI0 = false;
        for (Fragment fragment : this.f2493c.l()) {
            if (fragment != null) {
                zI0 = I0(fragment);
            }
            if (zI0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: o1 */
    public Bundle P0() {
        BackStackRecordState[] backStackRecordStateArr;
        int size;
        Bundle bundle = new Bundle();
        l0();
        W();
        Z(true);
        this.I = true;
        this.P.p(true);
        ArrayList arrayListY = this.f2493c.y();
        ArrayList<FragmentState> arrayListM = this.f2493c.m();
        if (!arrayListM.isEmpty()) {
            ArrayList arrayListZ = this.f2493c.z();
            ArrayList arrayList = this.f2494d;
            if (arrayList == null || (size = arrayList.size()) <= 0) {
                backStackRecordStateArr = null;
            } else {
                backStackRecordStateArr = new BackStackRecordState[size];
                for (int i10 = 0; i10 < size; i10++) {
                    backStackRecordStateArr[i10] = new BackStackRecordState((androidx.fragment.app.a) this.f2494d.get(i10));
                    if (H0(2)) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i10 + ": " + this.f2494d.get(i10));
                    }
                }
            }
            FragmentManagerState fragmentManagerState = new FragmentManagerState();
            fragmentManagerState.f2533a = arrayListY;
            fragmentManagerState.f2534b = arrayListZ;
            fragmentManagerState.f2535c = backStackRecordStateArr;
            fragmentManagerState.f2536f = this.f2499i.get();
            Fragment fragment = this.f2515y;
            if (fragment != null) {
                fragmentManagerState.f2537h = fragment.mWho;
            }
            fragmentManagerState.f2538i.addAll(this.f2500j.keySet());
            fragmentManagerState.f2539j.addAll(this.f2500j.values());
            fragmentManagerState.f2540k = new ArrayList(this.G);
            bundle.putParcelable("state", fragmentManagerState);
            for (String str : this.f2501k.keySet()) {
                bundle.putBundle("result_" + str, (Bundle) this.f2501k.get(str));
            }
            for (FragmentState fragmentState : arrayListM) {
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("state", fragmentState);
                bundle.putBundle("fragment_" + fragmentState.f2542b, bundle2);
            }
        } else if (H0(2)) {
            Log.v("FragmentManager", "saveAllState: no fragments!");
        }
        return bundle;
    }

    androidx.fragment.app.i p0() {
        return this.f2513w;
    }

    public Fragment.SavedState p1(Fragment fragment) {
        w wVarN = this.f2493c.n(fragment.mWho);
        if (wVarN == null || !wVarN.k().equals(fragment)) {
            x1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        return wVarN.r();
    }

    public Fragment q0(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragmentE0 = e0(string);
        if (fragmentE0 == null) {
            x1(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return fragmentE0;
    }

    void q1() {
        synchronized (this.f2491a) {
            try {
                if (this.f2491a.size() == 1) {
                    this.f2512v.g().removeCallbacks(this.R);
                    this.f2512v.g().post(this.R);
                    z1();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void r1(Fragment fragment, boolean z10) {
        ViewGroup viewGroupR0 = r0(fragment);
        if (viewGroupR0 == null || !(viewGroupR0 instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) viewGroupR0).setDrawDisappearingViewsLast(!z10);
    }

    public androidx.fragment.app.k s0() {
        androidx.fragment.app.k kVar = this.f2516z;
        if (kVar != null) {
            return kVar;
        }
        Fragment fragment = this.f2514x;
        return fragment != null ? fragment.mFragmentManager.s0() : this.A;
    }

    void s1(Fragment fragment, l.b bVar) {
        if (fragment.equals(e0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = bVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public List t0() {
        return this.f2493c.o();
    }

    void t1(Fragment fragment) {
        if (fragment == null || (fragment.equals(e0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.f2515y;
            this.f2515y = fragment;
            K(fragment2);
            K(this.f2515y);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f2514x;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f2514x)));
            sb.append("}");
        } else {
            androidx.fragment.app.l lVar = this.f2512v;
            if (lVar != null) {
                sb.append(lVar.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f2512v)));
                sb.append("}");
            } else {
                sb.append(AbstractJsonLexerKt.NULL);
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    w u(Fragment fragment) {
        w wVarN = this.f2493c.n(fragment.mWho);
        if (wVarN != null) {
            return wVarN;
        }
        w wVar = new w(this.f2504n, this.f2493c, fragment);
        wVar.o(this.f2512v.f().getClassLoader());
        wVar.u(this.f2511u);
        return wVar;
    }

    public androidx.fragment.app.l u0() {
        return this.f2512v;
    }

    void v(Fragment fragment) {
        if (H0(2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (H0(2)) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            this.f2493c.u(fragment);
            if (I0(fragment)) {
                this.H = true;
            }
            u1(fragment);
        }
    }

    LayoutInflater.Factory2 v0() {
        return this.f2496f;
    }

    void v1(Fragment fragment) {
        if (H0(2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    void w() {
        this.I = false;
        this.J = false;
        this.P.p(false);
        R(4);
    }

    n w0() {
        return this.f2504n;
    }

    void x() {
        this.I = false;
        this.J = false;
        this.P.p(false);
        R(0);
    }

    Fragment x0() {
        return this.f2514x;
    }

    void y(Configuration configuration, boolean z10) {
        if (z10 && (this.f2512v instanceof r.c)) {
            x1(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
        }
        for (Fragment fragment : this.f2493c.o()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
                if (z10) {
                    fragment.mChildFragmentManager.y(configuration, true);
                }
            }
        }
    }

    public Fragment y0() {
        return this.f2515y;
    }

    public void y1(k kVar) {
        this.f2504n.p(kVar);
    }

    boolean z(MenuItem menuItem) {
        if (this.f2511u < 1) {
            return false;
        }
        for (Fragment fragment : this.f2493c.o()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    g0 z0() {
        g0 g0Var = this.B;
        if (g0Var != null) {
            return g0Var;
        }
        Fragment fragment = this.f2514x;
        return fragment != null ? fragment.mFragmentManager.z0() : this.C;
    }

    @SuppressLint({"BanParcelableUsage"})
    static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        String f2517a;

        /* JADX INFO: renamed from: b */
        int f2518b;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                return new LaunchedFragmentInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b */
            public LaunchedFragmentInfo[] newArray(int i10) {
                return new LaunchedFragmentInfo[i10];
            }
        }

        LaunchedFragmentInfo(String str, int i10) {
            this.f2517a = str;
            this.f2518b = i10;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f2517a);
            parcel.writeInt(this.f2518b);
        }

        LaunchedFragmentInfo(Parcel parcel) {
            this.f2517a = parcel.readString();
            this.f2518b = parcel.readInt();
        }
    }
}
