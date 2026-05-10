package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
abstract class r extends LinearLayoutManager {

    class a extends androidx.recyclerview.widget.p {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.p
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    r(Context context, int i10, boolean z10) {
        super(context, i10, z10);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.a0 a0Var, int i10) {
        a aVar = new a(recyclerView.getContext());
        aVar.setTargetPosition(i10);
        startSmoothScroll(aVar);
    }
}
