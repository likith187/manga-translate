package androidx.window.layout;

import androidx.window.sidecar.SidecarDisplayFeature;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
final class SidecarAdapter$translate$checkedFeature$1 extends s implements l {
    public static final SidecarAdapter$translate$checkedFeature$1 INSTANCE = new SidecarAdapter$translate$checkedFeature$1();

    SidecarAdapter$translate$checkedFeature$1() {
        super(1);
    }

    @Override // w8.l
    public final Boolean invoke(SidecarDisplayFeature require) {
        r.e(require, "$this$require");
        boolean z10 = true;
        if (require.getType() != 1 && require.getType() != 2) {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }
}
