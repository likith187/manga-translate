package com.google.android.gms.internal.mlkit_language_id_common;

import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import q4.c;

/* JADX INFO: loaded from: classes.dex */
final class m5 implements q4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final m5 f8520a = new m5();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final q4.c f8521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final q4.c f8522c;

    static {
        c.b bVarA = q4.c.a(RealTimeAsrInputSlot.KEY_LANGUAGE);
        j jVar = new j();
        jVar.a(1);
        f8521b = bVarA.b(jVar.b()).a();
        c.b bVarA2 = q4.c.a("inferenceCommonLogEvent");
        j jVar2 = new j();
        jVar2.a(2);
        f8522c = bVarA2.b(jVar2.b()).a();
    }

    private m5() {
    }

    @Override // q4.d
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        androidx.appcompat.app.t.a(obj);
        throw null;
    }
}
