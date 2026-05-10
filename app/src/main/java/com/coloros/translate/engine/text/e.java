package com.coloros.translate.engine.text;

import android.content.Context;
import com.coloros.translate.engine.IRegisterListener;
import com.coloros.translate.engine.ITranslateEngine;
import com.coloros.translate.engine.text.engine.i;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static final e INSTANCE = new e();

    private e() {
    }

    public final void a(IRegisterListener register) {
        r.e(register, "register");
        SupportLanguageManager.INSTANCE.g(register);
    }

    public final ITranslateEngine b(Context context, String type) {
        r.e(context, "context");
        r.e(type, "type");
        if (r.a(type, "aiunit_translate")) {
            Context applicationContext = context.getApplicationContext();
            r.d(applicationContext, "getApplicationContext(...)");
            return new i(applicationContext);
        }
        if (!r.a(type, "aiunit_stream_translate")) {
            return null;
        }
        Context applicationContext2 = context.getApplicationContext();
        r.d(applicationContext2, "getApplicationContext(...)");
        return new com.coloros.translate.engine.text.engine.d(applicationContext2);
    }

    public final void c(IRegisterListener register) {
        r.e(register, "register");
        SupportLanguageManager.INSTANCE.k(register);
    }

    public final void d(IRegisterListener messenger) {
        r.e(messenger, "messenger");
        SupportLanguageManager.INSTANCE.l(messenger);
    }
}
