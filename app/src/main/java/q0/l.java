package q0;

import android.view.View;
import androidx.savedstate.R$id;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {
    public static final void a(View view, h hVar) {
        r.e(view, "<this>");
        view.setTag(R$id.view_tree_saved_state_registry_owner, hVar);
    }
}
