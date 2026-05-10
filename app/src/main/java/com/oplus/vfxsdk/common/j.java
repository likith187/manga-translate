package com.oplus.vfxsdk.common;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class j {
    public static final j INSTANCE = new j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final n8.j f11276a = n8.k.b(a.INSTANCE);

    static final class a extends kotlin.jvm.internal.s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final ConcurrentHashMap<String, COEData> mo8invoke() {
            return new ConcurrentHashMap<>();
        }
    }

    private j() {
    }

    private final ConcurrentHashMap b() {
        return (ConcurrentHashMap) f11276a.getValue();
    }

    public final COEData a(String key) {
        kotlin.jvm.internal.r.e(key, "key");
        return (COEData) b().get(key);
    }

    public final void c(String key, COEData coeData) {
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(coeData, "coeData");
        b().put(key, coeData);
    }
}
