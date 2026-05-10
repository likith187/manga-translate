package androidx.window.embedding;

import androidx.window.core.ExperimentalWindowApi;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public interface EmbeddingInterfaceCompat {

    public interface EmbeddingCallbackInterface {
        void a(List list);
    }

    void a(EmbeddingCallbackInterface embeddingCallbackInterface);
}
