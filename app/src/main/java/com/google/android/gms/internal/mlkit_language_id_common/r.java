package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class r implements r4.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final q4.d f8638d = new q4.d() { // from class: com.google.android.gms.internal.mlkit_language_id_common.q
        @Override // q4.d
        public final void a(Object obj, Object obj2) {
            int i10 = r.f8639e;
            throw new q4.b("Couldn't find encoder for type ".concat(String.valueOf(obj.getClass().getCanonicalName())));
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f8639e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f8640a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f8641b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q4.d f8642c = f8638d;

    @Override // r4.b
    public final /* bridge */ /* synthetic */ r4.b a(Class cls, q4.d dVar) {
        this.f8640a.put(cls, dVar);
        this.f8641b.remove(cls);
        return this;
    }

    public final s b() {
        return new s(new HashMap(this.f8640a), new HashMap(this.f8641b), this.f8642c);
    }
}
