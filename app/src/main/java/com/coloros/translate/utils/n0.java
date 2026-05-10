package com.coloros.translate.utils;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import com.coloros.translate.TranslationApplication;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class n0 {
    public static final n0 INSTANCE = new n0();

    private n0() {
    }

    public static final Resources a(Locale locale) {
        kotlin.jvm.internal.r.e(locale, "locale");
        TranslationApplication.a aVar = TranslationApplication.f4754b;
        Configuration configuration = new Configuration(aVar.a().getResources().getConfiguration());
        configuration.setLocale(locale);
        Resources resources = aVar.a().createConfigurationContext(configuration).getResources();
        kotlin.jvm.internal.r.d(resources, "getResources(...)");
        return resources;
    }

    public static final String b(int i10) {
        String string = TranslationApplication.f4754b.a().getString(i10);
        kotlin.jvm.internal.r.d(string, "getString(...)");
        return string;
    }

    public static final String c(int i10, Locale locale) {
        kotlin.jvm.internal.r.e(locale, "locale");
        String string = a(locale).getString(i10);
        kotlin.jvm.internal.r.d(string, "getString(...)");
        return string;
    }

    public static final boolean d() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }
}
