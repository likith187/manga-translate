package w2;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15986a;

    private b(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f15986a = str;
    }

    public static b b(String str) {
        return new b(str);
    }

    public String a() {
        return this.f15986a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f15986a.equals(((b) obj).f15986a);
        }
        return false;
    }

    public int hashCode() {
        return this.f15986a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Encoding{name=\"" + this.f15986a + "\"}";
    }
}
