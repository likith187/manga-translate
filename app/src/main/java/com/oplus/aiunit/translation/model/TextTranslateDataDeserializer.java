package com.oplus.aiunit.translation.model;

import com.google.gson.g;
import com.google.gson.h;
import com.google.gson.i;
import com.google.gson.l;
import java.lang.reflect.Type;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class TextTranslateDataDeserializer implements h {
    @Override // com.google.gson.h
    public TextTranslateData deserialize(i json, Type typeOfT, g context) {
        r.e(json, "json");
        r.e(typeOfT, "typeOfT");
        r.e(context, "context");
        l lVarE = json.e();
        i iVarP = lVarE.p("sourceText");
        String strH = iVarP != null ? iVarP.h() : null;
        if (strH == null) {
            strH = "";
        }
        i iVarP2 = lVarE.p("translateText");
        String strH2 = iVarP2 != null ? iVarP2.h() : null;
        String str = strH2 != null ? strH2 : "";
        i iVarP3 = lVarE.p("ifSafe");
        return new TextTranslateData(strH, str, iVarP3 != null ? iVarP3.a() : true);
    }
}
