package androidx.window.embedding;

import android.app.Activity;
import android.content.Intent;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import w8.p;

/* JADX INFO: loaded from: classes.dex */
final class EmbeddingAdapter$translateActivityIntentPredicates$1 extends s implements p {
    final /* synthetic */ Set<SplitPairFilter> $splitPairFilters;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EmbeddingAdapter$translateActivityIntentPredicates$1(Set<SplitPairFilter> set) {
        super(2);
        this.$splitPairFilters = set;
    }

    @Override // w8.p
    public final Boolean invoke(Activity first, Intent second) {
        r.e(first, "first");
        r.e(second, "second");
        Set<SplitPairFilter> set = this.$splitPairFilters;
        boolean z10 = false;
        if (set == null || !set.isEmpty()) {
            Iterator<T> it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((SplitPairFilter) it.next()).a(first, second)) {
                    z10 = true;
                    break;
                }
            }
        }
        return Boolean.valueOf(z10);
    }
}
