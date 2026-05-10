package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.a;

/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(a aVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1998a = aVar.p(iconCompat.f1998a, 1);
        iconCompat.f2000c = aVar.j(iconCompat.f2000c, 2);
        iconCompat.f2001d = aVar.r(iconCompat.f2001d, 3);
        iconCompat.f2002e = aVar.p(iconCompat.f2002e, 4);
        iconCompat.f2003f = aVar.p(iconCompat.f2003f, 5);
        iconCompat.f2004g = (ColorStateList) aVar.r(iconCompat.f2004g, 6);
        iconCompat.f2006i = aVar.t(iconCompat.f2006i, 7);
        iconCompat.f2007j = aVar.t(iconCompat.f2007j, 8);
        iconCompat.g();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, a aVar) {
        aVar.x(true, true);
        iconCompat.h(aVar.f());
        int i10 = iconCompat.f1998a;
        if (-1 != i10) {
            aVar.F(i10, 1);
        }
        byte[] bArr = iconCompat.f2000c;
        if (bArr != null) {
            aVar.B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f2001d;
        if (parcelable != null) {
            aVar.H(parcelable, 3);
        }
        int i11 = iconCompat.f2002e;
        if (i11 != 0) {
            aVar.F(i11, 4);
        }
        int i12 = iconCompat.f2003f;
        if (i12 != 0) {
            aVar.F(i12, 5);
        }
        ColorStateList colorStateList = iconCompat.f2004g;
        if (colorStateList != null) {
            aVar.H(colorStateList, 6);
        }
        String str = iconCompat.f2006i;
        if (str != null) {
            aVar.J(str, 7);
        }
        String str2 = iconCompat.f2007j;
        if (str2 != null) {
            aVar.J(str2, 8);
        }
    }
}
