package androidx.window.layout;

import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class WindowLayoutInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f4163a;

    public WindowLayoutInfo(List displayFeatures) {
        r.e(displayFeatures, "displayFeatures");
        this.f4163a = displayFeatures;
    }

    public final List a() {
        return this.f4163a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !r.a(WindowLayoutInfo.class, obj.getClass())) {
            return false;
        }
        return r.a(this.f4163a, ((WindowLayoutInfo) obj).f4163a);
    }

    public int hashCode() {
        return this.f4163a.hashCode();
    }

    public String toString() {
        return o.a0(this.f4163a, ", ", "WindowLayoutInfo{ DisplayFeatures[", "] }", 0, null, null, 56, null);
    }
}
