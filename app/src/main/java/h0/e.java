package h0;

import android.text.Editable;
import android.text.method.KeyListener;
import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class e implements KeyListener {

    /* JADX INFO: renamed from: a */
    private final KeyListener f12189a;

    /* JADX INFO: renamed from: b */
    private final a f12190b;

    public static class a {
        public boolean a(Editable editable, int i10, KeyEvent keyEvent) {
            return androidx.emoji2.text.e.g(editable, i10, keyEvent);
        }
    }

    e(KeyListener keyListener) {
        this(keyListener, new a());
    }

    @Override // android.text.method.KeyListener
    public void clearMetaKeyState(View view, Editable editable, int i10) {
        this.f12189a.clearMetaKeyState(view, editable, i10);
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return this.f12189a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i10, KeyEvent keyEvent) {
        return this.f12190b.a(editable, i10, keyEvent) || this.f12189a.onKeyDown(view, editable, i10, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f12189a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyUp(View view, Editable editable, int i10, KeyEvent keyEvent) {
        return this.f12189a.onKeyUp(view, editable, i10, keyEvent);
    }

    e(KeyListener keyListener, a aVar) {
        this.f12189a = keyListener;
        this.f12190b = aVar;
    }
}
