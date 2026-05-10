package g6;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
abstract class n implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List f12109a;

    n(List list) {
        this.f12109a = list;
    }

    @Override // g6.m
    public List b() {
        return this.f12109a;
    }

    @Override // g6.m
    public boolean c() {
        if (this.f12109a.isEmpty()) {
            return true;
        }
        return this.f12109a.size() == 1 && ((m6.c) this.f12109a.get(0)).i();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.f12109a.isEmpty()) {
            sb.append("values=");
            sb.append(Arrays.toString(this.f12109a.toArray()));
        }
        return sb.toString();
    }
}
