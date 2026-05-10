package com.coloros.translate.ui.dialoguetranslation;

import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.ScrollingMovementMethod;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.coloros.translate.R;
import com.coloros.translate.ui.dialoguetranslation.DialogTranslationActivity;
import com.coui.appcompat.edittext.COUIEditText;
import com.coui.appcompat.theme.COUIThemeOverlay;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.support.snackbar.R$drawable;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class EditTranslateTextActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: h */
    public static final a f6194h = new a(null);

    /* JADX INFO: renamed from: a */
    private COUIEditText f6195a;

    /* JADX INFO: renamed from: b */
    private COUIToolbar f6196b;

    /* JADX INFO: renamed from: c */
    private MenuItem f6197c;

    /* JADX INFO: renamed from: f */
    private String f6198f = "";

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable == null || !kotlin.text.r.Y(editable)) {
                MenuItem menuItem = EditTranslateTextActivity.this.f6197c;
                if (menuItem == null) {
                    return;
                }
                menuItem.setEnabled(!kotlin.jvm.internal.r.a(String.valueOf(editable), EditTranslateTextActivity.this.f6198f));
                return;
            }
            MenuItem menuItem2 = EditTranslateTextActivity.this.f6197c;
            if (menuItem2 == null) {
                return;
            }
            menuItem2.setEnabled(false);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            com.coloros.translate.utils.c0.f7098a.d("EditTranslateTextActivity", "addTextChangedListener beforeTextChanged");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            com.coloros.translate.utils.c0.f7098a.d("EditTranslateTextActivity", "addTextChangedListener onTextChanged");
        }
    }

    public static final boolean j0(EditTranslateTextActivity this$0, MenuItem menuItem) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (menuItem.getItemId() != R.id.select_all) {
            return true;
        }
        DialogTranslationActivity.a aVar = DialogTranslationActivity.O0;
        COUIEditText cOUIEditText = this$0.f6195a;
        if (cOUIEditText == null) {
            kotlin.jvm.internal.r.r("mContentText");
            cOUIEditText = null;
        }
        aVar.b(String.valueOf(cOUIEditText.getText()));
        this$0.setResult(100);
        this$0.finish();
        return true;
    }

    public static final void k0(EditTranslateTextActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.setResult(-100, new Intent());
        this$0.finish();
    }

    public static final void l0(EditTranslateTextActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        COUIEditText cOUIEditText = this$0.f6195a;
        COUIEditText cOUIEditText2 = null;
        if (cOUIEditText == null) {
            kotlin.jvm.internal.r.r("mContentText");
            cOUIEditText = null;
        }
        cOUIEditText.requestFocus();
        Object systemService = this$0.getSystemService("input_method");
        InputMethodManager inputMethodManager = systemService instanceof InputMethodManager ? (InputMethodManager) systemService : null;
        if (inputMethodManager != null) {
            COUIEditText cOUIEditText3 = this$0.f6195a;
            if (cOUIEditText3 == null) {
                kotlin.jvm.internal.r.r("mContentText");
            } else {
                cOUIEditText2 = cOUIEditText3;
            }
            inputMethodManager.showSoftInput(cOUIEditText2, 0);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        COUIEditText cOUIEditText = null;
        setRequestedOrientation((com.coloros.translate.utils.o0.e() || com.coloros.translate.utils.z.g(null, 1, null)) ? -1 : 5);
        setContentView(R.layout.fragment_edit_modal_view);
        View viewFindViewById = findViewById(R.id.editText);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.f6195a = (COUIEditText) viewFindViewById;
        COUIThemeOverlay.getInstance().applyThemeOverlays(this);
        View viewFindViewById2 = findViewById(R.id.toolbar);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        COUIToolbar cOUIToolbar = (COUIToolbar) viewFindViewById2;
        this.f6196b = cOUIToolbar;
        if (cOUIToolbar == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar = null;
        }
        cOUIToolbar.setTitle(R.string.action_edit);
        cOUIToolbar.setIsTitleCenterStyle(false);
        cOUIToolbar.setNavigationIcon(R$drawable.coui_menu_ic_cancel);
        cOUIToolbar.inflateMenu(R.menu.modal_view_menu);
        MenuItem menuItemFindItem = cOUIToolbar.getMenu().findItem(R.id.select_all);
        this.f6197c = menuItemFindItem;
        if (menuItemFindItem != null) {
            menuItemFindItem.setEnabled(false);
        }
        cOUIToolbar.setOnMenuItemClickListener(new Toolbar.h() { // from class: com.coloros.translate.ui.dialoguetranslation.l0
            @Override // androidx.appcompat.widget.Toolbar.h
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return EditTranslateTextActivity.j0(this.f6330a, menuItem);
            }
        });
        cOUIToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTranslateTextActivity.k0(this.f6332a, view);
            }
        });
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
        }
        DialogTranslationActivity.a aVar = DialogTranslationActivity.O0;
        this.f6198f = aVar.a();
        aVar.b("");
        if (bundle != null) {
            String string = bundle.getString("inputText", "");
            kotlin.jvm.internal.r.d(string, "getString(...)");
            this.f6198f = string;
        }
        COUIEditText cOUIEditText2 = this.f6195a;
        if (cOUIEditText2 == null) {
            kotlin.jvm.internal.r.r("mContentText");
            cOUIEditText2 = null;
        }
        cOUIEditText2.setText(this.f6198f);
        COUIEditText cOUIEditText3 = this.f6195a;
        if (cOUIEditText3 == null) {
            kotlin.jvm.internal.r.r("mContentText");
            cOUIEditText3 = null;
        }
        COUIEditText cOUIEditText4 = this.f6195a;
        if (cOUIEditText4 == null) {
            kotlin.jvm.internal.r.r("mContentText");
            cOUIEditText4 = null;
        }
        Editable text = cOUIEditText4.getText();
        kotlin.jvm.internal.r.b(text);
        int length = text.length();
        COUIEditText cOUIEditText5 = this.f6195a;
        if (cOUIEditText5 == null) {
            kotlin.jvm.internal.r.r("mContentText");
            cOUIEditText5 = null;
        }
        Editable text2 = cOUIEditText5.getText();
        kotlin.jvm.internal.r.b(text2);
        cOUIEditText3.setSelection(length, text2.length());
        com.coloros.translate.utils.z0.g(500L, new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.n0
            @Override // java.lang.Runnable
            public final void run() {
                EditTranslateTextActivity.l0(this.f6334a);
            }
        });
        COUIEditText cOUIEditText6 = this.f6195a;
        if (cOUIEditText6 == null) {
            kotlin.jvm.internal.r.r("mContentText");
            cOUIEditText6 = null;
        }
        cOUIEditText6.setMovementMethod(ScrollingMovementMethod.getInstance());
        COUIEditText cOUIEditText7 = this.f6195a;
        if (cOUIEditText7 == null) {
            kotlin.jvm.internal.r.r("mContentText");
        } else {
            cOUIEditText = cOUIEditText7;
        }
        cOUIEditText.addTextChangedListener(new b());
        Window window = getWindow();
        kotlin.jvm.internal.r.d(window, "getWindow(...)");
        com.coloros.translate.utils.f0.b(window);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        kotlin.jvm.internal.r.e(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("inputText", this.f6198f);
    }
}
