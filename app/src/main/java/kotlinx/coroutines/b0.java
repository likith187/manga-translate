package kotlinx.coroutines;

import kotlin.coroutines.g;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class b0 extends kotlin.coroutines.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f13173c = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f13174b;

    public static final class a implements g.c {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b0(String str) {
        super(f13173c);
        this.f13174b = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b0) && kotlin.jvm.internal.r.a(this.f13174b, ((b0) obj).f13174b);
    }

    public int hashCode() {
        return this.f13174b.hashCode();
    }

    public String toString() {
        return "CoroutineName(" + this.f13174b + ')';
    }
}
