package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzb extends Fragment implements g {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final WeakHashMap f7727f = new WeakHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f7728a = Collections.synchronizedMap(new androidx.collection.a());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7729b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f7730c;

    public static zzb f(Activity activity) {
        zzb zzbVar;
        WeakHashMap weakHashMap = f7727f;
        WeakReference weakReference = (WeakReference) weakHashMap.get(activity);
        if (weakReference != null && (zzbVar = (zzb) weakReference.get()) != null) {
            return zzbVar;
        }
        try {
            zzb zzbVar2 = (zzb) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
            if (zzbVar2 == null || zzbVar2.isRemoving()) {
                zzbVar2 = new zzb();
                activity.getFragmentManager().beginTransaction().add(zzbVar2, "LifecycleFragmentImpl").commitAllowingStateLoss();
            }
            weakHashMap.put(activity, new WeakReference(zzbVar2));
            return zzbVar2;
        } catch (ClassCastException e10) {
            throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e10);
        }
    }

    @Override // com.google.android.gms.common.api.internal.g
    public final void a(String str, LifecycleCallback lifecycleCallback) {
        if (this.f7728a.containsKey(str)) {
            throw new IllegalArgumentException("LifecycleCallback with tag " + str + " already added to this fragment.");
        }
        this.f7728a.put(str, lifecycleCallback);
        if (this.f7729b > 0) {
            new com.google.android.gms.internal.common.e(Looper.getMainLooper()).post(new x0(this, lifecycleCallback, str));
        }
    }

    @Override // com.google.android.gms.common.api.internal.g
    public final LifecycleCallback b(String str, Class cls) {
        return (LifecycleCallback) cls.cast(this.f7728a.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.g
    public final Activity c() {
        return getActivity();
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator it = this.f7728a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        Iterator it = this.f7728a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).e(i10, i11, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7729b = 1;
        this.f7730c = bundle;
        for (Map.Entry entry : this.f7728a.entrySet()) {
            ((LifecycleCallback) entry.getValue()).f(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f7729b = 5;
        Iterator it = this.f7728a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).g();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f7729b = 3;
        Iterator it = this.f7728a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).h();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.f7728a.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((LifecycleCallback) entry.getValue()).i(bundle2);
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f7729b = 2;
        Iterator it = this.f7728a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).j();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f7729b = 4;
        Iterator it = this.f7728a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).k();
        }
    }
}
