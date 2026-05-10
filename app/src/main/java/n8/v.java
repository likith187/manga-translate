package n8;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class v implements Serializable {
    private final Object first;
    private final Object second;
    private final Object third;

    public v(Object obj, Object obj2, Object obj3) {
        this.first = obj;
        this.second = obj2;
        this.third = obj3;
    }

    public static /* synthetic */ v copy$default(v vVar, Object obj, Object obj2, Object obj3, int i10, Object obj4) {
        if ((i10 & 1) != 0) {
            obj = vVar.first;
        }
        if ((i10 & 2) != 0) {
            obj2 = vVar.second;
        }
        if ((i10 & 4) != 0) {
            obj3 = vVar.third;
        }
        return vVar.copy(obj, obj2, obj3);
    }

    public final Object component1() {
        return this.first;
    }

    public final Object component2() {
        return this.second;
    }

    public final Object component3() {
        return this.third;
    }

    public final v copy(Object obj, Object obj2, Object obj3) {
        return new v(obj, obj2, obj3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return kotlin.jvm.internal.r.a(this.first, vVar.first) && kotlin.jvm.internal.r.a(this.second, vVar.second) && kotlin.jvm.internal.r.a(this.third, vVar.third);
    }

    public final Object getFirst() {
        return this.first;
    }

    public final Object getSecond() {
        return this.second;
    }

    public final Object getThird() {
        return this.third;
    }

    public int hashCode() {
        Object obj = this.first;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.second;
        int iHashCode2 = (iHashCode + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.third;
        return iHashCode2 + (obj3 != null ? obj3.hashCode() : 0);
    }

    public String toString() {
        return '(' + this.first + ", " + this.second + ", " + this.third + ')';
    }
}
