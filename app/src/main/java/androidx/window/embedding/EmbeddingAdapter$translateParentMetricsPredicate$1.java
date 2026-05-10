package androidx.window.embedding;

import android.view.WindowMetrics;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
final class EmbeddingAdapter$translateParentMetricsPredicate$1 extends s implements l {
    final /* synthetic */ SplitRule $splitRule;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EmbeddingAdapter$translateParentMetricsPredicate$1(SplitRule splitRule) {
        super(1);
        this.$splitRule = splitRule;
    }

    @Override // w8.l
    public final Boolean invoke(WindowMetrics windowMetrics) {
        r.e(windowMetrics, "windowMetrics");
        return Boolean.valueOf(this.$splitRule.a(windowMetrics));
    }
}
