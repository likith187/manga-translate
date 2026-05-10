package androidx.window.embedding;

import android.app.Activity;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
final class EmbeddingAdapter$translateActivityPredicates$1 extends s implements l {
    final /* synthetic */ Set<ActivityFilter> $activityFilters;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EmbeddingAdapter$translateActivityPredicates$1(Set<ActivityFilter> set) {
        super(1);
        this.$activityFilters = set;
    }

    @Override // w8.l
    public final Boolean invoke(Activity activity) {
        r.e(activity, "activity");
        Set<ActivityFilter> set = this.$activityFilters;
        boolean z10 = false;
        if (set == null || !set.isEmpty()) {
            Iterator<T> it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((ActivityFilter) it.next()).a(activity)) {
                    z10 = true;
                    break;
                }
            }
        }
        return Boolean.valueOf(z10);
    }
}
