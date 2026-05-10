package l3;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.c;
import com.google.android.gms.common.internal.k;

/* JADX INFO: loaded from: classes.dex */
public class a extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f13576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private DialogInterface.OnCancelListener f13577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Dialog f13578c;

    public static a n(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        a aVar = new a();
        Dialog dialog2 = (Dialog) k.h(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        aVar.f13576a = dialog2;
        if (onCancelListener != null) {
            aVar.f13577b = onCancelListener;
        }
        return aVar;
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f13577b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f13576a;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f13578c == null) {
            this.f13578c = new AlertDialog.Builder((Context) k.g(getContext())).create();
        }
        return this.f13578c;
    }

    @Override // androidx.fragment.app.c
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
