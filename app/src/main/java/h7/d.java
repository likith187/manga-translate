package h7;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import k7.h;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f12345a;

    public d(String str) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f12345a = copyOnWriteArrayList;
        copyOnWriteArrayList.clear();
        this.f12345a.addAll(h.c(str, ","));
    }

    public boolean a(String str) {
        if (this.f12345a.size() != 0) {
            return this.f12345a.contains(str);
        }
        return false;
    }
}
