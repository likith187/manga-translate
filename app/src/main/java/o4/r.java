package o4;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map.Entry f14428a;

    private r(Map.Entry entry, t4.a aVar) {
        this.f14428a = entry;
    }

    public static Runnable a(Map.Entry entry, t4.a aVar) {
        return new r(entry, aVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        s.c(this.f14428a, null);
    }
}
