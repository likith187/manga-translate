package c6;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f4312a = new ArrayList();

    void a(u uVar) {
        this.f4312a.add(uVar);
    }

    public void b(Path path) {
        for (int size = this.f4312a.size() - 1; size >= 0; size--) {
            l6.h.b(path, (u) this.f4312a.get(size));
        }
    }
}
