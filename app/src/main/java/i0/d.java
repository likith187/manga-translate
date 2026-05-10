package i0;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class d extends m {
    private final ViewGroup parentContainer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Fragment fragment, ViewGroup viewGroup) {
        super(fragment, "Attempting to use <fragment> tag to add fragment " + fragment + " to container " + viewGroup);
        r.e(fragment, "fragment");
        this.parentContainer = viewGroup;
    }

    public final ViewGroup getParentContainer() {
        return this.parentContainer;
    }
}
