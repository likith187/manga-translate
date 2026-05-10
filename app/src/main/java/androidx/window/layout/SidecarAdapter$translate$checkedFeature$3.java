package androidx.window.layout;

import androidx.window.sidecar.SidecarDisplayFeature;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
final class SidecarAdapter$translate$checkedFeature$3 extends s implements l {
    public static final SidecarAdapter$translate$checkedFeature$3 INSTANCE = new SidecarAdapter$translate$checkedFeature$3();

    SidecarAdapter$translate$checkedFeature$3() {
        super(1);
    }

    @Override // w8.l
    public final Boolean invoke(SidecarDisplayFeature require) {
        r.e(require, "$this$require");
        boolean z10 = true;
        if (require.getType() == 1 && require.getRect().width() != 0 && require.getRect().height() != 0) {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }
}
