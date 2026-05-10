package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.R$attr;
import androidx.appcompat.app.AlertController;

/* JADX INFO: loaded from: classes.dex */
public class c extends o implements DialogInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AlertController f394a;

    public static class a {
        private final AlertController.b P;
        private final int mTheme;

        public a(Context context) {
            this(context, c.resolveDialogTheme(context, 0));
        }

        public c create() {
            c cVar = new c(this.P.f276a, this.mTheme);
            this.P.a(cVar.f394a);
            cVar.setCancelable(this.P.f293r);
            if (this.P.f293r) {
                cVar.setCanceledOnTouchOutside(true);
            }
            cVar.setOnCancelListener(this.P.f294s);
            cVar.setOnDismissListener(this.P.f295t);
            DialogInterface.OnKeyListener onKeyListener = this.P.f296u;
            if (onKeyListener != null) {
                cVar.setOnKeyListener(onKeyListener);
            }
            return cVar;
        }

        public Context getContext() {
            return this.P.f276a;
        }

        public a setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f298w = listAdapter;
            bVar.f299x = onClickListener;
            return this;
        }

        public a setCancelable(boolean z10) {
            this.P.f293r = z10;
            return this;
        }

        public a setCursor(Cursor cursor, DialogInterface.OnClickListener onClickListener, String str) {
            AlertController.b bVar = this.P;
            bVar.K = cursor;
            bVar.L = str;
            bVar.f299x = onClickListener;
            return this;
        }

        public a setCustomTitle(View view) {
            this.P.f282g = view;
            return this;
        }

        public a setIcon(int i10) {
            this.P.f278c = i10;
            return this;
        }

        public a setIconAttribute(int i10) {
            TypedValue typedValue = new TypedValue();
            this.P.f276a.getTheme().resolveAttribute(i10, typedValue, true);
            this.P.f278c = typedValue.resourceId;
            return this;
        }

        @Deprecated
        public a setInverseBackgroundForced(boolean z10) {
            this.P.N = z10;
            return this;
        }

        public a setItems(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f297v = bVar.f276a.getResources().getTextArray(i10);
            this.P.f299x = onClickListener;
            return this;
        }

        public a setMessage(int i10) {
            AlertController.b bVar = this.P;
            bVar.f283h = bVar.f276a.getText(i10);
            return this;
        }

        public a setMultiChoiceItems(int i10, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.b bVar = this.P;
            bVar.f297v = bVar.f276a.getResources().getTextArray(i10);
            AlertController.b bVar2 = this.P;
            bVar2.J = onMultiChoiceClickListener;
            bVar2.F = zArr;
            bVar2.G = true;
            return this;
        }

        public a setNegativeButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f287l = bVar.f276a.getText(i10);
            this.P.f289n = onClickListener;
            return this;
        }

        public a setNegativeButtonIcon(Drawable drawable) {
            this.P.f288m = drawable;
            return this;
        }

        public a setNeutralButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f290o = bVar.f276a.getText(i10);
            this.P.f292q = onClickListener;
            return this;
        }

        public a setNeutralButtonIcon(Drawable drawable) {
            this.P.f291p = drawable;
            return this;
        }

        public a setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.P.f294s = onCancelListener;
            return this;
        }

        public a setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.P.f295t = onDismissListener;
            return this;
        }

        public a setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.P.O = onItemSelectedListener;
            return this;
        }

        public a setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
            this.P.f296u = onKeyListener;
            return this;
        }

        public a setPositiveButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f284i = bVar.f276a.getText(i10);
            this.P.f286k = onClickListener;
            return this;
        }

        public a setPositiveButtonIcon(Drawable drawable) {
            this.P.f285j = drawable;
            return this;
        }

        public a setRecycleOnMeasureEnabled(boolean z10) {
            this.P.P = z10;
            return this;
        }

        public a setSingleChoiceItems(int i10, int i11, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f297v = bVar.f276a.getResources().getTextArray(i10);
            AlertController.b bVar2 = this.P;
            bVar2.f299x = onClickListener;
            bVar2.I = i11;
            bVar2.H = true;
            return this;
        }

        public a setTitle(int i10) {
            AlertController.b bVar = this.P;
            bVar.f281f = bVar.f276a.getText(i10);
            return this;
        }

        public a setView(int i10) {
            AlertController.b bVar = this.P;
            bVar.f301z = null;
            bVar.f300y = i10;
            bVar.E = false;
            return this;
        }

        public c show() {
            c cVarCreate = create();
            cVarCreate.show();
            return cVarCreate;
        }

        public a(Context context, int i10) {
            this.P = new AlertController.b(new ContextThemeWrapper(context, c.resolveDialogTheme(context, i10)));
            this.mTheme = i10;
        }

        public a setIcon(Drawable drawable) {
            this.P.f279d = drawable;
            return this;
        }

        public a setMessage(CharSequence charSequence) {
            this.P.f283h = charSequence;
            return this;
        }

        public a setTitle(CharSequence charSequence) {
            this.P.f281f = charSequence;
            return this;
        }

        public a setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f297v = charSequenceArr;
            bVar.f299x = onClickListener;
            return this;
        }

        public a setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f287l = charSequence;
            bVar.f289n = onClickListener;
            return this;
        }

        public a setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f290o = charSequence;
            bVar.f292q = onClickListener;
            return this;
        }

        public a setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f284i = charSequence;
            bVar.f286k = onClickListener;
            return this;
        }

        public a setView(View view) {
            AlertController.b bVar = this.P;
            bVar.f301z = view;
            bVar.f300y = 0;
            bVar.E = false;
            return this;
        }

        public a setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.b bVar = this.P;
            bVar.f297v = charSequenceArr;
            bVar.J = onMultiChoiceClickListener;
            bVar.F = zArr;
            bVar.G = true;
            return this;
        }

        public a setSingleChoiceItems(Cursor cursor, int i10, String str, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.K = cursor;
            bVar.f299x = onClickListener;
            bVar.I = i10;
            bVar.L = str;
            bVar.H = true;
            return this;
        }

        @Deprecated
        public a setView(View view, int i10, int i11, int i12, int i13) {
            AlertController.b bVar = this.P;
            bVar.f301z = view;
            bVar.f300y = 0;
            bVar.E = true;
            bVar.A = i10;
            bVar.B = i11;
            bVar.C = i12;
            bVar.D = i13;
            return this;
        }

        public a setMultiChoiceItems(Cursor cursor, String str, String str2, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.b bVar = this.P;
            bVar.K = cursor;
            bVar.J = onMultiChoiceClickListener;
            bVar.M = str;
            bVar.L = str2;
            bVar.G = true;
            return this;
        }

        public a setSingleChoiceItems(CharSequence[] charSequenceArr, int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f297v = charSequenceArr;
            bVar.f299x = onClickListener;
            bVar.I = i10;
            bVar.H = true;
            return this;
        }

        public a setSingleChoiceItems(ListAdapter listAdapter, int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f298w = listAdapter;
            bVar.f299x = onClickListener;
            bVar.I = i10;
            bVar.H = true;
            return this;
        }
    }

    protected c(Context context, int i10) {
        super(context, resolveDialogTheme(context, i10));
        this.f394a = new AlertController(getContext(), this, getWindow());
    }

    static int resolveDialogTheme(Context context, int i10) {
        if (((i10 >>> 24) & 255) >= 1) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button f(int i10) {
        return this.f394a.c(i10);
    }

    public ListView g() {
        return this.f394a.e();
    }

    @Override // androidx.appcompat.app.o, androidx.activity.q, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f394a.f();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (this.f394a.g(i10, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (this.f394a.h(i10, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i10, keyEvent);
    }

    @Override // androidx.appcompat.app.o, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f394a.q(charSequence);
    }
}
