package h0;

import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f12175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f12176b = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f12177c = 0;

    /* JADX INFO: renamed from: h0.a$a, reason: collision with other inner class name */
    private static class C0146a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final EditText f12178a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final g f12179b;

        C0146a(EditText editText, boolean z10) {
            this.f12178a = editText;
            g gVar = new g(editText, z10);
            this.f12179b = gVar;
            editText.addTextChangedListener(gVar);
            editText.setEditableFactory(h0.b.getInstance());
        }

        @Override // h0.a.b
        KeyListener a(KeyListener keyListener) {
            if (keyListener instanceof e) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            return keyListener instanceof NumberKeyListener ? keyListener : new e(keyListener);
        }

        @Override // h0.a.b
        boolean b() {
            return this.f12179b.b();
        }

        @Override // h0.a.b
        InputConnection c(InputConnection inputConnection, EditorInfo editorInfo) {
            return inputConnection instanceof c ? inputConnection : new c(this.f12178a, inputConnection, editorInfo);
        }

        @Override // h0.a.b
        void d(boolean z10) {
            this.f12179b.d(z10);
        }
    }

    static class b {
        b() {
        }

        abstract KeyListener a(KeyListener keyListener);

        abstract boolean b();

        abstract InputConnection c(InputConnection inputConnection, EditorInfo editorInfo);

        abstract void d(boolean z10);
    }

    public a(EditText editText, boolean z10) {
        c0.h.f(editText, "editText cannot be null");
        this.f12175a = new C0146a(editText, z10);
    }

    public KeyListener a(KeyListener keyListener) {
        return this.f12175a.a(keyListener);
    }

    public boolean b() {
        return this.f12175a.b();
    }

    public InputConnection c(InputConnection inputConnection, EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        return this.f12175a.c(inputConnection, editorInfo);
    }

    public void d(boolean z10) {
        this.f12175a.d(z10);
    }
}
