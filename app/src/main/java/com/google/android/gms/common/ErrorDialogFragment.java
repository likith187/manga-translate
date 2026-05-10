package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class ErrorDialogFragment extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f7553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private DialogInterface.OnCancelListener f7554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Dialog f7555c;

    public static ErrorDialogFragment a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        ErrorDialogFragment errorDialogFragment = new ErrorDialogFragment();
        Dialog dialog2 = (Dialog) com.google.android.gms.common.internal.k.h(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        errorDialogFragment.f7553a = dialog2;
        if (onCancelListener != null) {
            errorDialogFragment.f7554b = onCancelListener;
        }
        return errorDialogFragment;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f7554b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f7553a;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f7555c == null) {
            this.f7555c = new AlertDialog.Builder((Context) com.google.android.gms.common.internal.k.g(getActivity())).create();
        }
        return this.f7555c;
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
