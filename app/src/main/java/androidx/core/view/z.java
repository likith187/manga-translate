package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2124a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2125b;

    public z(ViewGroup viewGroup) {
    }

    public int a() {
        return this.f2125b | this.f2124a;
    }

    public void b(View view, View view2, int i10) {
        c(view, view2, i10, 0);
    }

    public void c(View view, View view2, int i10, int i11) {
        if (i11 == 1) {
            this.f2125b = i10;
        } else {
            this.f2124a = i10;
        }
    }

    public void d(View view, int i10) {
        if (i10 == 1) {
            this.f2125b = 0;
        } else {
            this.f2124a = 0;
        }
    }
}
