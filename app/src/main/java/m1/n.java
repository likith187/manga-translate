package m1;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class n implements m {

    /* JADX INFO: renamed from: a */
    final List f13829a;

    n(List list) {
        this.f13829a = list;
    }

    @Override // m1.m
    public List b() {
        return this.f13829a;
    }

    @Override // m1.m
    public boolean c() {
        if (this.f13829a.isEmpty()) {
            return true;
        }
        return this.f13829a.size() == 1 && ((s1.a) this.f13829a.get(0)).i();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.f13829a.isEmpty()) {
            sb.append("values=");
            sb.append(Arrays.toString(this.f13829a.toArray()));
        }
        return sb.toString();
    }
}
