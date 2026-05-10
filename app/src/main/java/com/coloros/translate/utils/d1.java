package com.coloros.translate.utils;

import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.oplus.splitscreen.OplusSplitScreenManager;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class d1 {
    public static final d1 INSTANCE = new d1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f7110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f7111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Integer f7112c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final n8.j f7113d;

    static final class a extends kotlin.jvm.internal.s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Boolean mo8invoke() {
            return Boolean.FALSE;
        }
    }

    static {
        TranslationApplication.a aVar = TranslationApplication.f4754b;
        String string = aVar.a().getString(R.string.convert_key_oppo);
        kotlin.jvm.internal.r.d(string, "getString(...)");
        f7110a = string;
        String string2 = aVar.a().getString(R.string.convert_key_next);
        kotlin.jvm.internal.r.d(string2, "getString(...)");
        f7111b = string2;
        f7113d = n8.k.b(a.INSTANCE);
    }

    private d1() {
    }

    public static final synchronized void a() {
        f7112c = null;
        c0.f7098a.i("TranslationUtils", "clearValue");
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final android.text.Spanned b(com.coloros.translate.utils.p0 r7, android.content.Context r8) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.utils.d1.b(com.coloros.translate.utils.p0, android.content.Context):android.text.Spanned");
    }

    public static final synchronized Integer c() {
        c0.f7098a.i("TranslationUtils", "getValue: " + f7112c);
        return f7112c;
    }

    public static final boolean e() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            boolean zIsInSplitScreenMode = OplusSplitScreenManager.getInstance().isInSplitScreenMode();
            c0.f7098a.d("isInSplitScreenModeFunc", "isInSplitScreenMode: " + zIsInSplitScreenMode);
            objM59constructorimpl = n8.r.m59constructorimpl(Boolean.valueOf(zIsInSplitScreenMode));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("isInSplitScreenModeFunc", "isInSplitScreenMode error " + thM62exceptionOrNullimpl);
            objM59constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM59constructorimpl).booleanValue();
    }

    public static final synchronized void f(int i10) {
        f7112c = Integer.valueOf(i10);
        c0.f7098a.i("TranslationUtils", "setValue: " + i10);
    }

    public final boolean d() {
        return ((Boolean) f7113d.getValue()).booleanValue();
    }
}
