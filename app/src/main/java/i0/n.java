package i0;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class n extends m {
    private final ViewGroup container;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(Fragment fragment, ViewGroup container) {
        super(fragment, "Attempting to add fragment " + fragment + " to container " + container + " which is not a FragmentContainerView");
        r.e(fragment, "fragment");
        r.e(container, "container");
        this.container = container;
    }

    public final ViewGroup getContainer() {
        return this.container;
    }
}
