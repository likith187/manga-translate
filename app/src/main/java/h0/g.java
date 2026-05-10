package h0;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.e;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class g implements TextWatcher {

    /* JADX INFO: renamed from: a */
    private final EditText f12196a;

    /* JADX INFO: renamed from: b */
    private final boolean f12197b;

    /* JADX INFO: renamed from: c */
    private e.f f12198c;

    /* JADX INFO: renamed from: f */
    private int f12199f = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: h */
    private int f12200h = 0;

    /* JADX INFO: renamed from: i */
    private boolean f12201i = true;

    private static class a extends e.f {

        /* JADX INFO: renamed from: a */
        private final Reference f12202a;

        a(EditText editText) {
            this.f12202a = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.e.f
        public void b() {
            super.b();
            g.c((EditText) this.f12202a.get(), 1);
        }
    }

    g(EditText editText, boolean z10) {
        this.f12196a = editText;
        this.f12197b = z10;
    }

    private e.f a() {
        if (this.f12198c == null) {
            this.f12198c = new a(this.f12196a);
        }
        return this.f12198c;
    }

    static void c(EditText editText, int i10) {
        if (i10 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            androidx.emoji2.text.e.c().p(editableText);
            d.b(editableText, selectionStart, selectionEnd);
        }
    }

    private boolean e() {
        return (this.f12201i && (this.f12197b || androidx.emoji2.text.e.i())) ? false : true;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    public boolean b() {
        return this.f12201i;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    public void d(boolean z10) {
        if (this.f12201i != z10) {
            if (this.f12198c != null) {
                androidx.emoji2.text.e.c().u(this.f12198c);
            }
            this.f12201i = z10;
            if (z10) {
                c(this.f12196a, androidx.emoji2.text.e.c().e());
            }
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        if (this.f12196a.isInEditMode() || e() || i11 > i12 || !(charSequence instanceof Spannable)) {
            return;
        }
        int iE = androidx.emoji2.text.e.c().e();
        if (iE != 0) {
            if (iE == 1) {
                androidx.emoji2.text.e.c().s((Spannable) charSequence, i10, i10 + i12, this.f12199f, this.f12200h);
                return;
            } else if (iE != 3) {
                return;
            }
        }
        androidx.emoji2.text.e.c().t(a());
    }
}
