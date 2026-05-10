package androidx.lifecycle;

import android.view.View;
import androidx.lifecycle.runtime.R$id;

/* JADX INFO: loaded from: classes.dex */
public abstract class y0 {
    public static final void a(View view, s sVar) {
        kotlin.jvm.internal.r.e(view, "<this>");
        view.setTag(R$id.view_tree_lifecycle_owner, sVar);
    }
}
