package androidx.transition;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {
    public static i a(ViewGroup viewGroup) {
        androidx.appcompat.app.t.a(viewGroup.getTag(R$id.transition_current_scene));
        return null;
    }

    static void b(ViewGroup viewGroup, i iVar) {
        viewGroup.setTag(R$id.transition_current_scene, iVar);
    }
}
