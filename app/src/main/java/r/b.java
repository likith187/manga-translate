package r;

import android.content.LocusId;
import c0.h;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LocusId f15385b;

    private static class a {
        static LocusId a(String str) {
            return new LocusId(str);
        }
    }

    public b(String str) {
        this.f15384a = (String) h.h(str, "id cannot be empty");
        this.f15385b = a.a(str);
    }

    private String a() {
        return this.f15384a.length() + "_chars";
    }

    public LocusId b() {
        return this.f15385b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        String str = this.f15384a;
        return str == null ? bVar.f15384a == null : str.equals(bVar.f15384a);
    }

    public int hashCode() {
        String str = this.f15384a;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "LocusIdCompat[" + a() + "]";
    }
}
