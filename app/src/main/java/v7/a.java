package v7;

import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static String f15950e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f15952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f15953c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ThreadLocal f15951a = new ThreadLocal();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ReentrantLock f15954d = new ReentrantLock(true);

    protected a() {
        f15950e = getClass().getName();
        this.f15953c = true;
    }
}
