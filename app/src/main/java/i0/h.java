package i0;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class h extends m {
    public /* synthetic */ h(Fragment fragment, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, (i10 & 2) != 0 ? null : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Fragment fragment, String str) {
        super(fragment, str);
        r.e(fragment, "fragment");
    }
}
