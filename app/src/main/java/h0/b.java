package h0;

import android.text.Editable;
import androidx.emoji2.text.n;

/* JADX INFO: loaded from: classes.dex */
final class b extends Editable.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f12180a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Editable.Factory f12181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Class f12182c;

    private b() {
        try {
            f12182c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, b.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    public static Editable.Factory getInstance() {
        if (f12181b == null) {
            synchronized (f12180a) {
                try {
                    if (f12181b == null) {
                        f12181b = new b();
                    }
                } finally {
                }
            }
        }
        return f12181b;
    }

    @Override // android.text.Editable.Factory
    public Editable newEditable(CharSequence charSequence) {
        Class cls = f12182c;
        return cls != null ? n.c(cls, charSequence) : super.newEditable(charSequence);
    }
}
