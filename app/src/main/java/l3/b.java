package l3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        long jB = -1;
        int iA = 0;
        String strO = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                strO = n3.a.o(parcel, iY);
            } else if (iU == 2) {
                iA = n3.a.A(parcel, iY);
            } else if (iU != 3) {
                n3.a.E(parcel, iY);
            } else {
                jB = n3.a.B(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new Feature(strO, iA, jB);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new Feature[i10];
    }
}
