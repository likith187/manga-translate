package l2;

import android.content.Context;
import android.content.Intent;
import com.coloros.translate.screen.ScreenTranslationService;
import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.r;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f13574a;
    public static final a INSTANCE = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f13575b = -1;

    private a() {
    }

    public static final void a(Context context, Intent intent) {
        if (context == null || intent == null) {
            c0.f7098a.q("ScreenTranslationLauncher", "autoExitIfNecessary:context or intent is null");
            return;
        }
        String stringExtra = intent.getStringExtra("extra_from_package");
        if (stringExtra == null) {
            stringExtra = "";
        }
        String action = intent.getAction();
        c0.a aVar = c0.f7098a;
        aVar.d("ScreenTranslationLauncher", "autoExitIfNecessary:" + stringExtra + ", " + action);
        if (r.a(action, "oplus.intent.action.GLOBAL_TRANSLATION_EXIT") && b(stringExtra)) {
            INSTANCE.c(context, stringExtra);
        } else {
            aVar.q("ScreenTranslationLauncher", "autoExitIfNecessary:this call is illegal!");
        }
    }

    public static final boolean b(String str) {
        return (str == null || str.length() == 0 || !r.a(f13574a, str)) ? false : true;
    }

    public static final String d() {
        String str = f13574a;
        return str == null ? "" : str;
    }

    public static final int e() {
        return f13575b;
    }

    public static final boolean f(Intent intent) {
        if (intent != null) {
            return intent.hasExtra("extra_auto_exit") && intent.hasExtra("extra_from_package");
        }
        c0.f7098a.q("ScreenTranslationLauncher", "isAutoExitCall:intent is null");
        return false;
    }

    public static final void g() {
        f13574a = "";
        f13575b = -1;
    }

    public static final void h(Intent intent) {
        if (intent == null) {
            c0.f7098a.q("ScreenTranslationLauncher", "setCaller:intent is null");
            return;
        }
        String stringExtra = intent.getStringExtra("extra_from_package");
        int intExtra = intent.getIntExtra("type", -1);
        f13574a = stringExtra;
        f13575b = intExtra;
        c0.f7098a.d("ScreenTranslationLauncher", "setCaller:" + f13574a + ", " + f13575b);
    }

    public final void c(Context context, String fromPackage) {
        Object objM59constructorimpl;
        r.e(context, "context");
        r.e(fromPackage, "fromPackage");
        try {
            r.a aVar = n8.r.Companion;
            Intent intent = new Intent(context, (Class<?>) ScreenTranslationService.class);
            intent.putExtra("extra_from_package", fromPackage);
            intent.putExtra("extra_exit", true);
            objM59constructorimpl = n8.r.m59constructorimpl(context.startForegroundService(intent));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("ScreenTranslationLauncher", "startService onFailure : " + thM62exceptionOrNullimpl);
        }
    }
}
