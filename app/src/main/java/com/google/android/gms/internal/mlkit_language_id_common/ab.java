package com.google.android.gms.internal.mlkit_language_id_common;

import android.content.Context;
import com.oplus.backup.sdk.common.plugin.BRPluginConfigParser;

/* JADX INFO: loaded from: classes.dex */
public final class ab implements ra {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private u4.b f8141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u4.b f8142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ma f8143c;

    public ab(Context context, ma maVar) {
        this.f8143c = maVar;
        com.google.android.datatransport.cct.a aVar = com.google.android.datatransport.cct.a.INSTANCE;
        y2.r.f(context);
        final w2.g gVarG = y2.r.c().g(aVar);
        if (aVar.a().contains(w2.b.b(BRPluginConfigParser.JSON_ENCODE))) {
            this.f8141a = new o4.u(new u4.b() { // from class: com.google.android.gms.internal.mlkit_language_id_common.xa
                @Override // u4.b
                public final Object get() {
                    return gVarG.a("FIREBASE_ML_SDK", byte[].class, w2.b.b(BRPluginConfigParser.JSON_ENCODE), new w2.e() { // from class: com.google.android.gms.internal.mlkit_language_id_common.za
                        @Override // w2.e
                        public final Object apply(Object obj) {
                            return (byte[]) obj;
                        }
                    });
                }
            });
        }
        this.f8142b = new o4.u(new u4.b() { // from class: com.google.android.gms.internal.mlkit_language_id_common.ya
            @Override // u4.b
            public final Object get() {
                return gVarG.a("FIREBASE_ML_SDK", byte[].class, w2.b.b("proto"), new w2.e() { // from class: com.google.android.gms.internal.mlkit_language_id_common.wa
                    @Override // w2.e
                    public final Object apply(Object obj) {
                        return (byte[]) obj;
                    }
                });
            }
        });
    }

    static w2.c b(ma maVar, ka kaVar) {
        int iA = maVar.a();
        return kaVar.zza() != 0 ? w2.c.d(kaVar.b(iA, false)) : w2.c.e(kaVar.b(iA, false));
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ra
    public final void a(ka kaVar) {
        if (this.f8143c.a() != 0) {
            ((w2.f) this.f8142b.get()).a(b(this.f8143c, kaVar));
            return;
        }
        u4.b bVar = this.f8141a;
        if (bVar != null) {
            ((w2.f) bVar.get()).a(b(this.f8143c, kaVar));
        }
    }
}
