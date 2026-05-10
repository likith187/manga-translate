package androidx.activity;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class z {
    public static final void a(View view, x onBackPressedDispatcherOwner) {
        kotlin.jvm.internal.r.e(view, "<this>");
        kotlin.jvm.internal.r.e(onBackPressedDispatcherOwner, "onBackPressedDispatcherOwner");
        view.setTag(R$id.view_tree_on_back_pressed_dispatcher_owner, onBackPressedDispatcherOwner);
    }
}
