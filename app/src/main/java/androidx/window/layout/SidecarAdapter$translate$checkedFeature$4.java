package androidx.window.layout;

import androidx.window.sidecar.SidecarDisplayFeature;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
final class SidecarAdapter$translate$checkedFeature$4 extends s implements l {
    public static final SidecarAdapter$translate$checkedFeature$4 INSTANCE = new SidecarAdapter$translate$checkedFeature$4();

    SidecarAdapter$translate$checkedFeature$4() {
        super(1);
    }

    @Override // w8.l
    public final Boolean invoke(SidecarDisplayFeature require) {
        r.e(require, "$this$require");
        return Boolean.valueOf(require.getRect().left == 0 || require.getRect().top == 0);
    }
}
