package u2;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final g f15857b = new g(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f15858a = new HashMap();

    g(boolean z10) {
        if (z10) {
            a(f.f15854c, "default config");
        }
    }

    public static g c() {
        return f15857b;
    }

    public boolean a(f fVar, String str) {
        if (fVar == null) {
            throw new IllegalArgumentException("springConfig is required");
        }
        if (str == null) {
            throw new IllegalArgumentException("configName is required");
        }
        if (this.f15858a.containsKey(fVar)) {
            return false;
        }
        this.f15858a.put(fVar, str);
        return true;
    }

    public Map b() {
        return Collections.unmodifiableMap(this.f15858a);
    }
}
