package z2;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
final class c extends h {

    /* JADX INFO: renamed from: a */
    private final Context f16617a;

    /* JADX INFO: renamed from: b */
    private final h3.a f16618b;

    /* JADX INFO: renamed from: c */
    private final h3.a f16619c;

    /* JADX INFO: renamed from: d */
    private final String f16620d;

    c(Context context, h3.a aVar, h3.a aVar2, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f16617a = context;
        if (aVar == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f16618b = aVar;
        if (aVar2 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f16619c = aVar2;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f16620d = str;
    }

    @Override // z2.h
    public Context b() {
        return this.f16617a;
    }

    @Override // z2.h
    public String c() {
        return this.f16620d;
    }

    @Override // z2.h
    public h3.a d() {
        return this.f16619c;
    }

    @Override // z2.h
    public h3.a e() {
        return this.f16618b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f16617a.equals(hVar.b()) && this.f16618b.equals(hVar.e()) && this.f16619c.equals(hVar.d()) && this.f16620d.equals(hVar.c());
    }

    public int hashCode() {
        return this.f16620d.hashCode() ^ ((((((this.f16617a.hashCode() ^ 1000003) * 1000003) ^ this.f16618b.hashCode()) * 1000003) ^ this.f16619c.hashCode()) * 1000003);
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f16617a + ", wallClock=" + this.f16618b + ", monotonicClock=" + this.f16619c + ", backendName=" + this.f16620d + "}";
    }
}
