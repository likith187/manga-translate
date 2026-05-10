package androidx.window.embedding;

import android.app.Activity;
import android.util.Log;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExperimentalWindowApi;
import androidx.window.core.PredicateAdapter;
import androidx.window.embedding.EmbeddingCompat;
import androidx.window.embedding.EmbeddingInterfaceCompat;
import androidx.window.embedding.ExtensionEmbeddingBackend;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public final class ExtensionEmbeddingBackend implements EmbeddingBackend {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile ExtensionEmbeddingBackend f4053f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EmbeddingInterfaceCompat f4055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList f4056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final EmbeddingCallbackImpl f4057c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CopyOnWriteArraySet f4058d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f4052e = new Companion(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ReentrantLock f4054g = new ReentrantLock();

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final EmbeddingInterfaceCompat b() {
            ClassLoader classLoader;
            EmbeddingCompat embeddingCompat = null;
            try {
                EmbeddingCompat.Companion companion = EmbeddingCompat.f4048d;
                if (c(companion.f()) && companion.g() && (classLoader = EmbeddingBackend.class.getClassLoader()) != null) {
                    embeddingCompat = new EmbeddingCompat(companion.c(), new EmbeddingAdapter(new PredicateAdapter(classLoader)), new ConsumerAdapter(classLoader));
                }
            } catch (Throwable th) {
                Log.d("EmbeddingBackend", "Failed to load embedding extension: " + th);
            }
            if (embeddingCompat == null) {
                Log.d("EmbeddingBackend", "No supported embedding extension found");
            }
            return embeddingCompat;
        }

        public final ExtensionEmbeddingBackend a() {
            if (ExtensionEmbeddingBackend.f4053f == null) {
                ReentrantLock reentrantLock = ExtensionEmbeddingBackend.f4054g;
                reentrantLock.lock();
                try {
                    if (ExtensionEmbeddingBackend.f4053f == null) {
                        ExtensionEmbeddingBackend.f4053f = new ExtensionEmbeddingBackend(ExtensionEmbeddingBackend.f4052e.b());
                    }
                    h0 h0Var = h0.INSTANCE;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            ExtensionEmbeddingBackend extensionEmbeddingBackend = ExtensionEmbeddingBackend.f4053f;
            r.b(extensionEmbeddingBackend);
            return extensionEmbeddingBackend;
        }

        public final boolean c(Integer num) {
            return num != null && num.intValue() >= 1;
        }

        private Companion() {
        }
    }

    public final class EmbeddingCallbackImpl implements EmbeddingInterfaceCompat.EmbeddingCallbackInterface {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List f4059a;

        public EmbeddingCallbackImpl() {
        }

        @Override // androidx.window.embedding.EmbeddingInterfaceCompat.EmbeddingCallbackInterface
        public void a(List splitInfo) {
            r.e(splitInfo, "splitInfo");
            this.f4059a = splitInfo;
            Iterator it = ExtensionEmbeddingBackend.this.d().iterator();
            while (it.hasNext()) {
                ((SplitListenerWrapper) it.next()).b(splitInfo);
            }
        }
    }

    public static final class SplitListenerWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Activity f4061a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Executor f4062b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c0.a f4063c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List f4064d;

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(SplitListenerWrapper this$0, List splitsWithActivity) {
            r.e(this$0, "this$0");
            r.e(splitsWithActivity, "$splitsWithActivity");
            this$0.f4063c.accept(splitsWithActivity);
        }

        public final void b(List splitInfoList) {
            r.e(splitInfoList, "splitInfoList");
            final ArrayList arrayList = new ArrayList();
            for (Object obj : splitInfoList) {
                if (((SplitInfo) obj).a(this.f4061a)) {
                    arrayList.add(obj);
                }
            }
            if (r.a(arrayList, this.f4064d)) {
                return;
            }
            this.f4064d = arrayList;
            this.f4062b.execute(new Runnable() { // from class: androidx.window.embedding.c
                @Override // java.lang.Runnable
                public final void run() {
                    ExtensionEmbeddingBackend.SplitListenerWrapper.c(this.f4088a, arrayList);
                }
            });
        }
    }

    public ExtensionEmbeddingBackend(EmbeddingInterfaceCompat embeddingInterfaceCompat) {
        this.f4055a = embeddingInterfaceCompat;
        EmbeddingCallbackImpl embeddingCallbackImpl = new EmbeddingCallbackImpl();
        this.f4057c = embeddingCallbackImpl;
        this.f4056b = new CopyOnWriteArrayList();
        EmbeddingInterfaceCompat embeddingInterfaceCompat2 = this.f4055a;
        if (embeddingInterfaceCompat2 != null) {
            embeddingInterfaceCompat2.a(embeddingCallbackImpl);
        }
        this.f4058d = new CopyOnWriteArraySet();
    }

    public final CopyOnWriteArrayList d() {
        return this.f4056b;
    }
}
