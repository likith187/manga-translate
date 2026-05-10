package androidx.window.embedding;

import androidx.window.core.ExperimentalWindowApi;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.q0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public final class SplitController {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f4065c = new Companion(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ReentrantLock f4066d = new ReentrantLock();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final EmbeddingBackend f4067a = ExtensionEmbeddingBackend.f4052e.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Set f4068b = q0.b();

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private SplitController() {
    }
}
