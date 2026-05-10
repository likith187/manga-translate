package y1;

import android.content.Context;
import com.coloros.translate.engine.asr.voicetranslate.c;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a INSTANCE = new a();

    private a() {
    }

    public static final b a(Context context, int i10, boolean z10) {
        r.e(context, "context");
        if (i10 == 2 && c.C.a(context)) {
            return new c(context, z10);
        }
        return null;
    }
}
