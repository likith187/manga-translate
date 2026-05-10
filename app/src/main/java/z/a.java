package z;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;

/* JADX INFO: loaded from: classes.dex */
final class a {
    public static final a INSTANCE = new a();

    private a() {
    }

    public static final void a(Bundle bundle, String str, Size size) {
        bundle.putSize(str, size);
    }

    public static final void b(Bundle bundle, String str, SizeF sizeF) {
        bundle.putSizeF(str, sizeF);
    }
}
