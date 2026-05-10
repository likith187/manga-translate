package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class f extends i implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f10699a = new ArrayList();

    private i o() {
        int size = this.f10699a.size();
        if (size == 1) {
            return (i) this.f10699a.get(0);
        }
        throw new IllegalStateException("Array must have size 1, but has size " + size);
    }

    @Override // com.google.gson.i
    public boolean a() {
        return o().a();
    }

    @Override // com.google.gson.i
    public double b() {
        return o().b();
    }

    @Override // com.google.gson.i
    public int c() {
        return o().c();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof f) && ((f) obj).f10699a.equals(this.f10699a));
    }

    @Override // com.google.gson.i
    public long g() {
        return o().g();
    }

    @Override // com.google.gson.i
    public String h() {
        return o().h();
    }

    public int hashCode() {
        return this.f10699a.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return this.f10699a.iterator();
    }

    public void m(i iVar) {
        if (iVar == null) {
            iVar = k.INSTANCE;
        }
        this.f10699a.add(iVar);
    }

    public i n(int i10) {
        return (i) this.f10699a.get(i10);
    }

    public int size() {
        return this.f10699a.size();
    }
}
