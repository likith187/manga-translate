package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
abstract class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c0 f2564a = new b0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final c0 f2565b = b();

    static void a(Fragment fragment, Fragment fragment2, boolean z10, androidx.collection.a aVar, boolean z11) {
        if (z10) {
            fragment2.getEnterTransitionCallback();
        } else {
            fragment.getEnterTransitionCallback();
        }
    }

    private static c0 b() {
        try {
            return (c0) androidx.transition.e.class.getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }

    static void c(androidx.collection.a aVar, androidx.collection.a aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey((String) aVar.k(size))) {
                aVar.i(size);
            }
        }
    }

    static void d(ArrayList arrayList, int i10) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((View) arrayList.get(size)).setVisibility(i10);
        }
    }
}
