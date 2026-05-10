package f6;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c f11987b = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.collection.h f11988a = new androidx.collection.h(20);

    c() {
    }

    public static c b() {
        return f11987b;
    }

    public com.oplus.anim.a a(String str) {
        if (str == null) {
            return null;
        }
        return (com.oplus.anim.a) this.f11988a.get(str);
    }

    public void c(String str, com.oplus.anim.a aVar) {
        if (str == null) {
            return;
        }
        this.f11988a.put(str, aVar);
    }
}
