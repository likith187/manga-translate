package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(androidx.versionedparcelable.a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f1911a = (IconCompat) aVar.v(remoteActionCompat.f1911a, 1);
        remoteActionCompat.f1912b = aVar.l(remoteActionCompat.f1912b, 2);
        remoteActionCompat.f1913c = aVar.l(remoteActionCompat.f1913c, 3);
        remoteActionCompat.f1914d = (PendingIntent) aVar.r(remoteActionCompat.f1914d, 4);
        remoteActionCompat.f1915e = aVar.h(remoteActionCompat.f1915e, 5);
        remoteActionCompat.f1916f = aVar.h(remoteActionCompat.f1916f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, androidx.versionedparcelable.a aVar) {
        aVar.x(false, false);
        aVar.M(remoteActionCompat.f1911a, 1);
        aVar.D(remoteActionCompat.f1912b, 2);
        aVar.D(remoteActionCompat.f1913c, 3);
        aVar.H(remoteActionCompat.f1914d, 4);
        aVar.z(remoteActionCompat.f1915e, 5);
        aVar.z(remoteActionCompat.f1916f, 6);
    }
}
