package d0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f11455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f11456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f11457c;

    public a(int i10, h hVar, int i11) {
        this.f11455a = i10;
        this.f11456b = hVar;
        this.f11457c = i11;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f11455a);
        this.f11456b.Y(this.f11457c, bundle);
    }
}
