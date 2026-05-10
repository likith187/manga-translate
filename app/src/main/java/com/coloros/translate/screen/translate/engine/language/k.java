package com.coloros.translate.screen.translate.engine.language;

import com.coloros.translate.utils.c0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n8.h0;
import n8.r;
import n8.s;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    public static final k INSTANCE = new k();

    private k() {
    }

    public final List a(String str) {
        Object objM59constructorimpl;
        ArrayList arrayList = new ArrayList();
        if (str != null && str.length() != 0) {
            try {
                r.a aVar = r.Companion;
                Iterator<String> itKeys = new JSONObject(str).getJSONObject("screenTranslate").keys();
                kotlin.jvm.internal.r.d(itKeys, "keys(...)");
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    kotlin.jvm.internal.r.b(next);
                    arrayList.add(next);
                }
                objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("LanguageParseHelper", "onFailure:" + thM62exceptionOrNullimpl);
            }
        }
        return arrayList;
    }
}
