package com.coloros.translate.screen.translate.business;

import android.content.ComponentName;
import android.content.Context;
import com.coloros.translate.screen.utils.w;
import com.coloros.translate.utils.c0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final b INSTANCE = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List f5519a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List f5520b = o.m("oediv.oohiq.moc");

    static final class a extends s implements w8.l {
        public static final a INSTANCE = new a();

        a() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((List<String>) obj);
            return h0.INSTANCE;
        }

        public final void invoke(List<String> it) {
            r.e(it, "it");
            b.f5519a.clear();
            b.f5519a.addAll(it);
        }
    }

    private b() {
    }

    private final boolean c(String str) {
        Iterator it = f5520b.iterator();
        while (it.hasNext()) {
            if (r.a(kotlin.text.r.U0((String) it.next()).toString(), str)) {
                return true;
            }
        }
        Iterator it2 = c.a().iterator();
        while (it2.hasNext()) {
            if (r.a((String) it2.next(), str)) {
                return true;
            }
        }
        return false;
    }

    public final boolean b() {
        try {
            r.a aVar = n8.r.Companion;
            ComponentName componentNameE = w.e();
            if (componentNameE == null) {
                return false;
            }
            String packageName = componentNameE.getPackageName();
            kotlin.jvm.internal.r.d(packageName, "getPackageName(...)");
            if (packageName.length() == 0) {
                c0.f7098a.q("BlackListManager", "Top Component Name is empty!");
                return false;
            }
            List list = f5519a;
            if (list.isEmpty() && INSTANCE.c(packageName)) {
                return true;
            }
            return list.contains(packageName);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("BlackListManager", "isContainsInAppBlackList exception " + thM62exceptionOrNullimpl);
            }
            return false;
        }
    }

    public final void d(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        c0.f7098a.d("BlackListManager", "update");
        new j2.a(context).a(a.INSTANCE);
    }
}
