package com.coloros.translate.ui.simultaneous.history;

import android.content.DialogInterface;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.c;
import androidx.recyclerview.widget.RecyclerView;
import com.coloros.translate.R;
import com.coloros.translate.base.BaseActivity;
import com.coloros.translate.base.R$string;
import com.coloros.translate.base.q;
import com.coloros.translate.utils.z0;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import com.coui.appcompat.edittext.COUIEditText;
import com.support.appcompat.R$color;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class SimultaneousBaseActivity<T extends com.coloros.translate.base.q> extends BaseActivity<T> {

    /* JADX INFO: renamed from: q */
    public static final a f6479q = new a(null);

    /* JADX INFO: renamed from: o */
    private androidx.appcompat.app.c f6480o;

    /* JADX INFO: renamed from: p */
    private androidx.appcompat.app.c f6481p;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    protected static final class b extends RecyclerView.o {

        /* JADX INFO: renamed from: a */
        private final int f6482a;

        public b(int i10) {
            this.f6482a = i10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void getItemOffsets(Rect outRect, int i10, RecyclerView parent) {
            kotlin.jvm.internal.r.e(outRect, "outRect");
            kotlin.jvm.internal.r.e(parent, "parent");
            outRect.bottom = this.f6482a;
        }
    }

    public static final class c implements TextWatcher {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ COUIEditText f6483a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ TextView f6484b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ View f6485c;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ SimultaneousBaseActivity f6486f;

        c(COUIEditText cOUIEditText, TextView textView, View view, SimultaneousBaseActivity simultaneousBaseActivity) {
            this.f6483a = cOUIEditText;
            this.f6484b = textView;
            this.f6485c = view;
            this.f6486f = simultaneousBaseActivity;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousBaseActivity", "addTextChangedListener afterTextChanged");
            if (editable != null) {
                androidx.appcompat.app.c cVar = this.f6486f.f6480o;
                Button buttonF = cVar != null ? cVar.f(-1) : null;
                if (buttonF == null) {
                    return;
                }
                buttonF.setEnabled(kotlin.text.r.N0(editable).length() > 0);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousBaseActivity", "addTextChangedListener beforeTextChanged");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            if (charSequence != null) {
                COUIEditText cOUIEditText = this.f6483a;
                TextView textView = this.f6484b;
                View view = this.f6485c;
                SimultaneousBaseActivity simultaneousBaseActivity = this.f6486f;
                if (charSequence.length() <= 50) {
                    textView.setVisibility(4);
                    view.setBackgroundColor(simultaneousBaseActivity.getColor(R$color.coui_color_label_theme_blue));
                    return;
                }
                if (com.coloros.translate.ui.simultaneous.utils.a.c(charSequence.subSequence(charSequence.length() - i12, charSequence.length()))) {
                    Editable text = cOUIEditText.getText();
                    if (text != null) {
                        text.delete(charSequence.length() - i12, charSequence.length());
                    }
                } else {
                    Editable text2 = cOUIEditText.getText();
                    if (text2 != null) {
                        text2.delete(50, charSequence.length());
                    }
                }
                com.coloros.translate.utils.c0.f7098a.i("SimultaneousBaseActivity", "showRenameDialog onTextChanged name is too long:" + charSequence.length());
                textView.setVisibility(0);
                view.setBackgroundColor(simultaneousBaseActivity.getColor(R$color.coui_color_error));
            }
        }
    }

    public static /* synthetic */ void K0(SimultaneousBaseActivity simultaneousBaseActivity, int i10, int i11, w8.a aVar, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showDeleteDialog");
        }
        if ((i12 & 1) != 0) {
            i10 = 1;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        simultaneousBaseActivity.J0(i10, i11, aVar);
    }

    public static final void L0(w8.a deleteClickCallback, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.r.e(deleteClickCallback, "$deleteClickCallback");
        deleteClickCallback.mo8invoke();
    }

    public static final void M0(DialogInterface dialogInterface, int i10) {
    }

    public static final void O0(w8.l saveClickCallback, COUIEditText nameEt, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.r.e(saveClickCallback, "$saveClickCallback");
        kotlin.jvm.internal.r.e(nameEt, "$nameEt");
        saveClickCallback.invoke(kotlin.text.r.N0(String.valueOf(nameEt.getText())).toString());
    }

    public static final void P0(DialogInterface dialogInterface, int i10) {
    }

    public static final void Q0(COUIEditText nameEt, SimultaneousBaseActivity this$0) {
        kotlin.jvm.internal.r.e(nameEt, "$nameEt");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        nameEt.requestFocus();
        Object systemService = this$0.getSystemService("input_method");
        InputMethodManager inputMethodManager = systemService instanceof InputMethodManager ? (InputMethodManager) systemService : null;
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(nameEt, 1);
        }
    }

    protected final void J0(int i10, int i11, final w8.a deleteClickCallback) {
        String quantityString;
        String quantityString2;
        kotlin.jvm.internal.r.e(deleteClickCallback, "deleteClickCallback");
        if (i10 == 1) {
            quantityString = getResources().getString(R.string.delete_one_item);
            kotlin.jvm.internal.r.d(quantityString, "getString(...)");
            quantityString2 = getResources().getString(R.string.if_delete_one_item);
            kotlin.jvm.internal.r.d(quantityString2, "getString(...)");
        } else if (i10 == i11) {
            quantityString = getResources().getString(R.string.remove_all_items);
            kotlin.jvm.internal.r.d(quantityString, "getString(...)");
            quantityString2 = getResources().getString(R.string.if_remove_all_items);
            kotlin.jvm.internal.r.d(quantityString2, "getString(...)");
        } else {
            quantityString = getResources().getQuantityString(R.plurals.delete_item, i10, Integer.valueOf(i10));
            kotlin.jvm.internal.r.d(quantityString, "getQuantityString(...)");
            quantityString2 = getResources().getQuantityString(R.plurals.if_delete_item, i10, Integer.valueOf(i10));
            kotlin.jvm.internal.r.d(quantityString2, "getQuantityString(...)");
        }
        COUIAlertDialogBuilder negativeButton = new COUIAlertDialogBuilder(this).setTitle((CharSequence) quantityString2).setMessage((CharSequence) quantityString).setNeutralButton(i10 == i11 ? R.string.delete_all : R.string.action_delete, new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i12) {
                SimultaneousBaseActivity.L0(deleteClickCallback, dialogInterface, i12);
            }
        }).setNegativeButton((CharSequence) getResources().getString(R$string.action_cancel), new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.c
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i12) {
                SimultaneousBaseActivity.M0(dialogInterface, i12);
            }
        });
        this.f6481p = negativeButton != null ? negativeButton.show() : null;
    }

    protected final void N0(String oldName, final w8.l saveClickCallback) {
        kotlin.jvm.internal.r.e(oldName, "oldName");
        kotlin.jvm.internal.r.e(saveClickCallback, "saveClickCallback");
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_simultaneous_history_rename, (ViewGroup) null);
        kotlin.jvm.internal.r.d(viewInflate, "inflate(...)");
        View viewFindViewById = viewInflate.findViewById(R.id.et_name);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        final COUIEditText cOUIEditText = (COUIEditText) viewFindViewById;
        View viewFindViewById2 = viewInflate.findViewById(R.id.divider_line);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        View viewFindViewById3 = viewInflate.findViewById(R.id.tx_error_tips);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        cOUIEditText.setFastDeletable(true);
        cOUIEditText.addTextChangedListener(new c(cOUIEditText, (TextView) viewFindViewById3, viewFindViewById2, this));
        cOUIEditText.setText(oldName);
        c.a negativeButton = new COUIAlertDialogBuilder(this).setTitle(R.string.simultaneous_note_rename_title).setView(viewInflate).setPositiveButton(R.string.save, new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.d
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                SimultaneousBaseActivity.O0(saveClickCallback, cOUIEditText, dialogInterface, i10);
            }
        }).setNegativeButton(getResources().getString(R$string.action_cancel), new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.e
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                SimultaneousBaseActivity.P0(dialogInterface, i10);
            }
        });
        this.f6480o = negativeButton != null ? negativeButton.show() : null;
        z0.g(500L, new Runnable() { // from class: com.coloros.translate.ui.simultaneous.history.f
            @Override // java.lang.Runnable
            public final void run() {
                SimultaneousBaseActivity.Q0(cOUIEditText, this);
            }
        });
    }

    @Override // com.coloros.translate.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        androidx.appcompat.app.c cVar = this.f6480o;
        if (cVar != null) {
            cVar.dismiss();
        }
        androidx.appcompat.app.c cVar2 = this.f6481p;
        if (cVar2 != null) {
            cVar2.dismiss();
        }
    }
}
