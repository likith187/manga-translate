package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.IMultiInstanceInvalidationService;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class MultiInstanceInvalidationService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f3480a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final HashMap f3481b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final RemoteCallbackList f3482c = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final IMultiInstanceInvalidationService.Stub f3483f = new b();

    class a extends RemoteCallbackList {
        a() {
        }

        @Override // android.os.RemoteCallbackList
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onCallbackDied(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, Object obj) {
            HashMap map = MultiInstanceInvalidationService.this.f3481b;
            Integer num = (Integer) obj;
            num.intValue();
            map.remove(num);
        }
    }

    class b extends IMultiInstanceInvalidationService.Stub {
        b() {
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public void broadcastInvalidation(int i10, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.f3482c) {
                try {
                    String str = (String) MultiInstanceInvalidationService.this.f3481b.get(Integer.valueOf(i10));
                    if (str == null) {
                        Log.w("ROOM", "Remote invalidation client ID not registered");
                        return;
                    }
                    int iBeginBroadcast = MultiInstanceInvalidationService.this.f3482c.beginBroadcast();
                    for (int i11 = 0; i11 < iBeginBroadcast; i11++) {
                        try {
                            Integer num = (Integer) MultiInstanceInvalidationService.this.f3482c.getBroadcastCookie(i11);
                            int iIntValue = num.intValue();
                            String str2 = (String) MultiInstanceInvalidationService.this.f3481b.get(num);
                            if (i10 != iIntValue && str.equals(str2)) {
                                try {
                                    ((IMultiInstanceInvalidationCallback) MultiInstanceInvalidationService.this.f3482c.getBroadcastItem(i11)).onInvalidation(strArr);
                                } catch (RemoteException e10) {
                                    Log.w("ROOM", "Error invoking a remote callback", e10);
                                }
                            }
                        } finally {
                            MultiInstanceInvalidationService.this.f3482c.finishBroadcast();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public int registerCallback(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.f3482c) {
                try {
                    MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                    int i10 = multiInstanceInvalidationService.f3480a + 1;
                    multiInstanceInvalidationService.f3480a = i10;
                    if (multiInstanceInvalidationService.f3482c.register(iMultiInstanceInvalidationCallback, Integer.valueOf(i10))) {
                        MultiInstanceInvalidationService.this.f3481b.put(Integer.valueOf(i10), str);
                        return i10;
                    }
                    MultiInstanceInvalidationService multiInstanceInvalidationService2 = MultiInstanceInvalidationService.this;
                    multiInstanceInvalidationService2.f3480a--;
                    return 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public void unregisterCallback(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, int i10) {
            synchronized (MultiInstanceInvalidationService.this.f3482c) {
                MultiInstanceInvalidationService.this.f3482c.unregister(iMultiInstanceInvalidationCallback);
                MultiInstanceInvalidationService.this.f3481b.remove(Integer.valueOf(i10));
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f3483f;
    }
}
