package h0;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.emoji2.text.e;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class d implements InputFilter {

    /* JADX INFO: renamed from: a */
    private final TextView f12185a;

    /* JADX INFO: renamed from: b */
    private e.f f12186b;

    private static class a extends e.f {

        /* JADX INFO: renamed from: a */
        private final Reference f12187a;

        /* JADX INFO: renamed from: b */
        private final Reference f12188b;

        a(TextView textView, d dVar) {
            this.f12187a = new WeakReference(textView);
            this.f12188b = new WeakReference(dVar);
        }

        private boolean c(TextView textView, InputFilter inputFilter) {
            InputFilter[] filters;
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return false;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.emoji2.text.e.f
        public void b() {
            CharSequence text;
            CharSequence charSequenceP;
            super.b();
            TextView textView = (TextView) this.f12187a.get();
            if (c(textView, (InputFilter) this.f12188b.get()) && textView.isAttachedToWindow() && text != (charSequenceP = androidx.emoji2.text.e.c().p((text = textView.getText())))) {
                int selectionStart = Selection.getSelectionStart(charSequenceP);
                int selectionEnd = Selection.getSelectionEnd(charSequenceP);
                textView.setText(charSequenceP);
                if (charSequenceP instanceof Spannable) {
                    d.b((Spannable) charSequenceP, selectionStart, selectionEnd);
                }
            }
        }
    }

    d(TextView textView) {
        this.f12185a = textView;
    }

    private e.f a() {
        if (this.f12186b == null) {
            this.f12186b = new a(this.f12185a, this);
        }
        return this.f12186b;
    }

    static void b(Spannable spannable, int i10, int i11) {
        if (i10 >= 0 && i11 >= 0) {
            Selection.setSelection(spannable, i10, i11);
        } else if (i10 >= 0) {
            Selection.setSelection(spannable, i10);
        } else if (i11 >= 0) {
            Selection.setSelection(spannable, i11);
        }
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        if (this.f12185a.isInEditMode()) {
            return charSequence;
        }
        int iE = androidx.emoji2.text.e.c().e();
        if (iE != 0) {
            if (iE == 1) {
                if ((i13 == 0 && i12 == 0 && spanned.length() == 0 && charSequence == this.f12185a.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i10 != 0 || i11 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i10, i11);
                }
                return androidx.emoji2.text.e.c().q(charSequence, 0, charSequence.length());
            }
            if (iE != 3) {
                return charSequence;
            }
        }
        androidx.emoji2.text.e.c().t(a());
        return charSequence;
    }
}
