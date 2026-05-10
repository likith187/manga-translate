package i0;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class j extends l {
    private final int requestCode;
    private final Fragment targetFragment;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Fragment fragment, Fragment targetFragment, int i10) {
        super(fragment, "Attempting to set target fragment " + targetFragment + " with request code " + i10 + " for fragment " + fragment);
        r.e(fragment, "fragment");
        r.e(targetFragment, "targetFragment");
        this.targetFragment = targetFragment;
        this.requestCode = i10;
    }

    public final int getRequestCode() {
        return this.requestCode;
    }

    public final Fragment getTargetFragment() {
        return this.targetFragment;
    }
}
