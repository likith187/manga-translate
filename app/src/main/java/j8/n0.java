package j8;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n0 {

    public static class a {

        /* JADX INFO: renamed from: a */
        public Typeface f12835a = null;

        /* JADX INFO: renamed from: b */
        public boolean f12836b = true;

        /* JADX INFO: renamed from: c */
        public boolean f12837c = false;

        /* JADX INFO: renamed from: d */
        public boolean f12838d = false;

        /* JADX INFO: renamed from: e */
        public boolean f12839e = false;

        /* JADX INFO: renamed from: f */
        public boolean f12840f = true;

        /* JADX INFO: renamed from: g */
        public boolean f12841g = true;

        /* JADX INFO: renamed from: h */
        public boolean f12842h = true;

        /* JADX INFO: renamed from: i */
        public c1 f12843i = new c1();

        /* JADX INFO: renamed from: j */
        public int f12844j = 4;

        /* JADX INFO: renamed from: k */
        public String f12845k = null;

        /* JADX INFO: renamed from: l */
        public boolean f12846l = false;
    }

    public static n0 a(Bitmap bitmap, a aVar) {
        return new a1(bitmap, aVar);
    }

    public static Bitmap c(Bitmap bitmap, List list, Context context, a aVar) {
        return a(bitmap, aVar).b(context, list);
    }

    public abstract Bitmap b(Context context, List list);
}
