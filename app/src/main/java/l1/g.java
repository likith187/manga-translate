package l1;

import com.airbnb.lottie.j;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final g f13567b = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.collection.h f13568a = new androidx.collection.h(20);

    g() {
    }

    public static g b() {
        return f13567b;
    }

    public j a(String str) {
        if (str == null) {
            return null;
        }
        return (j) this.f13568a.get(str);
    }

    public void c(String str, j jVar) {
        if (str == null) {
            return;
        }
        this.f13568a.put(str, jVar);
    }
}
