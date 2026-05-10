package com.google.android.material.shape;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes.dex */
class u extends s {

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (u.this.f10150e.isEmpty()) {
                return;
            }
            outline.setPath(u.this.f10150e);
        }
    }

    u(View view) {
        l(view);
    }

    private void l(View view) {
        view.setOutlineProvider(new a());
    }

    @Override // com.google.android.material.shape.s
    void b(View view) {
        view.setClipToOutline(!j());
        if (j()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    @Override // com.google.android.material.shape.s
    boolean j() {
        return this.f10146a;
    }
}
