package e8;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(f param, e update) {
        super(param, update);
        r.e(param, "param");
        r.e(update, "update");
    }

    @Override // e8.c
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public float[] a() {
        return (float[]) ((float[]) getValue()).clone();
    }
}
