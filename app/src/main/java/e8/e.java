package e8;

import com.oplus.vfxsdk.common.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public interface e {

    public static final class a {
        public static void a(e eVar, o oVar, String key, Object value, int i10) {
            r.e(key, "key");
            r.e(value, "value");
            eVar.b(key, value);
        }
    }

    void a(o oVar, String str, Object obj, int i10);

    void b(String str, Object obj);
}
