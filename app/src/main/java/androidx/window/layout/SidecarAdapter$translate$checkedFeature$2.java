package androidx.window.layout;

import androidx.window.sidecar.SidecarDisplayFeature;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
final class SidecarAdapter$translate$checkedFeature$2 extends s implements l {
    public static final SidecarAdapter$translate$checkedFeature$2 INSTANCE = new SidecarAdapter$translate$checkedFeature$2();

    SidecarAdapter$translate$checkedFeature$2() {
        super(1);
    }

    @Override // w8.l
    public final Boolean invoke(SidecarDisplayFeature require) {
        r.e(require, "$this$require");
        return Boolean.valueOf((require.getRect().width() == 0 && require.getRect().height() == 0) ? false : true);
    }
}
