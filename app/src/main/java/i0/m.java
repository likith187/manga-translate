package i0;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class m extends RuntimeException {
    private final Fragment fragment;

    public /* synthetic */ m(Fragment fragment, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, (i10 & 2) != 0 ? null : str);
    }

    public final Fragment getFragment() {
        return this.fragment;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(Fragment fragment, String str) {
        super(str);
        r.e(fragment, "fragment");
        this.fragment = fragment;
    }
}
