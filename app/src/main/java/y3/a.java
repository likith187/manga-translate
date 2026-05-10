package y3;

import android.graphics.Canvas;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: y3.a$a */
    public interface InterfaceC0243a {
        void a(Canvas canvas);
    }

    public static int a(Canvas canvas, float f10, float f11, float f12, float f13, int i10) {
        return canvas.saveLayerAlpha(f10, f11, f12, f13, i10);
    }
}
