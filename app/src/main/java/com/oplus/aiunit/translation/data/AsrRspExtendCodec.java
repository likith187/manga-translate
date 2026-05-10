package com.oplus.aiunit.translation.data;

import android.util.Log;
import com.google.gson.d;
import java.util.ArrayList;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes2.dex */
public final class AsrRspExtendCodec {
    private String riskCode;
    private ArrayList<SensitiveWordFilter> riskWords;

    public final String encodeAsrRspExtend() {
        try {
            r.a aVar = r.Companion;
            String strV = new d().v(this);
            kotlin.jvm.internal.r.d(strV, "toJson(...)");
            return strV;
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(r.m59constructorimpl(s.a(th)));
            if (thM62exceptionOrNullimpl == null) {
                return "";
            }
            Log.e("RealtimeAsr-AsrRspExtendCodec", "parseAsrRspExtend error: " + thM62exceptionOrNullimpl.getMessage());
            return "";
        }
    }

    public final String getRiskCode() {
        return this.riskCode;
    }

    public final ArrayList<SensitiveWordFilter> getRiskWords() {
        return this.riskWords;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.Map<java.lang.String, java.lang.Object> parseAsrRspExtend(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r3 = "jsonString"
            kotlin.jvm.internal.r.e(r4, r3)
            java.util.LinkedHashMap r3 = new java.util.LinkedHashMap
            r3.<init>()
            int r0 = r4.length()
            r1 = 0
            if (r0 <= 0) goto L6d
            n8.r$a r0 = n8.r.Companion     // Catch: java.lang.Throwable -> L2f
            com.google.gson.d r0 = new com.google.gson.d     // Catch: java.lang.Throwable -> L2f
            r0.<init>()     // Catch: java.lang.Throwable -> L2f
            java.lang.Class<com.oplus.aiunit.translation.data.AsrRspExtendCodec> r2 = com.oplus.aiunit.translation.data.AsrRspExtendCodec.class
            java.lang.Object r4 = r0.m(r4, r2)     // Catch: java.lang.Throwable -> L2f
            com.oplus.aiunit.translation.data.AsrRspExtendCodec r4 = (com.oplus.aiunit.translation.data.AsrRspExtendCodec) r4     // Catch: java.lang.Throwable -> L2f
            if (r4 == 0) goto L3d
            kotlin.jvm.internal.r.b(r4)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r0 = r4.riskCode     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L31
            java.lang.String r2 = "extend_risk_code"
            r3.put(r2, r0)     // Catch: java.lang.Throwable -> L2f
            goto L31
        L2f:
            r4 = move-exception
            goto L43
        L31:
            java.util.ArrayList<com.oplus.aiunit.translation.data.SensitiveWordFilter> r4 = r4.riskWords     // Catch: java.lang.Throwable -> L2f
            if (r4 == 0) goto L3d
            java.lang.String r0 = "extend_risk_words"
            r3.put(r0, r4)     // Catch: java.lang.Throwable -> L2f
            n8.h0 r4 = n8.h0.INSTANCE     // Catch: java.lang.Throwable -> L2f
            goto L3e
        L3d:
            r4 = r1
        L3e:
            java.lang.Object r4 = n8.r.m59constructorimpl(r4)     // Catch: java.lang.Throwable -> L2f
            goto L4d
        L43:
            n8.r$a r0 = n8.r.Companion
            java.lang.Object r4 = n8.s.a(r4)
            java.lang.Object r4 = n8.r.m59constructorimpl(r4)
        L4d:
            java.lang.Throwable r4 = n8.r.m62exceptionOrNullimpl(r4)
            if (r4 == 0) goto L6d
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "parseAsrRspExtend error: "
            r0.append(r2)
            java.lang.String r4 = r4.getMessage()
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            java.lang.String r0 = "RealtimeAsr-AsrRspExtendCodec"
            android.util.Log.e(r0, r4)
        L6d:
            int r4 = r3.size()
            if (r4 <= 0) goto L74
            goto L75
        L74:
            r3 = r1
        L75:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.aiunit.translation.data.AsrRspExtendCodec.parseAsrRspExtend(java.lang.String):java.util.Map");
    }

    public final void setRiskCode(String str) {
        this.riskCode = str;
    }

    public final void setRiskWords(ArrayList<SensitiveWordFilter> arrayList) {
        this.riskWords = arrayList;
    }
}
