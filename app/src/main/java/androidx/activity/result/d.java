package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.l;
import androidx.lifecycle.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.i0;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlin.sequences.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final b f199h = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f200a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f201b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f202c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f203d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final transient Map f204e = new LinkedHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map f205f = new LinkedHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Bundle f206g = new Bundle();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.activity.result.a f207a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.a f208b;

        public a(androidx.activity.result.a callback, d.a contract) {
            r.e(callback, "callback");
            r.e(contract, "contract");
            this.f207a = callback;
            this.f208b = contract;
        }

        public final androidx.activity.result.a a() {
            return this.f207a;
        }

        public final d.a b() {
            return this.f208b;
        }
    }

    private static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final l f209a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f210b;

        public c(l lifecycle) {
            r.e(lifecycle, "lifecycle");
            this.f209a = lifecycle;
            this.f210b = new ArrayList();
        }

        public final void a(p observer) {
            r.e(observer, "observer");
            this.f209a.a(observer);
            this.f210b.add(observer);
        }

        public final void b() {
            Iterator it = this.f210b.iterator();
            while (it.hasNext()) {
                this.f209a.d((p) it.next());
            }
            this.f210b.clear();
        }
    }

    /* JADX INFO: renamed from: androidx.activity.result.d$d, reason: collision with other inner class name */
    static final class C0003d extends s implements w8.a {
        public static final C0003d INSTANCE = new C0003d();

        C0003d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Integer mo8invoke() {
            return Integer.valueOf(z8.c.Default.nextInt(2147418112) + 65536);
        }
    }

    public static final class e extends androidx.activity.result.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f212b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ d.a f213c;

        e(String str, d.a aVar) {
            this.f212b = str;
            this.f213c = aVar;
        }

        @Override // androidx.activity.result.b
        public void b(Object obj, androidx.core.app.b bVar) throws Exception {
            Object obj2 = d.this.f201b.get(this.f212b);
            d.a aVar = this.f213c;
            if (obj2 != null) {
                int iIntValue = ((Number) obj2).intValue();
                d.this.f203d.add(this.f212b);
                try {
                    d.this.i(iIntValue, this.f213c, obj, bVar);
                    return;
                } catch (Exception e10) {
                    d.this.f203d.remove(this.f212b);
                    throw e10;
                }
            }
            throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + aVar + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
        }

        @Override // androidx.activity.result.b
        public void c() {
            d.this.p(this.f212b);
        }
    }

    public static final class f extends androidx.activity.result.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f215b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ d.a f216c;

        f(String str, d.a aVar) {
            this.f215b = str;
            this.f216c = aVar;
        }

        @Override // androidx.activity.result.b
        public void b(Object obj, androidx.core.app.b bVar) throws Exception {
            Object obj2 = d.this.f201b.get(this.f215b);
            d.a aVar = this.f216c;
            if (obj2 != null) {
                int iIntValue = ((Number) obj2).intValue();
                d.this.f203d.add(this.f215b);
                try {
                    d.this.i(iIntValue, this.f216c, obj, bVar);
                    return;
                } catch (Exception e10) {
                    d.this.f203d.remove(this.f215b);
                    throw e10;
                }
            }
            throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + aVar + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
        }

        @Override // androidx.activity.result.b
        public void c() {
            d.this.p(this.f215b);
        }
    }

    private final void d(int i10, String str) {
        this.f200a.put(Integer.valueOf(i10), str);
        this.f201b.put(str, Integer.valueOf(i10));
    }

    private final void g(String str, int i10, Intent intent, a aVar) {
        if ((aVar != null ? aVar.a() : null) == null || !this.f203d.contains(str)) {
            this.f205f.remove(str);
            this.f206g.putParcelable(str, new ActivityResult(i10, intent));
        } else {
            aVar.a().a(aVar.b().c(i10, intent));
            this.f203d.remove(str);
        }
    }

    private final int h() {
        for (Number number : i.e(C0003d.INSTANCE)) {
            if (!this.f200a.containsKey(Integer.valueOf(number.intValue()))) {
                return number.intValue();
            }
        }
        throw new NoSuchElementException("Sequence contains no element matching the predicate.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(d this$0, String key, androidx.activity.result.a callback, d.a contract, androidx.lifecycle.s sVar, l.a event) {
        r.e(this$0, "this$0");
        r.e(key, "$key");
        r.e(callback, "$callback");
        r.e(contract, "$contract");
        r.e(sVar, "<anonymous parameter 0>");
        r.e(event, "event");
        if (l.a.ON_START != event) {
            if (l.a.ON_STOP == event) {
                this$0.f204e.remove(key);
                return;
            } else {
                if (l.a.ON_DESTROY == event) {
                    this$0.p(key);
                    return;
                }
                return;
            }
        }
        this$0.f204e.put(key, new a(callback, contract));
        if (this$0.f205f.containsKey(key)) {
            Object obj = this$0.f205f.get(key);
            this$0.f205f.remove(key);
            callback.a(obj);
        }
        ActivityResult activityResult = (ActivityResult) z.b.a(this$0.f206g, key, ActivityResult.class);
        if (activityResult != null) {
            this$0.f206g.remove(key);
            callback.a(contract.c(activityResult.b(), activityResult.a()));
        }
    }

    private final void o(String str) {
        if (((Integer) this.f201b.get(str)) != null) {
            return;
        }
        d(h(), str);
    }

    public final boolean e(int i10, int i11, Intent intent) {
        String str = (String) this.f200a.get(Integer.valueOf(i10));
        if (str == null) {
            return false;
        }
        g(str, i11, intent, (a) this.f204e.get(str));
        return true;
    }

    public final boolean f(int i10, Object obj) {
        String str = (String) this.f200a.get(Integer.valueOf(i10));
        if (str == null) {
            return false;
        }
        a aVar = (a) this.f204e.get(str);
        if ((aVar != null ? aVar.a() : null) == null) {
            this.f206g.remove(str);
            this.f205f.put(str, obj);
            return true;
        }
        androidx.activity.result.a aVarA = aVar.a();
        r.c(aVarA, "null cannot be cast to non-null type androidx.activity.result.ActivityResultCallback<O of androidx.activity.result.ActivityResultRegistry.dispatchResult>");
        if (!this.f203d.remove(str)) {
            return true;
        }
        aVarA.a(obj);
        return true;
    }

    public abstract void i(int i10, d.a aVar, Object obj, androidx.core.app.b bVar);

    public final void j(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
        if (stringArrayList2 != null) {
            this.f203d.addAll(stringArrayList2);
        }
        Bundle bundle2 = bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
        if (bundle2 != null) {
            this.f206g.putAll(bundle2);
        }
        int size = stringArrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            String str = stringArrayList.get(i10);
            if (this.f201b.containsKey(str)) {
                Integer num = (Integer) this.f201b.remove(str);
                if (!this.f206g.containsKey(str)) {
                    i0.c(this.f200a).remove(num);
                }
            }
            Integer num2 = integerArrayList.get(i10);
            r.d(num2, "rcs[i]");
            int iIntValue = num2.intValue();
            String str2 = stringArrayList.get(i10);
            r.d(str2, "keys[i]");
            d(iIntValue, str2);
        }
    }

    public final void k(Bundle outState) {
        r.e(outState, "outState");
        outState.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(this.f201b.values()));
        outState.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(this.f201b.keySet()));
        outState.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(this.f203d));
        outState.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", new Bundle(this.f206g));
    }

    public final androidx.activity.result.b l(final String key, androidx.lifecycle.s lifecycleOwner, final d.a contract, final androidx.activity.result.a callback) {
        r.e(key, "key");
        r.e(lifecycleOwner, "lifecycleOwner");
        r.e(contract, "contract");
        r.e(callback, "callback");
        l lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.b().isAtLeast(l.b.STARTED)) {
            throw new IllegalStateException(("LifecycleOwner " + lifecycleOwner + " is attempting to register while current state is " + lifecycle.b() + ". LifecycleOwners must call register before they are STARTED.").toString());
        }
        o(key);
        c cVar = (c) this.f202c.get(key);
        if (cVar == null) {
            cVar = new c(lifecycle);
        }
        cVar.a(new p() { // from class: androidx.activity.result.c
            @Override // androidx.lifecycle.p
            public final void onStateChanged(androidx.lifecycle.s sVar, l.a aVar) {
                d.n(this.f195a, key, callback, contract, sVar, aVar);
            }
        });
        this.f202c.put(key, cVar);
        return new e(key, contract);
    }

    public final androidx.activity.result.b m(String key, d.a contract, androidx.activity.result.a callback) {
        r.e(key, "key");
        r.e(contract, "contract");
        r.e(callback, "callback");
        o(key);
        this.f204e.put(key, new a(callback, contract));
        if (this.f205f.containsKey(key)) {
            Object obj = this.f205f.get(key);
            this.f205f.remove(key);
            callback.a(obj);
        }
        ActivityResult activityResult = (ActivityResult) z.b.a(this.f206g, key, ActivityResult.class);
        if (activityResult != null) {
            this.f206g.remove(key);
            callback.a(contract.c(activityResult.b(), activityResult.a()));
        }
        return new f(key, contract);
    }

    public final void p(String key) {
        Integer num;
        r.e(key, "key");
        if (!this.f203d.contains(key) && (num = (Integer) this.f201b.remove(key)) != null) {
            this.f200a.remove(num);
        }
        this.f204e.remove(key);
        if (this.f205f.containsKey(key)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + key + ": " + this.f205f.get(key));
            this.f205f.remove(key);
        }
        if (this.f206g.containsKey(key)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + key + ": " + ((ActivityResult) z.b.a(this.f206g, key, ActivityResult.class)));
            this.f206g.remove(key);
        }
        c cVar = (c) this.f202c.get(key);
        if (cVar != null) {
            cVar.b();
            this.f202c.remove(key);
        }
    }
}
