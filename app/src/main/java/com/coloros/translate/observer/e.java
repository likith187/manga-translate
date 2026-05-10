package com.coloros.translate.observer;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.m;
import com.coloros.translate.utils.v0;
import com.coui.appcompat.scrollbar.COUIScrollBar;
import com.oplus.util.OplusNetworkUtil;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.o;
import kotlin.jvm.internal.i0;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.j;
import n8.k;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: e */
    private static boolean f5335e;
    public static final e INSTANCE = new e();

    /* JADX INFO: renamed from: a */
    private static boolean f5331a = true;

    /* JADX INFO: renamed from: b */
    private static boolean f5332b = true;

    /* JADX INFO: renamed from: c */
    private static boolean f5333c = true;

    /* JADX INFO: renamed from: d */
    private static List f5334d = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: f */
    private static final j f5336f = k.b(b.INSTANCE);

    public interface a {
        void a();

        void b();
    }

    static final class b extends s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final v0 mo8invoke() {
            return new v0("NetConnectionStateMonitor");
        }
    }

    public static final class c extends ConnectivityManager.NetworkCallback {
        c() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            r.e(network, "network");
            e.f5333c = true;
            e.INSTANCE.f();
            c0.f7098a.d("NetConnectionStateMonitor", "onAvailable cellular");
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            r.e(network, "network");
            e.f5333c = false;
            e.INSTANCE.f();
            c0.f7098a.d("NetConnectionStateMonitor", "onLost cellular");
        }
    }

    public static final class d extends ConnectivityManager.NetworkCallback {
        d() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            r.e(network, "network");
            e.f5332b = true;
            e.INSTANCE.f();
            c0.f7098a.d("NetConnectionStateMonitor", "onAvailable wifi");
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            r.e(network, "network");
            e eVar = e.INSTANCE;
            eVar.o();
            if (e.f5331a) {
                return;
            }
            e.f5332b = false;
            eVar.f();
            c0.f7098a.d("NetConnectionStateMonitor", "onLost wifi");
        }
    }

    private e() {
    }

    public final void f() {
        c0.f7098a.d("NetConnectionStateMonitor", "checkNetwork , mIsConnectedWIFI = " + f5332b + ", mIsConnectedCellular = " + f5333c);
        Iterator it = f5334d.iterator();
        if (f5333c || f5332b) {
            f5331a = true;
            while (it.hasNext()) {
                ((a) it.next()).a();
            }
        } else {
            f5331a = false;
            while (it.hasNext()) {
                ((a) it.next()).b();
            }
        }
    }

    private final v0 g() {
        return (v0) f5336f.getValue();
    }

    private final boolean i() {
        c0.f7098a.d("NetConnectionStateMonitor", "isNetWorkConnected");
        if (f5335e) {
            o();
            return f5331a;
        }
        if (!f5331a) {
            g().d(new Runnable() { // from class: com.coloros.translate.observer.d
                @Override // java.lang.Runnable
                public final void run() {
                    e.j();
                }
            }, COUIScrollBar.SCROLLER_FADE_TIMEOUT);
        }
        return f5331a;
    }

    public static final void j() {
        c0.f7098a.d("NetConnectionStateMonitor", "isNetWorkConnected: delay to update");
        INSTANCE.o();
    }

    private final void m() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            Context contextA = m.INSTANCE.a();
            NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(12).addTransportType(1).build();
            kotlin.jvm.internal.r.d(networkRequestBuild, "build(...)");
            NetworkRequest networkRequestBuild2 = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
            kotlin.jvm.internal.r.d(networkRequestBuild2, "build(...)");
            Object systemService = contextA.getSystemService("connectivity");
            h0 h0Var = null;
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            d dVar = new d();
            c cVar = new c();
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(networkRequestBuild, dVar);
            }
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(networkRequestBuild2, cVar);
                h0Var = h0.INSTANCE;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            f5335e = true;
            c0.f7098a.e("NetConnectionStateMonitor", "setNetWorkStateCallbacks failure:" + thM62exceptionOrNullimpl);
        }
        if (n8.r.m66isSuccessimpl(objM59constructorimpl)) {
            c0.f7098a.d("NetConnectionStateMonitor", "setNetWorkStateCallbacks success");
        }
    }

    public final void h() {
        o();
        m();
    }

    public final boolean k() {
        c0.f7098a.d("NetConnectionStateMonitor", "isNetworkUnAvailable:" + (!i()));
        return !i();
    }

    public final void l(a netStatusCallBack) {
        kotlin.jvm.internal.r.e(netStatusCallBack, "netStatusCallBack");
        if (f5334d.contains(netStatusCallBack)) {
            return;
        }
        f5334d.add(netStatusCallBack);
    }

    public final void n(a aVar) {
        if (o.M(f5334d, aVar)) {
            i0.a(f5334d).remove(aVar);
        }
    }

    public final void o() {
        boolean zIsWifiConnected;
        Object objM59constructorimpl;
        boolean zIsMobileDataConnected;
        Object objM59constructorimpl2;
        Context contextA = m.INSTANCE.a();
        try {
            r.a aVar = n8.r.Companion;
            zIsWifiConnected = OplusNetworkUtil.isWifiConnected(contextA);
        } catch (Throwable th) {
            th = th;
            zIsWifiConnected = false;
        }
        try {
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th2) {
            th = th2;
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("NetConnectionStateMonitor", "isWifiConnected failure:" + thM62exceptionOrNullimpl);
        }
        if (n8.r.m66isSuccessimpl(objM59constructorimpl)) {
            f5332b = zIsWifiConnected;
            c0.f7098a.d("NetConnectionStateMonitor", "isWifiConnected success:" + zIsWifiConnected);
        }
        try {
            zIsMobileDataConnected = OplusNetworkUtil.isMobileDataConnected(contextA);
        } catch (Throwable th3) {
            th = th3;
            zIsMobileDataConnected = false;
        }
        try {
            objM59constructorimpl2 = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th4) {
            th = th4;
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl2 = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
        if (thM62exceptionOrNullimpl2 != null) {
            c0.f7098a.e("NetConnectionStateMonitor", "isMobileDataConnected failure:" + thM62exceptionOrNullimpl2);
        }
        if (n8.r.m66isSuccessimpl(objM59constructorimpl2)) {
            f5333c = zIsMobileDataConnected;
            c0.f7098a.d("NetConnectionStateMonitor", "isMobileDataConnected success:" + zIsMobileDataConnected);
        }
        f5331a = f5332b || f5333c;
    }
}
