package u;

import android.graphics.BlendMode;
import android.graphics.Paint;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal f15811a = new ThreadLocal();

    static class a {
        static boolean a(Paint paint, String str) {
            return paint.hasGlyph(str);
        }
    }

    static class b {
        static void a(Paint paint, Object obj) {
            paint.setBlendMode((BlendMode) obj);
        }
    }

    public static boolean a(Paint paint, String str) {
        return a.a(paint, str);
    }

    public static boolean b(Paint paint, u.a aVar) {
        b.a(paint, aVar != null ? c.a(aVar) : null);
        return true;
    }
}
