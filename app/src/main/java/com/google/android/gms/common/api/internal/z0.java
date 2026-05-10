package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class z0 extends Fragment implements g {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final WeakHashMap f7721f = new WeakHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f7722a = Collections.synchronizedMap(new androidx.collection.a());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7723b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f7724c;

    public static z0 n(FragmentActivity fragmentActivity) {
        z0 z0Var;
        WeakHashMap weakHashMap = f7721f;
        WeakReference weakReference = (WeakReference) weakHashMap.get(fragmentActivity);
        if (weakReference != null && (z0Var = (z0) weakReference.get()) != null) {
            return z0Var;
        }
        try {
            z0 z0Var2 = (z0) fragmentActivity.getSupportFragmentManager().h0("SupportLifecycleFragmentImpl");
            if (z0Var2 == null || z0Var2.isRemoving()) {
                z0Var2 = new z0();
                fragmentActivity.getSupportFragmentManager().n().e(z0Var2, "SupportLifecycleFragmentImpl").i();
            }
            weakHashMap.put(fragmentActivity, new WeakReference(z0Var2));
            return z0Var2;
        } catch (ClassCastException e10) {
            throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e10);
        }
    }

    @Override // com.google.android.gms.common.api.internal.g
    public final void a(String str, LifecycleCallback lifecycleCallback) {
        if (this.f7722a.containsKey(str)) {
            throw new IllegalArgumentException("LifecycleCallback with tag " + str + " already added to this fragment.");
        }
        this.f7722a.put(str, lifecycleCallback);
        if (this.f7723b > 0) {
            new com.google.android.gms.internal.common.e(Looper.getMainLooper()).post(new y0(this, lifecycleCallback, str));
        }
    }

    @Override // com.google.android.gms.common.api.internal.g
    public final LifecycleCallback b(String str, Class cls) {
        return (LifecycleCallback) cls.cast(this.f7722a.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.g
    public final /* synthetic */ Activity c() {
        return getActivity();
    }

    @Override // androidx.fragment.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator it = this.f7722a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        Iterator it = this.f7722a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).e(i10, i11, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7723b = 1;
        this.f7724c = bundle;
        for (Map.Entry entry : this.f7722a.entrySet()) {
            ((LifecycleCallback) entry.getValue()).f(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f7723b = 5;
        Iterator it = this.f7722a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).g();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f7723b = 3;
        Iterator it = this.f7722a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).h();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.f7722a.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((LifecycleCallback) entry.getValue()).i(bundle2);
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f7723b = 2;
        Iterator it = this.f7722a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).j();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f7723b = 4;
        Iterator it = this.f7722a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).k();
        }
    }
}
