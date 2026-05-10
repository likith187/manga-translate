package androidx.window.embedding;

import androidx.window.embedding.EmbeddingInterfaceCompat;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
final class EmbeddingCompat$setEmbeddingCallback$1 extends s implements l {
    final /* synthetic */ EmbeddingInterfaceCompat.EmbeddingCallbackInterface $embeddingCallback;
    final /* synthetic */ EmbeddingCompat this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EmbeddingCompat$setEmbeddingCallback$1(EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallbackInterface, EmbeddingCompat embeddingCompat) {
        super(1);
        this.$embeddingCallback = embeddingCallbackInterface;
        this.this$0 = embeddingCompat;
    }

    @Override // w8.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((List<?>) obj);
        return h0.INSTANCE;
    }

    public final void invoke(List<?> values) {
        r.e(values, "values");
        ArrayList arrayList = new ArrayList();
        for (Object obj : values) {
            if (obj instanceof androidx.window.extensions.embedding.SplitInfo) {
                arrayList.add(obj);
            }
        }
        this.$embeddingCallback.a(this.this$0.f4050b.b(arrayList));
    }
}
