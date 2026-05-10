package com.coloros.translate.engine.offline;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.coloros.translate.engine.offline.x;
import com.coloros.translate.utils.h1;
import com.coloros.translate.utils.u0;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import e7.a;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class x {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static volatile x f5106j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e7.a f5107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f5108b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.coloros.translate.engine.offline.d f5110d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f5111e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f5114h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CopyOnWriteArraySet f5109c = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f5112f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List f5113g = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private BroadcastReceiver f5115i = new a();

    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                Uri data = intent.getData();
                String schemeSpecificPart = data != null ? data.getSchemeSpecificPart() : null;
                com.coloros.translate.utils.c0.i("OfflineDownloadManager", "mDownloadClearReceiver,receive packageName = " + schemeSpecificPart);
                if (!"com.android.providers.downloads".equals(schemeSpecificPart) || x.this.f5110d == null) {
                    return;
                }
                x.this.f5110d.q(x.this.f5114h);
            }
        }
    }

    public interface b {
        void e(t1.a aVar);

        void q(t1.a aVar);

        void v(t1.a aVar);
    }

    public class c implements e7.b {
        public c() {
        }

        private void e(Context context, String str, boolean z10) {
            String strA = m0.a(str);
            String str2 = z10 ? "event_download_success" : "event_download_fial";
            if (!TextUtils.isEmpty(strA)) {
                HashMap map = new HashMap();
                map.put(RealTimeAsrInputSlot.KEY_LANGUAGE, strA);
                com.coloros.translate.utils.q0.a(context, str2, map);
                return;
            }
            com.coloros.translate.utils.c0.i("OfflineDownloadManager", "addDownloadDecompressStatis, success:" + z10 + ", languageCode:" + str + " is invalid!");
        }

        private void f(t1.a aVar) {
            if (!com.coloros.translate.engine.offline.e.c().a(aVar.f15673r, aVar.f15659d, false)) {
                if (x.this.f5110d != null) {
                    x.this.f5110d.o(aVar, false);
                }
                Iterator it = x.this.f5113g.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).v(aVar);
                }
                e(x.this.f5114h, aVar.f15673r, false);
                return;
            }
            long j10 = aVar.f15656a;
            if (j10 >= 0) {
                x.this.n(j10);
            }
            if (x.this.f5110d != null) {
                x.this.f5110d.o(aVar, true);
            }
            Iterator it2 = x.this.f5113g.iterator();
            while (it2.hasNext()) {
                ((b) it2.next()).q(aVar);
            }
            e(x.this.f5114h, aVar.f15673r, true);
        }

        private void g(t1.a aVar) {
            com.coloros.translate.utils.c0.i("OfflineDownloadManager", "handleDownloadStateChange downloadInfo:" + aVar);
            if (x.this.f5110d != null) {
                x.this.f5110d.n(x.this.f5114h, aVar);
            }
            int i10 = aVar.f15662g;
            if (i10 == 1) {
                Iterator it = x.this.f5112f.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).o(aVar);
                    x.this.f5109c.add(Long.valueOf(aVar.f15656a));
                }
                return;
            }
            if (i10 == 2) {
                Iterator it2 = x.this.f5112f.iterator();
                while (it2.hasNext()) {
                    ((e) it2.next()).g(aVar);
                    x.this.f5109c.add(Long.valueOf(aVar.f15656a));
                }
                return;
            }
            if (i10 == 4) {
                Iterator it3 = x.this.f5112f.iterator();
                while (it3.hasNext()) {
                    ((e) it3.next()).c(aVar);
                    x.this.f5109c.remove(Long.valueOf(aVar.f15656a));
                }
                return;
            }
            if (i10 == 8) {
                Iterator it4 = x.this.f5112f.iterator();
                while (it4.hasNext()) {
                    ((e) it4.next()).b(aVar);
                    x.this.f5109c.remove(Long.valueOf(aVar.f15656a));
                }
                h(aVar);
                return;
            }
            if (i10 != 16) {
                com.coloros.translate.utils.c0.o("OfflineDownloadManager", "handleDownloadStateChange bad status, DownloadInfoData = " + aVar);
                return;
            }
            for (e eVar : x.this.f5112f) {
                if (aVar.f15659d != null) {
                    eVar.p(aVar);
                    x.this.f5109c.remove(Long.valueOf(aVar.f15656a));
                }
            }
            e(x.this.f5114h, aVar.f15673r, false);
        }

        private void h(t1.a aVar) {
            Iterator it = x.this.f5113g.iterator();
            while (it.hasNext()) {
                ((b) it.next()).e(aVar);
            }
            if (new File(aVar.f15659d).exists()) {
                f(aVar);
                return;
            }
            aVar.f15659d = aVar.f15659d.replaceFirst("\\.data", "_.data");
            if (new File(aVar.f15659d).exists()) {
                f(aVar);
            }
        }

        @Override // e7.b
        public void a(List list) {
            if (list == null) {
                com.coloros.translate.utils.c0.o("OfflineDownloadManager", "onDownloadInserted downloadInfos is null");
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                g((t1.a) it.next());
            }
        }

        @Override // e7.b
        public void b(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                t1.a aVar = (t1.a) it.next();
                for (e eVar : x.this.f5112f) {
                    if (x.this.f5110d != null) {
                        x.this.f5110d.p(x.this.f5114h, aVar.f15656a);
                    }
                    eVar.t(aVar.f15656a);
                    x.this.f5109c.remove(Long.valueOf(aVar.f15656a));
                }
            }
        }

        @Override // e7.b
        public void c(List list) {
            if (list == null) {
                com.coloros.translate.utils.c0.o("OfflineDownloadManager", "onDownloadUpdated downloadInfos is null");
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                g((t1.a) it.next());
            }
        }

        @Override // e7.b
        public void d(List list) {
            com.coloros.translate.utils.c0.i("OfflineDownloadManager", "onDownloadTimeout:");
        }
    }

    private static class d extends h1 {
        d(x xVar, Looper looper) {
            super(xVar, looper);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.coloros.translate.utils.h1
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Message message, x xVar) throws Throwable {
            xVar.q(message);
        }
    }

    public interface e {
        void b(t1.a aVar);

        void c(t1.a aVar);

        void f();

        void g(t1.a aVar);

        void o(t1.a aVar);

        void p(t1.a aVar);

        void t(long j10);
    }

    private x(Context context) {
        this.f5114h = context;
        e7.a aVarK = e7.a.k(context);
        this.f5107a = aVarK;
        aVarK.B(true);
        this.f5108b = new d(this, u0.c("request_download_offline_info"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B() {
        com.coloros.translate.utils.y.j(g0.b().c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(f0 f0Var, boolean z10) {
        a.e eVar = new a.e(Uri.parse(f0Var.f5040i));
        Uri uriFromFile = Uri.fromFile(new File(g0.b().a() + f0Var.f5041j));
        com.coloros.translate.utils.c0.i("OfflineDownloadManager", "innerStartDownload allowMobile: " + z10 + ", uri:" + uriFromFile);
        eVar.e(uriFromFile);
        eVar.h(2);
        if (z10) {
            eVar.c(3);
        } else {
            eVar.c(2);
        }
        eVar.d(true);
        eVar.i(2);
        eVar.g(f0Var.f5039h);
        eVar.f(f0Var.f5038g);
        f0Var.f5036e = this.f5107a.g(eVar);
    }

    private void G() {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_DATA_CLEARED");
        intentFilter.addDataScheme("package");
        this.f5114h.registerReceiver(this.f5115i, intentFilter);
    }

    public static x o(Context context) {
        if (f5106j == null) {
            synchronized (x.class) {
                try {
                    if (f5106j == null) {
                        f5106j = new x(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return f5106j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(Message message) throws Throwable {
        com.coloros.translate.utils.c0.i("OfflineDownloadManager", "handleDownloadMessage msg:" + message.what);
        switch (message.what) {
            case 100:
                if (this.f5110d != null) {
                    List arrayList = new ArrayList();
                    try {
                        arrayList = this.f5107a.h(31, null, false, null, 0);
                    } catch (IllegalArgumentException e10) {
                        com.coloros.translate.utils.c0.j("OfflineDownloadManager", "getDownloadData:" + e10.getMessage());
                    }
                    this.f5110d.u(this.f5114h, arrayList);
                }
                this.f5112f.forEach(new Consumer() { // from class: com.coloros.translate.engine.offline.u
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((x.e) obj).f();
                    }
                });
                break;
            case 102:
                f0 f0Var = (f0) message.obj;
                if (f0Var != null) {
                    y(f0Var, message.arg1 > 0);
                }
                break;
            case 103:
                if (z(message)) {
                    x((long[]) message.obj);
                }
                break;
            case 104:
                if (z(message)) {
                    w((long[]) message.obj);
                }
                break;
            case 105:
                if (z(message)) {
                    u((long[]) message.obj);
                }
                break;
            case 106:
                if (z(message)) {
                    t((long[]) message.obj);
                }
                break;
            case 107:
                if (z(message)) {
                    v((long[]) message.obj);
                }
                break;
        }
    }

    private void s() {
        u0.d("request_download_offline_info", new Runnable() { // from class: com.coloros.translate.engine.offline.w
            @Override // java.lang.Runnable
            public final void run() {
                x.B();
            }
        });
    }

    private void t(long... jArr) throws Throwable {
        this.f5107a.s(jArr);
        this.f5107a.y(true, jArr);
    }

    private void u(long... jArr) throws Throwable {
        this.f5107a.s(jArr);
    }

    private void v(long... jArr) throws Throwable {
        this.f5107a.z(jArr);
    }

    private void w(long... jArr) throws Throwable {
        s();
        this.f5107a.A(jArr);
    }

    private void x(long... jArr) {
        s();
        this.f5107a.C(-1, jArr);
    }

    private void y(final f0 f0Var, final boolean z10) {
        if (f0Var == null || TextUtils.isEmpty(f0Var.f5040i)) {
            return;
        }
        u0.d("request_download_offline_info", new Runnable() { // from class: com.coloros.translate.engine.offline.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f5103a.C(f0Var, z10);
            }
        });
    }

    private boolean z(Message message) {
        long[] jArr = (long[]) message.obj;
        return jArr != null && jArr.length > 0;
    }

    public void D(long... jArr) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 105;
        messageObtain.obj = jArr;
        this.f5108b.sendMessage(messageObtain);
    }

    public void E() {
        Iterator it = this.f5109c.iterator();
        while (it.hasNext()) {
            D(((Long) it.next()).longValue());
        }
    }

    public void F() {
        com.coloros.translate.utils.c0.i("OfflineDownloadManager", "registerDownloadCallback mDownloadCallback:" + this.f5111e);
        if (this.f5111e == null) {
            c cVar = new c();
            this.f5111e = cVar;
            this.f5107a.x(cVar);
        }
    }

    public void H(b bVar) {
        if (this.f5113g.contains(bVar)) {
            this.f5113g.remove(bVar);
        }
    }

    public void I(e eVar) {
        if (this.f5112f.contains(eVar)) {
            this.f5112f.remove(eVar);
        }
    }

    public void J() {
        this.f5108b.removeCallbacksAndMessages(null);
    }

    public void K(long... jArr) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 104;
        messageObtain.obj = jArr;
        this.f5108b.sendMessage(messageObtain);
    }

    public void L(long... jArr) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 103;
        messageObtain.obj = jArr;
        this.f5108b.sendMessage(messageObtain);
    }

    public void M(f0 f0Var, boolean z10) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 102;
        messageObtain.obj = f0Var;
        messageObtain.arg1 = z10 ? 1 : 0;
        this.f5108b.sendMessage(messageObtain);
    }

    public void N() {
        Message messageObtain = Message.obtain();
        messageObtain.what = 100;
        this.f5108b.sendMessage(messageObtain);
    }

    public void j(b bVar) {
        if (this.f5113g.contains(bVar)) {
            return;
        }
        this.f5113g.add(bVar);
    }

    public void k(e eVar) {
        if (this.f5112f.contains(eVar)) {
            return;
        }
        this.f5112f.add(eVar);
    }

    public void l(long... jArr) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 106;
        messageObtain.obj = jArr;
        this.f5108b.sendMessage(messageObtain);
    }

    public void m() {
        com.coloros.translate.engine.offline.d dVar = this.f5110d;
        if (dVar == null) {
            return;
        }
        for (f0 f0Var : dVar.j(Boolean.TRUE)) {
            f0Var.b(this.f5114h);
            f0Var.h(f0Var.f5045n);
        }
    }

    public void n(long... jArr) {
        l(jArr);
    }

    public f0 p(String str) {
        com.coloros.translate.engine.offline.d dVar = this.f5110d;
        if (dVar == null) {
            return null;
        }
        return dVar.h(str);
    }

    public void r() {
        com.coloros.translate.utils.c0.i("OfflineDownloadManager", "init");
        if (this.f5110d == null) {
            this.f5110d = com.coloros.translate.engine.offline.d.f(this.f5114h);
        }
        G();
        N();
    }
}
