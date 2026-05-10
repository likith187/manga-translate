package q0;

import android.os.Bundle;
import java.util.List;
import java.util.Map;
import kotlin.collections.j0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static Bundle a(Bundle source) {
        r.e(source, "source");
        return source;
    }

    public static final boolean b(Bundle bundle, String key) {
        r.e(key, "key");
        return bundle.containsKey(key);
    }

    public static final Bundle c(Bundle bundle, String key) {
        r.e(key, "key");
        Bundle bundle2 = bundle.getBundle(key);
        if (bundle2 != null) {
            return bundle2;
        }
        c.a(key);
        throw new n8.i();
    }

    public static final Bundle d(Bundle bundle, String key) {
        r.e(key, "key");
        return bundle.getBundle(key);
    }

    public static final List e(Bundle bundle, String key) {
        r.e(key, "key");
        return bundle.getStringArrayList(key);
    }

    public static final boolean f(Bundle bundle) {
        return bundle.isEmpty();
    }

    public static final Map g(Bundle bundle) {
        Map mapD = j0.d(bundle.size());
        for (String str : bundle.keySet()) {
            r.b(str);
            mapD.put(str, bundle.get(str));
        }
        return j0.b(mapD);
    }
}
