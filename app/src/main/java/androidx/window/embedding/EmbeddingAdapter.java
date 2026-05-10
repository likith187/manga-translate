package androidx.window.embedding;

import androidx.window.core.ExperimentalWindowApi;
import androidx.window.core.PredicateAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public final class EmbeddingAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PredicateAdapter f4047a;

    public EmbeddingAdapter(PredicateAdapter predicateAdapter) {
        r.e(predicateAdapter, "predicateAdapter");
        this.f4047a = predicateAdapter;
    }

    private final SplitInfo a(androidx.window.extensions.embedding.SplitInfo splitInfo) {
        boolean zIsEmpty;
        androidx.window.extensions.embedding.ActivityStack primaryActivityStack = splitInfo.getPrimaryActivityStack();
        r.d(primaryActivityStack, "splitInfo.primaryActivityStack");
        boolean zIsEmpty2 = false;
        try {
            zIsEmpty = primaryActivityStack.isEmpty();
        } catch (NoSuchMethodError unused) {
            zIsEmpty = false;
        }
        List activities = primaryActivityStack.getActivities();
        r.d(activities, "primaryActivityStack.activities");
        ActivityStack activityStack = new ActivityStack(activities, zIsEmpty);
        androidx.window.extensions.embedding.ActivityStack secondaryActivityStack = splitInfo.getSecondaryActivityStack();
        r.d(secondaryActivityStack, "splitInfo.secondaryActivityStack");
        try {
            zIsEmpty2 = secondaryActivityStack.isEmpty();
        } catch (NoSuchMethodError unused2) {
        }
        List activities2 = secondaryActivityStack.getActivities();
        r.d(activities2, "secondaryActivityStack.activities");
        return new SplitInfo(activityStack, new ActivityStack(activities2, zIsEmpty2), splitInfo.getSplitRatio());
    }

    public final List b(List splitInfoList) {
        r.e(splitInfoList, "splitInfoList");
        ArrayList arrayList = new ArrayList(o.r(splitInfoList, 10));
        Iterator it = splitInfoList.iterator();
        while (it.hasNext()) {
            arrayList.add(a((androidx.window.extensions.embedding.SplitInfo) it.next()));
        }
        return arrayList;
    }
}
