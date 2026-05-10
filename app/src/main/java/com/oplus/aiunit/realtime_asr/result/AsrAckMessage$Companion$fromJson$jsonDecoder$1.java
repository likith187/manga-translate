package com.oplus.aiunit.realtime_asr.result;

import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlinx.serialization.json.JsonBuilder;
import n8.h0;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class AsrAckMessage$Companion$fromJson$jsonDecoder$1 extends s implements l {
    public static final AsrAckMessage$Companion$fromJson$jsonDecoder$1 INSTANCE = new AsrAckMessage$Companion$fromJson$jsonDecoder$1();

    public AsrAckMessage$Companion$fromJson$jsonDecoder$1() {
        super(1);
    }

    @Override // w8.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((JsonBuilder) obj);
        return h0.INSTANCE;
    }

    public final void invoke(JsonBuilder Json) {
        r.e(Json, "$this$Json");
        Json.setIgnoreUnknownKeys(true);
    }
}
