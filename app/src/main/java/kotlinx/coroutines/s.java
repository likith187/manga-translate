package kotlinx.coroutines;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f13348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f13349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w8.l f13350c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f13351d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Throwable f13352e;

    public s(Object obj, h hVar, w8.l lVar, Object obj2, Throwable th) {
        this.f13348a = obj;
        this.f13349b = hVar;
        this.f13350c = lVar;
        this.f13351d = obj2;
        this.f13352e = th;
    }

    public static /* synthetic */ s b(s sVar, Object obj, h hVar, w8.l lVar, Object obj2, Throwable th, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = sVar.f13348a;
        }
        if ((i10 & 2) != 0) {
            hVar = sVar.f13349b;
        }
        h hVar2 = hVar;
        if ((i10 & 4) != 0) {
            lVar = sVar.f13350c;
        }
        w8.l lVar2 = lVar;
        if ((i10 & 8) != 0) {
            obj2 = sVar.f13351d;
        }
        Object obj4 = obj2;
        if ((i10 & 16) != 0) {
            th = sVar.f13352e;
        }
        return sVar.a(obj, hVar2, lVar2, obj4, th);
    }

    public final s a(Object obj, h hVar, w8.l lVar, Object obj2, Throwable th) {
        return new s(obj, hVar, lVar, obj2, th);
    }

    public final boolean c() {
        return this.f13352e != null;
    }

    public final void d(j jVar, Throwable th) {
        h hVar = this.f13349b;
        if (hVar != null) {
            jVar.n(hVar, th);
        }
        w8.l lVar = this.f13350c;
        if (lVar != null) {
            jVar.o(lVar, th);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return kotlin.jvm.internal.r.a(this.f13348a, sVar.f13348a) && kotlin.jvm.internal.r.a(this.f13349b, sVar.f13349b) && kotlin.jvm.internal.r.a(this.f13350c, sVar.f13350c) && kotlin.jvm.internal.r.a(this.f13351d, sVar.f13351d) && kotlin.jvm.internal.r.a(this.f13352e, sVar.f13352e);
    }

    public int hashCode() {
        Object obj = this.f13348a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        h hVar = this.f13349b;
        int iHashCode2 = (iHashCode + (hVar == null ? 0 : hVar.hashCode())) * 31;
        w8.l lVar = this.f13350c;
        int iHashCode3 = (iHashCode2 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        Object obj2 = this.f13351d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f13352e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public String toString() {
        return "CompletedContinuation(result=" + this.f13348a + ", cancelHandler=" + this.f13349b + ", onCancellation=" + this.f13350c + ", idempotentResume=" + this.f13351d + ", cancelCause=" + this.f13352e + ')';
    }

    public /* synthetic */ s(Object obj, h hVar, w8.l lVar, Object obj2, Throwable th, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i10 & 2) != 0 ? null : hVar, (i10 & 4) != 0 ? null : lVar, (i10 & 8) != 0 ? null : obj2, (i10 & 16) != 0 ? null : th);
    }
}
