package com.oplus.vfxsdk.naive.coe.engine;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayList f11364a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f11365b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ThreadLocal f11366c = new ThreadLocal();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f11367d = 0;

    public boolean a(NativeObject nativeObject) {
        boolean zAdd;
        this.f11367d++;
        synchronized (this.f11365b) {
            zAdd = this.f11364a.add(nativeObject);
        }
        return zAdd;
    }

    public void b() {
        this.f11366c.set("StartLoading");
    }

    public boolean c() {
        return this.f11366c.get() == "StartLoading";
    }

    public void d() {
        synchronized (this.f11365b) {
            try {
                Iterator it = this.f11364a.iterator();
                while (it.hasNext()) {
                    this.f11367d--;
                    ((NativeObject) it.next()).release();
                }
                this.f11364a.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e() {
        this.f11366c.remove();
    }
}
