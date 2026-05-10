package i8;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f12662a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f12663b;

    public a(int i10, String str) {
        this.f12662a = i10;
        this.f12663b = str;
    }

    public final int a() {
        return this.f12662a;
    }

    public final String b() {
        return this.f12663b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f12662a == aVar.f12662a && r.a(this.f12663b, aVar.f12663b);
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.f12662a) * 31;
        String str = this.f12663b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "COEOptions(caps=" + this.f12662a + ", renderThreadName=" + this.f12663b + ")";
    }

    public /* synthetic */ a(int i10, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10, (i11 & 2) != 0 ? null : str);
    }
}
