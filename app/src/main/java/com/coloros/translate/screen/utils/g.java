package com.coloros.translate.screen.utils;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import t2.b;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    public static final g INSTANCE = new g();

    /* JADX INFO: renamed from: a */
    private static volatile t2.a f5704a;

    public static final class a implements ComponentCallbacks {
        a() {
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration newConfig) {
            kotlin.jvm.internal.r.e(newConfig, "newConfig");
            t2.a aVar = g.f5704a;
            if (aVar == null) {
                kotlin.jvm.internal.r.r("responsiveUIConfig");
                aVar = null;
            }
            aVar.n(newConfig);
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }
    }

    private g() {
    }

    public static final b.a b() {
        if (!d()) {
            return b.a.UNKNOWN;
        }
        t2.a aVar = f5704a;
        if (aVar == null) {
            kotlin.jvm.internal.r.r("responsiveUIConfig");
            aVar = null;
        }
        b.a aVar2 = (b.a) aVar.l().e();
        return aVar2 == null ? b.a.UNKNOWN : aVar2;
    }

    public static final b.EnumC0223b c() {
        if (!d()) {
            return b.EnumC0223b.SMALL;
        }
        t2.a aVar = f5704a;
        if (aVar == null) {
            kotlin.jvm.internal.r.r("responsiveUIConfig");
            aVar = null;
        }
        b.EnumC0223b enumC0223bK = aVar.k();
        kotlin.jvm.internal.r.d(enumC0223bK, "getScreenType(...)");
        return enumC0223bK;
    }

    private static final boolean d() {
        if (f5704a != null) {
            return true;
        }
        Context contextF = com.coloros.translate.base.a.INSTANCE.f();
        t2.a aVarF = t2.a.f(contextF);
        kotlin.jvm.internal.r.d(aVarF, "getDefault(...)");
        f5704a = aVarF;
        contextF.registerComponentCallbacks(new a());
        return true;
    }
}
