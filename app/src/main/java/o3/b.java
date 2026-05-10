package o3;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.moduleinstall.ModuleInstallIntentResponse;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            if (n3.a.u(iY) != 1) {
                n3.a.E(parcel, iY);
            } else {
                pendingIntent = (PendingIntent) n3.a.n(parcel, iY, PendingIntent.CREATOR);
            }
        }
        n3.a.t(parcel, iF);
        return new ModuleInstallIntentResponse(pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new ModuleInstallIntentResponse[i10];
    }
}
