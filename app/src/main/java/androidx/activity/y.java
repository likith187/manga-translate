package androidx.activity;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class y {
    public static final void a(View view, t fullyDrawnReporterOwner) {
        kotlin.jvm.internal.r.e(view, "<this>");
        kotlin.jvm.internal.r.e(fullyDrawnReporterOwner, "fullyDrawnReporterOwner");
        view.setTag(R$id.report_drawn, fullyDrawnReporterOwner);
    }
}
