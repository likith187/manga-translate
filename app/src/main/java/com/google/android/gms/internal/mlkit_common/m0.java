package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import com.oplus.backup.sdk.common.plugin.BRPluginConfigParser;

/* JADX INFO: loaded from: classes.dex */
public final class m0 implements a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private u4.b f8098a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u4.b f8099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d0 f8100c;

    public m0(Context context, d0 d0Var) {
        this.f8100c = d0Var;
        com.google.android.datatransport.cct.a aVar = com.google.android.datatransport.cct.a.INSTANCE;
        y2.r.f(context);
        final w2.g gVarG = y2.r.c().g(aVar);
        if (aVar.a().contains(w2.b.b(BRPluginConfigParser.JSON_ENCODE))) {
            this.f8098a = new o4.u(new u4.b() { // from class: com.google.android.gms.internal.mlkit_common.j0
                @Override // u4.b
                public final Object get() {
                    return gVarG.a("FIREBASE_ML_SDK", byte[].class, w2.b.b(BRPluginConfigParser.JSON_ENCODE), new w2.e() { // from class: com.google.android.gms.internal.mlkit_common.l0
                        @Override // w2.e
                        public final Object apply(Object obj) {
                            return (byte[]) obj;
                        }
                    });
                }
            });
        }
        this.f8099b = new o4.u(new u4.b() { // from class: com.google.android.gms.internal.mlkit_common.k0
            @Override // u4.b
            public final Object get() {
                return gVarG.a("FIREBASE_ML_SDK", byte[].class, w2.b.b("proto"), new w2.e() { // from class: com.google.android.gms.internal.mlkit_common.i0
                    @Override // w2.e
                    public final Object apply(Object obj) {
                        return (byte[]) obj;
                    }
                });
            }
        });
    }
}
