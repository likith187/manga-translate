package com.coloros.translate.engine.service;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.coloros.translate.engine.IOfflineTranslateEngine;
import com.coloros.translate.engine.IRegisterListener;
import com.coloros.translate.engine.IRtasrEngine;
import com.coloros.translate.engine.ITranslateEngine;
import com.coloros.translate.engine.ITtsEngine;
import com.coloros.translate.engine.offline.a0;
import com.coloros.translate.engine.text.e;
import com.coloros.translate.engine.tts.p;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.t0;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import x1.c;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap f5123a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentHashMap f5124b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ConcurrentHashMap f5125c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap f5126d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: com.coloros.translate.engine.service.a$a, reason: collision with other inner class name */
    public class C0064a implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f5127a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private IBinder f5128b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f5129c = true;

        C0064a(String str, IBinder iBinder) {
            this.f5127a = str;
            this.f5128b = iBinder;
            a.this.f5126d.put(Integer.valueOf(this.f5128b.hashCode()), this);
        }

        public void a(boolean z10) {
            this.f5129c = z10;
            c0.i("TranslateEngineManager", "setAutoDestroy : " + z10);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            c0.i("TranslateEngineManager", "binderDied : " + this.f5127a + " , mAutoDestroy : " + this.f5129c);
            if (this.f5128b != null) {
                if (this.f5129c) {
                    a aVar = a.this;
                    aVar.j(this.f5127a, aVar.f5123a);
                    a aVar2 = a.this;
                    aVar2.j(this.f5127a, aVar2.f5124b);
                    a aVar3 = a.this;
                    aVar3.j(this.f5127a, aVar3.f5125c);
                    a.this.f5123a.remove(this.f5127a);
                    a.this.f5124b.remove(this.f5127a);
                    a.this.f5125c.remove(this.f5127a);
                }
                a.this.f5126d.remove(Integer.valueOf(this.f5128b.hashCode()));
                this.f5128b.unlinkToDeath(this, 0);
                this.f5128b = null;
            }
        }
    }

    a() {
        p();
    }

    private void h() {
        t0.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(String str, Map map) {
        Map.Entry entry;
        Map map2 = (Map) map.get(str);
        if (map2 != null) {
            Iterator it = map2.entrySet().iterator();
            if (!it.hasNext() || (entry = (Map.Entry) it.next()) == null) {
                return;
            }
            String str2 = (String) entry.getKey();
            Object value = entry.getValue();
            if (value == null || str2 == null || !(value instanceof a2.a)) {
                return;
            }
            c0.i("TranslateEngineManager", "destroyEngineMap packageName = " + str + " type = " + str2);
            try {
                ((a2.a) value).a();
            } catch (Exception e10) {
                c0.j("TranslateEngineManager", "destroyEngineMap e = " + e10.getMessage());
            }
        }
    }

    private Map o(Context context, Map map) {
        String strA = com.coloros.translate.utils.b.a(context);
        c0.i("TranslateEngineManager", "getUidEngineMap packageName = " + strA);
        Map map2 = (Map) map.get(strA);
        if (map2 != null) {
            return map2;
        }
        HashMap map3 = new HashMap();
        map.put(strA, map3);
        return map3;
    }

    private void p() {
        t0.f();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void f(android.content.Context r5, java.lang.String r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.lang.String r5 = com.coloros.translate.utils.b.a(r5)     // Catch: java.lang.Throwable -> L25
            int r0 = r6.hashCode()     // Catch: java.lang.Throwable -> L25
            r1 = -1489746788(0xffffffffa734449c, float:-2.5017211E-15)
            r2 = 1
            r3 = 2
            if (r0 == r1) goto L31
            r1 = -199133652(0xfffffffff421762c, float:-5.1169226E31)
            if (r0 == r1) goto L27
            r1 = 1445472039(0x56282727, float:4.6221528E13)
            if (r0 == r1) goto L1b
            goto L3b
        L1b:
            java.lang.String r0 = "TtsEngineMap"
            boolean r6 = r6.equals(r0)     // Catch: java.lang.Throwable -> L25
            if (r6 == 0) goto L3b
            r6 = r3
            goto L3c
        L25:
            r5 = move-exception
            goto L65
        L27:
            java.lang.String r0 = "TranslateEngineMap"
            boolean r6 = r6.equals(r0)     // Catch: java.lang.Throwable -> L25
            if (r6 == 0) goto L3b
            r6 = 0
            goto L3c
        L31:
            java.lang.String r0 = "RtAsrEngineMap"
            boolean r6 = r6.equals(r0)     // Catch: java.lang.Throwable -> L25
            if (r6 == 0) goto L3b
            r6 = r2
            goto L3c
        L3b:
            r6 = -1
        L3c:
            if (r6 == 0) goto L59
            if (r6 == r2) goto L4e
            if (r6 == r3) goto L43
            goto L63
        L43:
            java.util.concurrent.ConcurrentHashMap r6 = r4.f5125c     // Catch: java.lang.Throwable -> L25
            r4.j(r5, r6)     // Catch: java.lang.Throwable -> L25
            java.util.concurrent.ConcurrentHashMap r6 = r4.f5125c     // Catch: java.lang.Throwable -> L25
            r6.remove(r5)     // Catch: java.lang.Throwable -> L25
            goto L63
        L4e:
            java.util.concurrent.ConcurrentHashMap r6 = r4.f5124b     // Catch: java.lang.Throwable -> L25
            r4.j(r5, r6)     // Catch: java.lang.Throwable -> L25
            java.util.concurrent.ConcurrentHashMap r6 = r4.f5124b     // Catch: java.lang.Throwable -> L25
            r6.remove(r5)     // Catch: java.lang.Throwable -> L25
            goto L63
        L59:
            java.util.concurrent.ConcurrentHashMap r6 = r4.f5123a     // Catch: java.lang.Throwable -> L25
            r4.j(r5, r6)     // Catch: java.lang.Throwable -> L25
            java.util.concurrent.ConcurrentHashMap r6 = r4.f5123a     // Catch: java.lang.Throwable -> L25
            r6.remove(r5)     // Catch: java.lang.Throwable -> L25
        L63:
            monitor-exit(r4)
            return
        L65:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L25
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.engine.service.a.f(android.content.Context, java.lang.String):void");
    }

    public void g() {
        this.f5123a.clear();
        this.f5124b.clear();
        this.f5125c.clear();
        this.f5126d.clear();
        h();
    }

    public void i(String str) {
        j(str, this.f5123a);
        j(str, this.f5124b);
        j(str, this.f5125c);
    }

    public synchronized IOfflineTranslateEngine k(Context context, String str) {
        c0.i("TranslateEngineManager", "generateTranslateEngine type = " + str);
        IOfflineTranslateEngine iOfflineTranslateEngineD = a0.INSTANCE.d(context, str);
        if (iOfflineTranslateEngineD != null) {
            return iOfflineTranslateEngineD;
        }
        c0.o("TranslateEngineManager", "generateOfflineTranslateEngine invalid type");
        return null;
    }

    public synchronized IRtasrEngine l(Context context, String str) {
        c0.i("TranslateEngineManager", "generateRtasrEngine type = " + str);
        Map mapO = o(context, this.f5124b);
        IRtasrEngine iRtasrEngineA = (IRtasrEngine) mapO.get(str);
        if (iRtasrEngineA == null) {
            iRtasrEngineA = c.INSTANCE.a(context, str);
            if (iRtasrEngineA == null) {
                c0.o("TranslateEngineManager", "generateRtasrEngine invalid type");
                return null;
            }
            mapO.put(str, iRtasrEngineA);
        }
        return iRtasrEngineA;
    }

    public synchronized ITranslateEngine m(Context context, String str) {
        c0.i("TranslateEngineManager", "generateTranslateEngine type = " + str);
        Map mapO = o(context, this.f5123a);
        ITranslateEngine iTranslateEngineB = (ITranslateEngine) mapO.get(str);
        if (iTranslateEngineB == null) {
            iTranslateEngineB = e.INSTANCE.b(context, str);
            if (iTranslateEngineB == null) {
                c0.o("TranslateEngineManager", "generateTranslateEngine invalid type");
                return null;
            }
            mapO.put(str, iTranslateEngineB);
        }
        return iTranslateEngineB;
    }

    public synchronized ITtsEngine n(Context context, String str) {
        ITtsEngine iTtsEngineA;
        c0.i("TranslateEngineManager", "generateTtsEngine type = " + str);
        Map mapO = o(context, this.f5125c);
        iTtsEngineA = (ITtsEngine) mapO.get(str);
        if (iTtsEngineA == null) {
            iTtsEngineA = p.INSTANCE.a(context, str);
            mapO.put(str, iTtsEngineA);
        }
        return iTtsEngineA;
    }

    public synchronized void q(Context context, IRegisterListener iRegisterListener) {
        try {
            e.INSTANCE.a(iRegisterListener);
            String strA = com.coloros.translate.utils.b.a(context);
            c0.i("TranslateEngineManager", "registerClient packageName = " + strA);
            iRegisterListener.asBinder().linkToDeath(new C0064a(strA, iRegisterListener.asBinder()), 0);
        } catch (RemoteException e10) {
            c0.j("TranslateEngineManager", "registerClient e = " + e10.getMessage());
        }
    }

    public void r(IRegisterListener iRegisterListener) {
        e.INSTANCE.d(iRegisterListener);
    }

    public void s(IRegisterListener iRegisterListener, boolean z10) {
        c0.i("TranslateEngineManager", "setEngineAutoDestroyWhenBinderDied : " + z10);
        C0064a c0064a = (C0064a) this.f5126d.get(Integer.valueOf(iRegisterListener.asBinder().hashCode()));
        if (c0064a != null) {
            c0064a.a(z10);
        }
    }

    public void t(IRegisterListener iRegisterListener) {
        c0.i("TranslateEngineManager", "unRegisterClient");
        e.INSTANCE.c(iRegisterListener);
        this.f5126d.remove(Integer.valueOf(iRegisterListener.asBinder().hashCode()));
    }
}
