package androidx.window.layout;

import android.app.Activity;
import androidx.window.core.ConsumerAdapter;
import androidx.window.extensions.layout.WindowLayoutComponent;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class ExtensionWindowLayoutInfoBackend implements WindowBackend {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WindowLayoutComponent f4090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConsumerAdapter f4091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ReentrantLock f4092c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f4093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f4094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map f4095f;

    /* JADX INFO: Access modifiers changed from: private */
    static final class MulticastConsumer implements c0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Activity f4096a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ReentrantLock f4097b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WindowLayoutInfo f4098c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Set f4099d;

        public MulticastConsumer(Activity activity) {
            r.e(activity, "activity");
            this.f4096a = activity;
            this.f4097b = new ReentrantLock();
            this.f4099d = new LinkedHashSet();
        }

        @Override // c0.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(androidx.window.extensions.layout.WindowLayoutInfo value) {
            r.e(value, "value");
            ReentrantLock reentrantLock = this.f4097b;
            reentrantLock.lock();
            try {
                this.f4098c = ExtensionsWindowLayoutInfoAdapter.INSTANCE.b(this.f4096a, value);
                Iterator it = this.f4099d.iterator();
                while (it.hasNext()) {
                    ((c0.a) it.next()).accept(this.f4098c);
                }
                h0 h0Var = h0.INSTANCE;
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        public final void b(c0.a listener) {
            r.e(listener, "listener");
            ReentrantLock reentrantLock = this.f4097b;
            reentrantLock.lock();
            try {
                WindowLayoutInfo windowLayoutInfo = this.f4098c;
                if (windowLayoutInfo != null) {
                    listener.accept(windowLayoutInfo);
                }
                this.f4099d.add(listener);
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        public final boolean c() {
            return this.f4099d.isEmpty();
        }

        public final void d(c0.a listener) {
            r.e(listener, "listener");
            ReentrantLock reentrantLock = this.f4097b;
            reentrantLock.lock();
            try {
                this.f4099d.remove(listener);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public ExtensionWindowLayoutInfoBackend(WindowLayoutComponent component, ConsumerAdapter consumerAdapter) {
        r.e(component, "component");
        r.e(consumerAdapter, "consumerAdapter");
        this.f4090a = component;
        this.f4091b = consumerAdapter;
        this.f4092c = new ReentrantLock();
        this.f4093d = new LinkedHashMap();
        this.f4094e = new LinkedHashMap();
        this.f4095f = new LinkedHashMap();
    }

    @Override // androidx.window.layout.WindowBackend
    public void a(Activity activity, Executor executor, c0.a callback) {
        h0 h0Var;
        r.e(activity, "activity");
        r.e(executor, "executor");
        r.e(callback, "callback");
        ReentrantLock reentrantLock = this.f4092c;
        reentrantLock.lock();
        try {
            MulticastConsumer multicastConsumer = (MulticastConsumer) this.f4093d.get(activity);
            if (multicastConsumer != null) {
                multicastConsumer.b(callback);
                this.f4094e.put(callback, activity);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            if (h0Var == null) {
                MulticastConsumer multicastConsumer2 = new MulticastConsumer(activity);
                this.f4093d.put(activity, multicastConsumer2);
                this.f4094e.put(callback, activity);
                multicastConsumer2.b(callback);
                this.f4095f.put(multicastConsumer2, this.f4091b.d(this.f4090a, d0.b(androidx.window.extensions.layout.WindowLayoutInfo.class), "addWindowLayoutInfoListener", "removeWindowLayoutInfoListener", activity, new ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$disposableToken$1(multicastConsumer2)));
            }
            h0 h0Var2 = h0.INSTANCE;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // androidx.window.layout.WindowBackend
    public void b(c0.a callback) {
        r.e(callback, "callback");
        ReentrantLock reentrantLock = this.f4092c;
        reentrantLock.lock();
        try {
            Activity activity = (Activity) this.f4094e.get(callback);
            if (activity == null) {
                reentrantLock.unlock();
                return;
            }
            MulticastConsumer multicastConsumer = (MulticastConsumer) this.f4093d.get(activity);
            if (multicastConsumer == null) {
                reentrantLock.unlock();
                return;
            }
            multicastConsumer.d(callback);
            if (multicastConsumer.c()) {
                ConsumerAdapter.Subscription subscription = (ConsumerAdapter.Subscription) this.f4095f.remove(multicastConsumer);
                if (subscription != null) {
                    subscription.a();
                }
                this.f4094e.remove(callback);
                this.f4093d.remove(activity);
            }
            h0 h0Var = h0.INSTANCE;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
