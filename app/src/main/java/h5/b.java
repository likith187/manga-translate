package h5;

import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.k;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f12242c = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Float f12243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f12244b;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Float f12245a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Executor f12246b;

        public b a() {
            return new b(this.f12245a, this.f12246b, null);
        }

        public a b(float f10) {
            boolean z10 = false;
            if (f10 >= 0.0f && f10 <= 1.0f) {
                z10 = true;
            }
            Float fValueOf = Float.valueOf(f10);
            k.c(z10, "Threshold value %f should be between 0 and 1", fValueOf);
            this.f12245a = fValueOf;
            return this;
        }
    }

    /* synthetic */ b(Float f10, Executor executor, d dVar) {
        this.f12243a = f10;
        this.f12244b = executor;
    }

    public Float a() {
        return this.f12243a;
    }

    public Executor b() {
        return this.f12244b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return j.a(bVar.f12243a, this.f12243a) && j.a(bVar.f12244b, this.f12244b);
    }

    public int hashCode() {
        return j.b(this.f12243a, this.f12244b);
    }
}
