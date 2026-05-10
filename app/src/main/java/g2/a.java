package g2;

import android.content.Context;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.m;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.o;
import kotlin.jvm.internal.i0;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static TelephonyManager f12051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static TelephonyCallback f12052b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f12054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f12055e;
    public static final a INSTANCE = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final List f12053c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: g2.a$a, reason: collision with other inner class name */
    public interface InterfaceC0143a {
        void onCallStateChanged(int i10);
    }

    public static final class b extends TelephonyCallback implements TelephonyCallback.CallStateListener {
        b() {
        }

        @Override // android.telephony.TelephonyCallback.CallStateListener
        public void onCallStateChanged(int i10) {
            c0.f7098a.d("PhoneStateManager", "onCallStateChanged: " + i10);
            a.f12054d = i10;
            a.this.d(i10);
        }
    }

    private a() {
    }

    public static final void c() {
        Object objM59constructorimpl;
        Context contextA;
        TelephonyManager telephonyManager;
        if (f12055e) {
            c0.f7098a.d("PhoneStateManager", "initPhoneStateListener: already initialized");
            return;
        }
        a aVar = INSTANCE;
        try {
            r.a aVar2 = r.Companion;
            contextA = m.INSTANCE.a();
            Object systemService = contextA.getSystemService("phone");
            telephonyManager = systemService instanceof TelephonyManager ? (TelephonyManager) systemService : null;
            f12051a = telephonyManager;
        } catch (Throwable th) {
            r.a aVar3 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(s.a(th));
        }
        if (telephonyManager == null) {
            c0.f7098a.q("PhoneStateManager", "initPhoneStateListener: TelephonyManager is null");
            return;
        }
        f12054d = telephonyManager != null ? telephonyManager.getCallState() : 0;
        b bVar = aVar.new b();
        f12052b = bVar;
        TelephonyManager telephonyManager2 = f12051a;
        if (telephonyManager2 != null) {
            telephonyManager2.registerTelephonyCallback(contextA.getMainExecutor(), bVar);
        }
        f12055e = true;
        c0.f7098a.d("PhoneStateManager", "initPhoneStateListener: success");
        objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.f("PhoneStateManager", "initPhoneStateListener error: ", thM62exceptionOrNullimpl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(int i10) {
        Iterator it = f12053c.iterator();
        while (it.hasNext()) {
            ((InterfaceC0143a) it.next()).onCallStateChanged(i10);
        }
    }

    public static final void e(InterfaceC0143a callBack) {
        kotlin.jvm.internal.r.e(callBack, "callBack");
        List list = f12053c;
        if (list.contains(callBack)) {
            return;
        }
        list.add(callBack);
        callBack.onCallStateChanged(f12054d);
    }

    public static final void f(InterfaceC0143a interfaceC0143a) {
        List list = f12053c;
        if (o.M(list, interfaceC0143a)) {
            i0.a(list).remove(interfaceC0143a);
        }
    }
}
