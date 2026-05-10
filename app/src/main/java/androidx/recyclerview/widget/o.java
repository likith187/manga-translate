package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f3443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f3444c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f3445d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f3446e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f3449h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f3450i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f3442a = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f3447f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f3448g = 0;

    o() {
    }

    boolean a(RecyclerView.a0 a0Var) {
        int i10 = this.f3444c;
        return i10 >= 0 && i10 < a0Var.b();
    }

    View b(RecyclerView.w wVar) {
        View viewO = wVar.o(this.f3444c);
        this.f3444c += this.f3445d;
        return viewO;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f3443b + ", mCurrentPosition=" + this.f3444c + ", mItemDirection=" + this.f3445d + ", mLayoutDirection=" + this.f3446e + ", mStartLine=" + this.f3447f + ", mEndLine=" + this.f3448g + AbstractJsonLexerKt.END_OBJ;
    }
}
