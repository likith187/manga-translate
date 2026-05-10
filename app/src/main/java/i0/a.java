package i0;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class a extends m {
    private final String previousFragmentId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Fragment fragment, String previousFragmentId) {
        super(fragment, "Attempting to reuse fragment " + fragment + " with previous ID " + previousFragmentId);
        r.e(fragment, "fragment");
        r.e(previousFragmentId, "previousFragmentId");
        this.previousFragmentId = previousFragmentId;
    }

    public final String getPreviousFragmentId() {
        return this.previousFragmentId;
    }
}
