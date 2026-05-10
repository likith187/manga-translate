package n3;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static int a(Parcel parcel) {
        return r(parcel, 20293);
    }

    public static void b(Parcel parcel, int i10) {
        s(parcel, i10);
    }

    public static void c(Parcel parcel, int i10, boolean z10) {
        t(parcel, i10, 4);
        parcel.writeInt(z10 ? 1 : 0);
    }

    public static void d(Parcel parcel, int i10, Bundle bundle, boolean z10) {
        if (bundle == null) {
            if (z10) {
                t(parcel, i10, 0);
            }
        } else {
            int iR = r(parcel, i10);
            parcel.writeBundle(bundle);
            s(parcel, iR);
        }
    }

    public static void e(Parcel parcel, int i10, float f10) {
        t(parcel, i10, 4);
        parcel.writeFloat(f10);
    }

    public static void f(Parcel parcel, int i10, IBinder iBinder, boolean z10) {
        if (iBinder == null) {
            if (z10) {
                t(parcel, i10, 0);
            }
        } else {
            int iR = r(parcel, i10);
            parcel.writeStrongBinder(iBinder);
            s(parcel, iR);
        }
    }

    public static void g(Parcel parcel, int i10, int i11) {
        t(parcel, i10, 4);
        parcel.writeInt(i11);
    }

    public static void h(Parcel parcel, int i10, int[] iArr, boolean z10) {
        if (iArr == null) {
            if (z10) {
                t(parcel, i10, 0);
            }
        } else {
            int iR = r(parcel, i10);
            parcel.writeIntArray(iArr);
            s(parcel, iR);
        }
    }

    public static void i(Parcel parcel, int i10, long j10) {
        t(parcel, i10, 8);
        parcel.writeLong(j10);
    }

    public static void j(Parcel parcel, int i10, Long l10, boolean z10) {
        if (l10 != null) {
            t(parcel, i10, 8);
            parcel.writeLong(l10.longValue());
        } else if (z10) {
            t(parcel, i10, 0);
        }
    }

    public static void k(Parcel parcel, int i10, Parcel parcel2, boolean z10) {
        if (parcel2 == null) {
            if (z10) {
                t(parcel, i10, 0);
            }
        } else {
            int iR = r(parcel, i10);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            s(parcel, iR);
        }
    }

    public static void l(Parcel parcel, int i10, Parcelable parcelable, int i11, boolean z10) {
        if (parcelable == null) {
            if (z10) {
                t(parcel, i10, 0);
            }
        } else {
            int iR = r(parcel, i10);
            parcelable.writeToParcel(parcel, i11);
            s(parcel, iR);
        }
    }

    public static void m(Parcel parcel, int i10, String str, boolean z10) {
        if (str == null) {
            if (z10) {
                t(parcel, i10, 0);
            }
        } else {
            int iR = r(parcel, i10);
            parcel.writeString(str);
            s(parcel, iR);
        }
    }

    public static void n(Parcel parcel, int i10, String[] strArr, boolean z10) {
        if (strArr == null) {
            if (z10) {
                t(parcel, i10, 0);
            }
        } else {
            int iR = r(parcel, i10);
            parcel.writeStringArray(strArr);
            s(parcel, iR);
        }
    }

    public static void o(Parcel parcel, int i10, List list, boolean z10) {
        if (list == null) {
            if (z10) {
                t(parcel, i10, 0);
            }
        } else {
            int iR = r(parcel, i10);
            parcel.writeStringList(list);
            s(parcel, iR);
        }
    }

    public static void p(Parcel parcel, int i10, Parcelable[] parcelableArr, int i11, boolean z10) {
        if (parcelableArr == null) {
            if (z10) {
                t(parcel, i10, 0);
                return;
            }
            return;
        }
        int iR = r(parcel, i10);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                u(parcel, parcelable, i11);
            }
        }
        s(parcel, iR);
    }

    public static void q(Parcel parcel, int i10, List list, boolean z10) {
        if (list == null) {
            if (z10) {
                t(parcel, i10, 0);
                return;
            }
            return;
        }
        int iR = r(parcel, i10);
        int size = list.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            Parcelable parcelable = (Parcelable) list.get(i11);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                u(parcel, parcelable, 0);
            }
        }
        s(parcel, iR);
    }

    private static int r(Parcel parcel, int i10) {
        parcel.writeInt(i10 | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void s(Parcel parcel, int i10) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i10 - 4);
        parcel.writeInt(iDataPosition - i10);
        parcel.setDataPosition(iDataPosition);
    }

    private static void t(Parcel parcel, int i10, int i11) {
        parcel.writeInt(i10 | (i11 << 16));
    }

    private static void u(Parcel parcel, Parcelable parcelable, int i10) {
        int iDataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int iDataPosition2 = parcel.dataPosition();
        parcelable.writeToParcel(parcel, i10);
        int iDataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(iDataPosition);
        parcel.writeInt(iDataPosition3 - iDataPosition2);
        parcel.setDataPosition(iDataPosition3);
    }
}
