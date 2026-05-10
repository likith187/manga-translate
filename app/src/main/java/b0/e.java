package b0;

import android.text.TextUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {
    public static int a(Locale locale) {
        return TextUtils.getLayoutDirectionFromLocale(locale);
    }
}
