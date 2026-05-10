package n8;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements Serializable {
    private final Object first;
    private final Object second;

    public q(Object obj, Object obj2) {
        this.first = obj;
        this.second = obj2;
    }

    public static /* synthetic */ q copy$default(q qVar, Object obj, Object obj2, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = qVar.first;
        }
        if ((i10 & 2) != 0) {
            obj2 = qVar.second;
        }
        return qVar.copy(obj, obj2);
    }

    public final Object component1() {
        return this.first;
    }

    public final Object component2() {
        return this.second;
    }

    public final q copy(Object obj, Object obj2) {
        return new q(obj, obj2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return kotlin.jvm.internal.r.a(this.first, qVar.first) && kotlin.jvm.internal.r.a(this.second, qVar.second);
    }

    public final Object getFirst() {
        return this.first;
    }

    public final Object getSecond() {
        return this.second;
    }

    public int hashCode() {
        Object obj = this.first;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.second;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return '(' + this.first + ", " + this.second + ')';
    }
}
