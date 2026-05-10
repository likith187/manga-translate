package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.app.p;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: loaded from: classes.dex */
public class b extends p {
    private boolean waitingForDismissAllowingStateLoss;

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.b$b, reason: collision with other inner class name */
    private class C0108b extends BottomSheetBehavior.g {
        private C0108b() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void onSlide(View view, float f10) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void onStateChanged(View view, int i10) {
            if (i10 == 5) {
                b.this.n();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (this.waitingForDismissAllowingStateLoss) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }

    private void o(BottomSheetBehavior bottomSheetBehavior, boolean z10) {
        this.waitingForDismissAllowingStateLoss = z10;
        if (bottomSheetBehavior.getState() == 5) {
            n();
            return;
        }
        if (getDialog() instanceof com.google.android.material.bottomsheet.a) {
            ((com.google.android.material.bottomsheet.a) getDialog()).removeDefaultCallback();
        }
        bottomSheetBehavior.addBottomSheetCallback(new C0108b());
        bottomSheetBehavior.setState(5);
    }

    private boolean p(boolean z10) {
        Dialog dialog = getDialog();
        if (!(dialog instanceof com.google.android.material.bottomsheet.a)) {
            return false;
        }
        com.google.android.material.bottomsheet.a aVar = (com.google.android.material.bottomsheet.a) dialog;
        BottomSheetBehavior<FrameLayout> behavior = aVar.getBehavior();
        if (!behavior.isHideable() || !aVar.getDismissWithAnimation()) {
            return false;
        }
        o(behavior, z10);
        return true;
    }

    @Override // androidx.fragment.app.c
    public void dismiss() {
        if (p(false)) {
            return;
        }
        super.dismiss();
    }

    @Override // androidx.fragment.app.c
    public void dismissAllowingStateLoss() {
        if (p(true)) {
            return;
        }
        super.dismissAllowingStateLoss();
    }

    @Override // androidx.appcompat.app.p, androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle bundle) {
        return new com.google.android.material.bottomsheet.a(getContext(), getTheme());
    }
}
