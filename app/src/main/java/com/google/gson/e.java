package com.google.gson;

import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import w4.d;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.gson.internal.d f10679a = com.google.gson.internal.d.f10717j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private r f10680b = r.DEFAULT;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f10681c = b.IDENTITY;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f10682d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f10683e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f10684f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f10685g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f10686h = d.f10648z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f10687i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f10688j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f10689k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f10690l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f10691m = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f10692n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f10693o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f10694p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f10695q = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private u f10696r = d.B;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private u f10697s = d.C;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final LinkedList f10698t = new LinkedList();

    private void a(String str, int i10, int i11, List list) {
        w wVarB;
        w wVarB2;
        boolean z10 = z4.d.f16643a;
        w wVarA = null;
        if (str != null && !str.trim().isEmpty()) {
            wVarB = d.b.f16029b.b(str);
            if (z10) {
                wVarA = z4.d.f16645c.b(str);
                wVarB2 = z4.d.f16644b.b(str);
            } else {
                wVarB2 = null;
            }
        } else {
            if (i10 == 2 || i11 == 2) {
                return;
            }
            w wVarA2 = d.b.f16029b.a(i10, i11);
            if (z10) {
                wVarA = z4.d.f16645c.a(i10, i11);
                w wVarA3 = z4.d.f16644b.a(i10, i11);
                wVarB = wVarA2;
                wVarB2 = wVarA3;
            } else {
                wVarB = wVarA2;
                wVarB2 = null;
            }
        }
        list.add(wVarB);
        if (z10) {
            list.add(wVarA);
            list.add(wVarB2);
        }
    }

    public d b() {
        ArrayList arrayList = new ArrayList(this.f10683e.size() + this.f10684f.size() + 3);
        arrayList.addAll(this.f10683e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f10684f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        a(this.f10686h, this.f10687i, this.f10688j, arrayList);
        return new d(this.f10679a, this.f10681c, new HashMap(this.f10682d), this.f10685g, this.f10689k, this.f10693o, this.f10691m, this.f10692n, this.f10694p, this.f10690l, this.f10695q, this.f10680b, this.f10686h, this.f10687i, this.f10688j, new ArrayList(this.f10683e), new ArrayList(this.f10684f), arrayList, this.f10696r, this.f10697s, new ArrayList(this.f10698t));
    }

    public e c(Type type, Object obj) {
        Objects.requireNonNull(type);
        com.google.gson.internal.a.a((obj instanceof h) || (obj instanceof v));
        if (obj instanceof h) {
            this.f10683e.add(w4.m.g(TypeToken.get(type), obj));
        }
        if (obj instanceof v) {
            this.f10683e.add(w4.o.a(TypeToken.get(type), (v) obj));
        }
        return this;
    }

    public e d() {
        this.f10690l = true;
        return this;
    }

    public e e() {
        this.f10692n = true;
        return this;
    }
}
