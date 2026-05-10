package z;

import android.content.res.Configuration;
import android.os.LocaleList;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    static class a {
        static LocaleList a(Configuration configuration) {
            return configuration.getLocales();
        }
    }

    public static f a(Configuration configuration) {
        return f.h(a.a(configuration));
    }
}
