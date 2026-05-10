package i0;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class k extends m {
    private final boolean isVisibleToUser;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Fragment fragment, boolean z10) {
        super(fragment, "Attempting to set user visible hint to " + z10 + " for fragment " + fragment);
        r.e(fragment, "fragment");
        this.isVisibleToUser = z10;
    }

    public final boolean isVisibleToUser() {
        return this.isVisibleToUser;
    }
}
