package i1;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f12386a = new ArrayList();

    void a(u uVar) {
        this.f12386a.add(uVar);
    }

    public void b(Path path) {
        for (int size = this.f12386a.size() - 1; size >= 0; size--) {
            r1.j.b(path, (u) this.f12386a.get(size));
        }
    }
}
