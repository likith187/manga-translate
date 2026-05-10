package n0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f13935f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static a f13936g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f13937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f13938b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f13939c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList f13940d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f13941e;

    /* JADX INFO: renamed from: n0.a$a, reason: collision with other inner class name */
    class HandlerC0181a extends Handler {
        HandlerC0181a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                a.this.a();
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f13943a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ArrayList f13944b;

        b(Intent intent, ArrayList arrayList) {
            this.f13943a = intent;
            this.f13944b = arrayList;
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final IntentFilter f13945a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final BroadcastReceiver f13946b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f13947c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f13948d;

        c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f13945a = intentFilter;
            this.f13946b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f13946b);
            sb.append(" filter=");
            sb.append(this.f13945a);
            if (this.f13948d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private a(Context context) {
        this.f13937a = context;
        this.f13941e = new HandlerC0181a(context.getMainLooper());
    }

    public static a b(Context context) {
        a aVar;
        synchronized (f13935f) {
            try {
                if (f13936g == null) {
                    f13936g = new a(context.getApplicationContext());
                }
                aVar = f13936g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    void a() {
        int size;
        b[] bVarArr;
        while (true) {
            synchronized (this.f13938b) {
                try {
                    size = this.f13940d.size();
                    if (size <= 0) {
                        return;
                    }
                    bVarArr = new b[size];
                    this.f13940d.toArray(bVarArr);
                    this.f13940d.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i10 = 0; i10 < size; i10++) {
                b bVar = bVarArr[i10];
                int size2 = bVar.f13944b.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    c cVar = (c) bVar.f13944b.get(i11);
                    if (!cVar.f13948d) {
                        cVar.f13946b.onReceive(this.f13937a, bVar.f13943a);
                    }
                }
            }
        }
    }

    public void c(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f13938b) {
            try {
                c cVar = new c(intentFilter, broadcastReceiver);
                ArrayList arrayList = (ArrayList) this.f13938b.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    this.f13938b.put(broadcastReceiver, arrayList);
                }
                arrayList.add(cVar);
                for (int i10 = 0; i10 < intentFilter.countActions(); i10++) {
                    String action = intentFilter.getAction(i10);
                    ArrayList arrayList2 = (ArrayList) this.f13939c.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                        this.f13939c.put(action, arrayList2);
                    }
                    arrayList2.add(cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean d(Intent intent) {
        int i10;
        String str;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        synchronized (this.f13938b) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f13937a.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z10 = (intent.getFlags() & 8) != 0;
                if (z10) {
                    Log.v("LocalBroadcastManager", "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
                }
                ArrayList arrayList3 = (ArrayList) this.f13939c.get(intent.getAction());
                if (arrayList3 != null) {
                    if (z10) {
                        Log.v("LocalBroadcastManager", "Action list: " + arrayList3);
                    }
                    ArrayList arrayList4 = null;
                    int i11 = 0;
                    while (i11 < arrayList3.size()) {
                        c cVar = (c) arrayList3.get(i11);
                        if (z10) {
                            Log.v("LocalBroadcastManager", "Matching against filter " + cVar.f13945a);
                        }
                        if (cVar.f13947c) {
                            if (z10) {
                                Log.v("LocalBroadcastManager", "  Filter's target already added");
                            }
                            i10 = i11;
                            arrayList2 = arrayList3;
                            str = action;
                            str2 = strResolveTypeIfNeeded;
                            arrayList = arrayList4;
                        } else {
                            i10 = i11;
                            str = action;
                            arrayList = arrayList4;
                            arrayList2 = arrayList3;
                            str2 = strResolveTypeIfNeeded;
                            int iMatch = cVar.f13945a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                            if (iMatch >= 0) {
                                if (z10) {
                                    Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(iMatch));
                                }
                                arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                                arrayList4.add(cVar);
                                cVar.f13947c = true;
                                i11 = i10 + 1;
                                action = str;
                                arrayList3 = arrayList2;
                                strResolveTypeIfNeeded = str2;
                            } else if (z10) {
                                Log.v("LocalBroadcastManager", "  Filter did not match: " + (iMatch != -4 ? iMatch != -3 ? iMatch != -2 ? iMatch != -1 ? "unknown reason" : "type" : "data" : "action" : "category"));
                            }
                        }
                        arrayList4 = arrayList;
                        i11 = i10 + 1;
                        action = str;
                        arrayList3 = arrayList2;
                        strResolveTypeIfNeeded = str2;
                    }
                    ArrayList arrayList5 = arrayList4;
                    if (arrayList5 != null) {
                        for (int i12 = 0; i12 < arrayList5.size(); i12++) {
                            ((c) arrayList5.get(i12)).f13947c = false;
                        }
                        this.f13940d.add(new b(intent, arrayList5));
                        if (!this.f13941e.hasMessages(1)) {
                            this.f13941e.sendEmptyMessage(1);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e(Intent intent) {
        if (d(intent)) {
            a();
        }
    }

    public void f(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f13938b) {
            try {
                ArrayList arrayList = (ArrayList) this.f13938b.remove(broadcastReceiver);
                if (arrayList == null) {
                    return;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    c cVar = (c) arrayList.get(size);
                    cVar.f13948d = true;
                    for (int i10 = 0; i10 < cVar.f13945a.countActions(); i10++) {
                        String action = cVar.f13945a.getAction(i10);
                        ArrayList arrayList2 = (ArrayList) this.f13939c.get(action);
                        if (arrayList2 != null) {
                            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                                c cVar2 = (c) arrayList2.get(size2);
                                if (cVar2.f13946b == broadcastReceiver) {
                                    cVar2.f13948d = true;
                                    arrayList2.remove(size2);
                                }
                            }
                            if (arrayList2.size() <= 0) {
                                this.f13939c.remove(action);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
