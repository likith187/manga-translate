package androidx.window.embedding;

import android.util.Log;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExperimentalWindowApi;
import androidx.window.embedding.EmbeddingCompat;
import androidx.window.embedding.EmbeddingInterfaceCompat;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.embedding.ActivityEmbeddingComponent;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public final class EmbeddingCompat implements EmbeddingInterfaceCompat {

    /* JADX INFO: renamed from: d */
    public static final Companion f4048d = new Companion(null);

    /* JADX INFO: renamed from: a */
    private final ActivityEmbeddingComponent f4049a;

    /* JADX INFO: renamed from: b */
    private final EmbeddingAdapter f4050b;

    /* JADX INFO: renamed from: c */
    private final ConsumerAdapter f4051c;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final h0 d(Object obj, Method method, Object[] objArr) {
            return h0.INSTANCE;
        }

        public static final h0 e(Object obj, Method method, Object[] objArr) {
            return h0.INSTANCE;
        }

        public final ActivityEmbeddingComponent c() {
            if (!g()) {
                Object objNewProxyInstance = Proxy.newProxyInstance(EmbeddingCompat.class.getClassLoader(), new Class[]{ActivityEmbeddingComponent.class}, new InvocationHandler() { // from class: androidx.window.embedding.b
                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj, Method method, Object[] objArr) {
                        return EmbeddingCompat.Companion.e(obj, method, objArr);
                    }
                });
                if (objNewProxyInstance != null) {
                    return (ActivityEmbeddingComponent) objNewProxyInstance;
                }
                throw new NullPointerException("null cannot be cast to non-null type androidx.window.extensions.embedding.ActivityEmbeddingComponent");
            }
            ActivityEmbeddingComponent activityEmbeddingComponent = WindowExtensionsProvider.getWindowExtensions().getActivityEmbeddingComponent();
            if (activityEmbeddingComponent != null) {
                return activityEmbeddingComponent;
            }
            Object objNewProxyInstance2 = Proxy.newProxyInstance(EmbeddingCompat.class.getClassLoader(), new Class[]{ActivityEmbeddingComponent.class}, new InvocationHandler() { // from class: androidx.window.embedding.a
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    return EmbeddingCompat.Companion.d(obj, method, objArr);
                }
            });
            if (objNewProxyInstance2 != null) {
                return (ActivityEmbeddingComponent) objNewProxyInstance2;
            }
            throw new NullPointerException("null cannot be cast to non-null type androidx.window.extensions.embedding.ActivityEmbeddingComponent");
        }

        public final Integer f() {
            try {
                return Integer.valueOf(WindowExtensionsProvider.getWindowExtensions().getVendorApiLevel());
            } catch (NoClassDefFoundError unused) {
                Log.d("EmbeddingCompat", "Embedding extension version not found");
                return null;
            } catch (UnsupportedOperationException unused2) {
                Log.d("EmbeddingCompat", "Stub Extension");
                return null;
            }
        }

        public final boolean g() {
            try {
                return WindowExtensionsProvider.getWindowExtensions().getActivityEmbeddingComponent() != null;
            } catch (NoClassDefFoundError unused) {
                Log.d("EmbeddingCompat", "Embedding extension version not found");
                return false;
            } catch (UnsupportedOperationException unused2) {
                Log.d("EmbeddingCompat", "Stub Extension");
                return false;
            }
        }

        private Companion() {
        }
    }

    public EmbeddingCompat(ActivityEmbeddingComponent embeddingExtension, EmbeddingAdapter adapter, ConsumerAdapter consumerAdapter) {
        r.e(embeddingExtension, "embeddingExtension");
        r.e(adapter, "adapter");
        r.e(consumerAdapter, "consumerAdapter");
        this.f4049a = embeddingExtension;
        this.f4050b = adapter;
        this.f4051c = consumerAdapter;
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void a(EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallback) throws IllegalAccessException, InvocationTargetException {
        r.e(embeddingCallback, "embeddingCallback");
        this.f4051c.a(this.f4049a, d0.b(List.class), "setSplitInfoCallback", new EmbeddingCompat$setEmbeddingCallback$1(embeddingCallback, this));
    }
}
