package q0;

import android.os.Bundle;
import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {
    public static Bundle a(Bundle source) {
        r.e(source, "source");
        return source;
    }

    public static final void b(Bundle bundle, Bundle from) {
        r.e(from, "from");
        bundle.putAll(from);
    }

    public static final void c(Bundle bundle, String key, Bundle value) {
        r.e(key, "key");
        r.e(value, "value");
        bundle.putBundle(key, value);
    }

    public static final void d(Bundle bundle, String key, List value) {
        r.e(key, "key");
        r.e(value, "value");
        bundle.putStringArrayList(key, j.a(value));
    }

    public static final void e(Bundle bundle, String key) {
        r.e(key, "key");
        bundle.remove(key);
    }
}
