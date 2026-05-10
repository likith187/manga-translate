package com.oplus.aisubsystem.sdk.api.callback;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class ApiCallBack<TResult> extends ProcessCallback {
    private final j lock$delegate = k.b(a.INSTANCE);
    private volatile x5.a task;

    public static final class a extends s implements w8.a {
        public static final a INSTANCE = new a();

        public a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final ReentrantLock mo8invoke() {
            return new ReentrantLock();
        }
    }

    private final ReentrantLock getLock() {
        return (ReentrantLock) this.lock$delegate.getValue();
    }

    public final void onFailure$aiunit_sdk_aisubsystem_release(int i10, String str) {
        getLock().lock();
        try {
            x5.a aVar = this.task;
            if (aVar != null) {
                aVar.a(i10, str);
            }
            this.task = null;
            getLock().unlock();
        } catch (Throwable th) {
            getLock().unlock();
            throw th;
        }
    }

    public final void onSuccess$aiunit_sdk_aisubsystem_release(TResult tresult) {
        getLock().lock();
        try {
            x5.a aVar = this.task;
            if (aVar != null) {
                aVar.b(tresult);
            }
            this.task = null;
            getLock().unlock();
        } catch (Throwable th) {
            getLock().unlock();
            throw th;
        }
    }

    public final void setTask$aiunit_sdk_aisubsystem_release(x5.a task) {
        r.e(task, "task");
        getLock().lock();
        try {
            this.task = task;
        } finally {
            getLock().unlock();
        }
    }
}
