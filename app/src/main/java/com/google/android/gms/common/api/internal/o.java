package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f7673a = Collections.synchronizedMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f7674b = Collections.synchronizedMap(new WeakHashMap());

    private final void f(boolean z10, Status status) {
        HashMap map;
        HashMap map2;
        synchronized (this.f7673a) {
            map = new HashMap(this.f7673a);
        }
        synchronized (this.f7674b) {
            map2 = new HashMap(this.f7674b);
        }
        for (Map.Entry entry : map.entrySet()) {
            if (z10 || ((Boolean) entry.getValue()).booleanValue()) {
                androidx.appcompat.app.t.a(entry.getKey());
                throw null;
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (z10 || ((Boolean) entry2.getValue()).booleanValue()) {
                ((w3.j) entry2.getKey()).d(new com.google.android.gms.common.api.b(status));
            }
        }
    }

    final void b(w3.j jVar, boolean z10) {
        this.f7674b.put(jVar, Boolean.valueOf(z10));
        jVar.a().b(new n(this, jVar));
    }

    final void c(int i10, String str) {
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i10 == 1) {
            sb.append(" due to service disconnection.");
        } else if (i10 == 3) {
            sb.append(" due to dead object exception.");
        }
        if (str != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(str);
        }
        f(true, new Status(20, sb.toString()));
    }

    public final void d() {
        f(false, e.f7620p);
    }

    final boolean e() {
        return (this.f7673a.isEmpty() && this.f7674b.isEmpty()) ? false : true;
    }
}
