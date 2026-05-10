package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class g0 extends a0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference f891b;

    public g0(Context context, Resources resources) {
        super(resources);
        this.f891b = new WeakReference(context);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i10) {
        Drawable drawableA = a(i10);
        Context context = (Context) this.f891b.get();
        if (drawableA != null && context != null) {
            z.g().w(context, i10, drawableA);
        }
        return drawableA;
    }
}
