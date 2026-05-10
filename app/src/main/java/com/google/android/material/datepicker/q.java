package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
abstract class q extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final LinkedHashSet f9543a = new LinkedHashSet();

    q() {
    }

    boolean l(p pVar) {
        return this.f9543a.add(pVar);
    }

    void m() {
        this.f9543a.clear();
    }
}
