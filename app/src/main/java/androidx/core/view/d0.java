package androidx.core.view;

import android.content.Context;
import android.view.PointerIcon;

/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PointerIcon f2038a;

    static class a {
        static PointerIcon a(Context context, int i10) {
            return PointerIcon.getSystemIcon(context, i10);
        }
    }

    private d0(PointerIcon pointerIcon) {
        this.f2038a = pointerIcon;
    }

    public static d0 b(Context context, int i10) {
        return new d0(a.a(context, i10));
    }

    public Object a() {
        return this.f2038a;
    }
}
