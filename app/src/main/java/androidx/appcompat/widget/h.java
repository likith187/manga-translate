package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final EditText f892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h0.a f893b;

    h(EditText editText) {
        this.f892a = editText;
        this.f893b = new h0.a(editText, false);
    }

    KeyListener a(KeyListener keyListener) {
        return b(keyListener) ? this.f893b.a(keyListener) : keyListener;
    }

    boolean b(KeyListener keyListener) {
        return !(keyListener instanceof NumberKeyListener);
    }

    boolean c() {
        return this.f893b.b();
    }

    void d(AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = this.f892a.getContext().obtainStyledAttributes(attributeSet, R$styleable.AppCompatTextView, i10, 0);
        try {
            boolean z10 = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_emojiCompatEnabled) ? typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTextView_emojiCompatEnabled, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            f(z10);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    InputConnection e(InputConnection inputConnection, EditorInfo editorInfo) {
        return this.f893b.c(inputConnection, editorInfo);
    }

    void f(boolean z10) {
        this.f893b.d(z10);
    }
}
