package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a */
    private final Account f7859a;

    /* JADX INFO: renamed from: b */
    private final Set f7860b;

    /* JADX INFO: renamed from: c */
    private final Set f7861c;

    /* JADX INFO: renamed from: d */
    private final Map f7862d;

    /* JADX INFO: renamed from: e */
    private final int f7863e;

    /* JADX INFO: renamed from: f */
    private final View f7864f;

    /* JADX INFO: renamed from: g */
    private final String f7865g;

    /* JADX INFO: renamed from: h */
    private final String f7866h;

    /* JADX INFO: renamed from: i */
    private final v3.a f7867i;

    /* JADX INFO: renamed from: j */
    private Integer f7868j;

    public static final class a {

        /* JADX INFO: renamed from: a */
        private Account f7869a;

        /* JADX INFO: renamed from: b */
        private androidx.collection.b f7870b;

        /* JADX INFO: renamed from: c */
        private String f7871c;

        /* JADX INFO: renamed from: d */
        private String f7872d;

        /* JADX INFO: renamed from: e */
        private final v3.a f7873e = v3.a.f15925m;

        public e a() {
            return new e(this.f7869a, this.f7870b, null, 0, null, this.f7871c, this.f7872d, this.f7873e, false);
        }

        public a b(String str) {
            this.f7871c = str;
            return this;
        }

        public final a c(Collection collection) {
            if (this.f7870b == null) {
                this.f7870b = new androidx.collection.b();
            }
            this.f7870b.addAll(collection);
            return this;
        }

        public final a d(Account account) {
            this.f7869a = account;
            return this;
        }

        public final a e(String str) {
            this.f7872d = str;
            return this;
        }
    }

    public e(Account account, Set set, Map map, int i10, View view, String str, String str2, v3.a aVar, boolean z10) {
        this.f7859a = account;
        Set setEmptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f7860b = setEmptySet;
        map = map == null ? Collections.emptyMap() : map;
        this.f7862d = map;
        this.f7864f = view;
        this.f7863e = i10;
        this.f7865g = str;
        this.f7866h = str2;
        this.f7867i = aVar == null ? v3.a.f15925m : aVar;
        HashSet hashSet = new HashSet(setEmptySet);
        Iterator it = map.values().iterator();
        if (it.hasNext()) {
            androidx.appcompat.app.t.a(it.next());
            throw null;
        }
        this.f7861c = Collections.unmodifiableSet(hashSet);
    }

    public Account a() {
        return this.f7859a;
    }

    public Account b() {
        Account account = this.f7859a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    public Set c() {
        return this.f7861c;
    }

    public String d() {
        return this.f7865g;
    }

    public Set e() {
        return this.f7860b;
    }

    public final v3.a f() {
        return this.f7867i;
    }

    public final Integer g() {
        return this.f7868j;
    }

    public final String h() {
        return this.f7866h;
    }

    public final void i(Integer num) {
        this.f7868j = num;
    }
}
