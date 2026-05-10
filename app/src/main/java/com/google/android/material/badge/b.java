package com.google.android.material.badge;

import android.content.Context;
import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.ParcelableSparseArray;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a */
    public static final boolean f8945a = false;

    public static void a(a aVar, View view, FrameLayout frameLayout) {
        e(aVar, view, frameLayout);
        if (aVar.i() != null) {
            aVar.i().setForeground(aVar);
        } else {
            if (f8945a) {
                throw new IllegalArgumentException("Trying to reference null customBadgeParent");
            }
            view.getOverlay().add(aVar);
        }
    }

    public static SparseArray b(Context context, ParcelableSparseArray parcelableSparseArray) {
        SparseArray sparseArray = new SparseArray(parcelableSparseArray.size());
        for (int i10 = 0; i10 < parcelableSparseArray.size(); i10++) {
            int iKeyAt = parcelableSparseArray.keyAt(i10);
            BadgeState.State state = (BadgeState.State) parcelableSparseArray.valueAt(i10);
            sparseArray.put(iKeyAt, state != null ? a.d(context, state) : null);
        }
        return sparseArray;
    }

    public static ParcelableSparseArray c(SparseArray sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            a aVar = (a) sparseArray.valueAt(i10);
            parcelableSparseArray.put(iKeyAt, aVar != null ? aVar.s() : null);
        }
        return parcelableSparseArray;
    }

    public static void d(a aVar, View view) {
        if (aVar == null) {
            return;
        }
        if (f8945a || aVar.i() != null) {
            aVar.i().setForeground(null);
        } else {
            view.getOverlay().remove(aVar);
        }
    }

    public static void e(a aVar, View view, FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        aVar.setBounds(rect);
        aVar.P(view, frameLayout);
    }

    public static void f(Rect rect, float f10, float f11, float f12, float f13) {
        rect.set((int) (f10 - f12), (int) (f11 - f13), (int) (f10 + f12), (int) (f11 + f13));
    }
}
