package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends d implements a.f {
    private final e F;
    private final Set G;
    private final Account H;

    protected f(Context context, Looper looper, int i10, e eVar, e.a aVar, e.b bVar) {
        this(context, looper, i10, eVar, (com.google.android.gms.common.api.internal.d) aVar, (com.google.android.gms.common.api.internal.j) bVar);
    }

    private final Set h0(Set set) {
        Set setG0 = g0(set);
        Iterator it = setG0.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return setG0;
    }

    @Override // com.google.android.gms.common.internal.d
    protected final Set A() {
        return this.G;
    }

    @Override // com.google.android.gms.common.api.a.f
    public Set b() {
        return n() ? this.G : Collections.emptySet();
    }

    protected Set g0(Set set) {
        return set;
    }

    @Override // com.google.android.gms.common.internal.d
    public final Account s() {
        return this.H;
    }

    @Override // com.google.android.gms.common.internal.d
    protected Executor u() {
        return null;
    }

    protected f(Context context, Looper looper, int i10, e eVar, com.google.android.gms.common.api.internal.d dVar, com.google.android.gms.common.api.internal.j jVar) {
        this(context, looper, g.a(context), com.google.android.gms.common.a.l(), i10, eVar, (com.google.android.gms.common.api.internal.d) k.g(dVar), (com.google.android.gms.common.api.internal.j) k.g(jVar));
    }

    protected f(Context context, Looper looper, g gVar, com.google.android.gms.common.a aVar, int i10, e eVar, com.google.android.gms.common.api.internal.d dVar, com.google.android.gms.common.api.internal.j jVar) {
        super(context, looper, gVar, aVar, i10, dVar == null ? null : new x(dVar), jVar == null ? null : new y(jVar), eVar.h());
        this.F = eVar;
        this.H = eVar.a();
        this.G = h0(eVar.c());
    }
}
