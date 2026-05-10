package f5;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u4.b f11930a;

    public d(u4.b bVar) {
        this.f11930a = bVar;
    }

    public Executor a(Executor executor) {
        return executor != null ? executor : (Executor) this.f11930a.get();
    }
}
