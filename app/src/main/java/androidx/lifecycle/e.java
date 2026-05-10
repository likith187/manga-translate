package androidx.lifecycle;

import androidx.lifecycle.l;

/* JADX INFO: loaded from: classes.dex */
public final class e implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i[] f2760a;

    public e(i[] generatedAdapters) {
        kotlin.jvm.internal.r.e(generatedAdapters, "generatedAdapters");
        this.f2760a = generatedAdapters;
    }

    @Override // androidx.lifecycle.p
    public void onStateChanged(s source, l.a event) {
        kotlin.jvm.internal.r.e(source, "source");
        kotlin.jvm.internal.r.e(event, "event");
        new z();
        i[] iVarArr = this.f2760a;
        if (iVarArr.length > 0) {
            i iVar = iVarArr[0];
            throw null;
        }
        if (iVarArr.length <= 0) {
            return;
        }
        i iVar2 = iVarArr[0];
        throw null;
    }
}
