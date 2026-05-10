package androidx.preference;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.preference.DialogPreference;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class PreferenceDialogFragment extends DialogFragment implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DialogPreference f2899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CharSequence f2900b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CharSequence f2901c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CharSequence f2902f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CharSequence f2903h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f2904i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BitmapDrawable f2905j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f2906k;

    @Deprecated
    public PreferenceDialogFragment() {
    }

    private void g(Dialog dialog) {
        dialog.getWindow().setSoftInputMode(5);
    }

    public DialogPreference a() {
        if (this.f2899a == null) {
            this.f2899a = (DialogPreference) ((DialogPreference.a) getTargetFragment()).findPreference(getArguments().getString("key"));
        }
        return this.f2899a;
    }

    protected boolean b() {
        return false;
    }

    protected void c(View view) {
        int i10;
        View viewFindViewById = view.findViewById(R.id.message);
        if (viewFindViewById != null) {
            CharSequence charSequence = this.f2903h;
            if (TextUtils.isEmpty(charSequence)) {
                i10 = 8;
            } else {
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(charSequence);
                }
                i10 = 0;
            }
            if (viewFindViewById.getVisibility() != i10) {
                viewFindViewById.setVisibility(i10);
            }
        }
    }

    protected View d(Context context) {
        int i10 = this.f2904i;
        if (i10 == 0) {
            return null;
        }
        return LayoutInflater.from(context).inflate(i10, (ViewGroup) null);
    }

    public abstract void e(boolean z10);

    protected void f(AlertDialog.Builder builder) {
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i10) {
        this.f2906k = i10;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ComponentCallbacks2 targetFragment = getTargetFragment();
        if (!(targetFragment instanceof DialogPreference.a)) {
            throw new IllegalStateException("Target fragment must implement TargetFragment interface");
        }
        DialogPreference.a aVar = (DialogPreference.a) targetFragment;
        String string = getArguments().getString("key");
        if (bundle != null) {
            this.f2900b = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.f2901c = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.f2902f = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.f2903h = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.f2904i = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.f2905j = new BitmapDrawable(getResources(), bitmap);
                return;
            }
            return;
        }
        DialogPreference dialogPreference = (DialogPreference) aVar.findPreference(string);
        this.f2899a = dialogPreference;
        this.f2900b = dialogPreference.getDialogTitle();
        this.f2901c = this.f2899a.getPositiveButtonText();
        this.f2902f = this.f2899a.getNegativeButtonText();
        this.f2903h = this.f2899a.getDialogMessage();
        this.f2904i = this.f2899a.getDialogLayoutResource();
        Drawable dialogIcon = this.f2899a.getDialogIcon();
        if (dialogIcon == null || (dialogIcon instanceof BitmapDrawable)) {
            this.f2905j = (BitmapDrawable) dialogIcon;
            return;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dialogIcon.getIntrinsicWidth(), dialogIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        dialogIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        dialogIcon.draw(canvas);
        this.f2905j = new BitmapDrawable(getResources(), bitmapCreateBitmap);
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Activity activity = getActivity();
        this.f2906k = -2;
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(activity).setTitle(this.f2900b).setIcon(this.f2905j).setPositiveButton(this.f2901c, this).setNegativeButton(this.f2902f, this);
        View viewD = d(activity);
        if (viewD != null) {
            c(viewD);
            negativeButton.setView(viewD);
        } else {
            negativeButton.setMessage(this.f2903h);
        }
        f(negativeButton);
        AlertDialog alertDialogCreate = negativeButton.create();
        if (b()) {
            g(alertDialogCreate);
        }
        return alertDialogCreate;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        e(this.f2906k == -1);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.f2900b);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.f2901c);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.f2902f);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.f2903h);
        bundle.putInt("PreferenceDialogFragment.layout", this.f2904i);
        BitmapDrawable bitmapDrawable = this.f2905j;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }
}
