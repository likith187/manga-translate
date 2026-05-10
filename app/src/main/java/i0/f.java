package i0;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class f extends l {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Fragment fragment) {
        super(fragment, "Attempting to get target request code from fragment " + fragment);
        r.e(fragment, "fragment");
    }
}
