package com.google.gson;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class l extends i {

    /* JADX INFO: renamed from: a */
    private final com.google.gson.internal.h f10759a = new com.google.gson.internal.h(false);

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof l) && ((l) obj).f10759a.equals(this.f10759a));
    }

    public int hashCode() {
        return this.f10759a.hashCode();
    }

    public void m(String str, i iVar) {
        com.google.gson.internal.h hVar = this.f10759a;
        if (iVar == null) {
            iVar = k.INSTANCE;
        }
        hVar.put(str, iVar);
    }

    public void n(String str, String str2) {
        m(str, str2 == null ? k.INSTANCE : new o(str2));
    }

    public Set o() {
        return this.f10759a.entrySet();
    }

    public i p(String str) {
        return (i) this.f10759a.get(str);
    }

    public f q(String str) {
        return (f) this.f10759a.get(str);
    }

    public boolean r(String str) {
        return this.f10759a.containsKey(str);
    }
}
