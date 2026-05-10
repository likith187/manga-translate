package o9;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import t9.g;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f14472d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final t9.g f14473e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final t9.g f14474f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final t9.g f14475g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final t9.g f14476h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final t9.g f14477i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final t9.g f14478j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t9.g f14479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t9.g f14480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14481c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static {
        g.a aVar = t9.g.Companion;
        f14473e = aVar.d(":");
        f14474f = aVar.d(":status");
        f14475g = aVar.d(":method");
        f14476h = aVar.d(":path");
        f14477i = aVar.d(":scheme");
        f14478j = aVar.d(":authority");
    }

    public c(t9.g name, t9.g value) {
        r.e(name, "name");
        r.e(value, "value");
        this.f14479a = name;
        this.f14480b = value;
        this.f14481c = name.size() + 32 + value.size();
    }

    public final t9.g a() {
        return this.f14479a;
    }

    public final t9.g b() {
        return this.f14480b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return r.a(this.f14479a, cVar.f14479a) && r.a(this.f14480b, cVar.f14480b);
    }

    public int hashCode() {
        return (this.f14479a.hashCode() * 31) + this.f14480b.hashCode();
    }

    public String toString() {
        return this.f14479a.utf8() + ": " + this.f14480b.utf8();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public c(String name, String value) {
        r.e(name, "name");
        r.e(value, "value");
        g.a aVar = t9.g.Companion;
        this(aVar.d(name), aVar.d(value));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(t9.g name, String value) {
        this(name, t9.g.Companion.d(value));
        r.e(name, "name");
        r.e(value, "value");
    }
}
