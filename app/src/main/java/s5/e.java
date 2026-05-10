package s5;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import w5.h;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f15566a;

    public e(String str) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f15566a = copyOnWriteArrayList;
        copyOnWriteArrayList.clear();
        this.f15566a.addAll(h.c(str, ","));
    }

    public boolean a(String str) {
        if (this.f15566a.size() != 0) {
            return this.f15566a.contains(str);
        }
        return false;
    }
}
