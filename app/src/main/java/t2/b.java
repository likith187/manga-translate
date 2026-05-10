package t2;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f15689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f15690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f15691c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private EnumC0223b f15692d;

    public enum a {
        FOLD("fd"),
        UNFOLDING("fding"),
        UNFOLD("ufd"),
        UNKNOWN("unknown");

        private String mName;

        a(String str) {
            this.mName = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.mName;
        }
    }

    /* JADX INFO: renamed from: t2.b$b, reason: collision with other inner class name */
    public enum EnumC0223b {
        SMALL,
        MEDIUM,
        LARGE
    }

    public b(a aVar, c cVar, int i10, EnumC0223b enumC0223b) {
        this.f15689a = aVar;
        this.f15691c = cVar;
        this.f15690b = i10;
        this.f15692d = enumC0223b;
    }

    public int a() {
        return this.f15690b;
    }

    public c b() {
        return this.f15691c;
    }

    public a c() {
        return this.f15689a;
    }

    public EnumC0223b d() {
        return this.f15692d;
    }

    void e(c cVar) {
        this.f15691c = cVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f15690b == bVar.f15690b && this.f15689a == bVar.f15689a && Objects.equals(this.f15691c, bVar.f15691c);
    }

    void f(a aVar) {
        this.f15689a = aVar;
    }

    void g(EnumC0223b enumC0223b) {
        this.f15692d = enumC0223b;
    }

    public int hashCode() {
        return Objects.hash(this.f15689a, Integer.valueOf(this.f15690b), this.f15691c);
    }

    public String toString() {
        return "UIConfig{mStatus= " + this.f15689a + ", mOrientation=" + this.f15690b + ", mScreenSize=" + this.f15691c + ", mWindowType=" + this.f15692d + "}";
    }
}
