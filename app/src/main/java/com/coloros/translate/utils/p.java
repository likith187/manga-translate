package com.coloros.translate.utils;

import android.os.Build;
import java.util.Iterator;
import java.util.List;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class p {
    public static final p INSTANCE = new p();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List f7137a = kotlin.collections.o.k("22003", "22203");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final n8.j f7138b = n8.k.b(e.INSTANCE);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final n8.j f7139c = n8.k.b(a.INSTANCE);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final n8.j f7140d = n8.k.b(c.INSTANCE);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final n8.j f7141e = n8.k.b(d.INSTANCE);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final n8.j f7142f = n8.k.b(b.INSTANCE);

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

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Boolean mo8invoke() {
            try {
                r.a aVar = n8.r.Companion;
                String strB = r0.b("ro.oplus.product.series", "");
                kotlin.jvm.internal.r.d(strB, "get(...)");
                boolean zI = kotlin.text.r.I(strB, "find", true);
                Boolean boolValueOf = Boolean.valueOf(zI);
                c0.f7098a.d("DeviceUtils", "isFind:" + zI);
                return boolValueOf;
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.e("DeviceUtils", "isFind error" + thM62exceptionOrNullimpl.getMessage());
                }
                return Boolean.FALSE;
            }
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Boolean mo8invoke() {
            try {
                r.a aVar = n8.r.Companion;
                String strA = r0.a("ro.oplus.image.my_stock.type");
                kotlin.jvm.internal.r.d(strA, "get(...)");
                boolean zI = kotlin.text.r.I(strA, "gdpr", true);
                Boolean boolValueOf = Boolean.valueOf(zI);
                c0.f7098a.d("DeviceUtils", "isGdpr:" + zI);
                return boolValueOf;
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.e("DeviceUtils", "isGdpr error" + thM62exceptionOrNullimpl.getMessage());
                }
                return Boolean.FALSE;
            }
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        public static final d INSTANCE = new d();

        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Boolean mo8invoke() {
            try {
                r.a aVar = n8.r.Companion;
                boolean z10 = r0.d("ro.product.first_api_level", 0) < 35;
                Boolean boolValueOf = Boolean.valueOf(z10);
                c0.f7098a.d("DeviceUtils", "isUpdateFromOS14:" + z10);
                return boolValueOf;
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.e("DeviceUtils", "isUpdateFromOS14 error" + thM62exceptionOrNullimpl.getMessage());
                }
                return Boolean.FALSE;
            }
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.a {
        public static final e INSTANCE = new e();

        e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Boolean mo8invoke() {
            Object objM59constructorimpl;
            boolean zContains = false;
            try {
                r.a aVar = n8.r.Companion;
                String strA = r0.a("ro.boot.prjname");
                if (strA == null || strA.length() == 0) {
                    String strA2 = r0.a("ro.oplus.version.my_product");
                    if (strA2 != null && strA2.length() > 0) {
                        Iterator it = p.f7137a.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            if (kotlin.text.r.K(strA2, (String) it.next(), false, 2, null)) {
                                zContains = true;
                                break;
                            }
                        }
                    }
                } else {
                    zContains = p.f7137a.contains(strA);
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("DeviceUtils", "isTop error" + thM62exceptionOrNullimpl.getMessage());
            }
            c0.f7098a.d("DeviceUtils", "isTopProduct : result:" + zContains);
            return Boolean.valueOf(zContains);
        }
    }

    private p() {
    }

    public static final String b() {
        String str = Build.BRAND;
        c0.f7098a.d("DeviceUtils", "getEquipmentBrand brand=" + str);
        kotlin.jvm.internal.r.b(str);
        return str;
    }

    public static final String c() {
        return o0.e() ? "tablet" : z.b(null, 1, null) ? "foldScreenPhone" : "nonFoldPhone";
    }

    public static final String d() {
        String str = Build.VERSION.RELEASE;
        c0.f7098a.d("DeviceUtils", "getOSVersion osVersion=" + str);
        kotlin.jvm.internal.r.b(str);
        return str;
    }

    public final boolean e() {
        return ((Boolean) f7139c.getValue()).booleanValue();
    }
}
