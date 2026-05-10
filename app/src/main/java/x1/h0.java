package x1;

import android.media.AudioRecord;

/* JADX INFO: loaded from: classes.dex */
public class h0 extends z1.f {
    private h0(int i10, int i11, int i12, int i13) {
        this.f16592a = i10;
        int iA = a(i11, i12, i13);
        this.f16593b = iA / 2;
        w(new AudioRecord(i10, i11, i12, i13, iA));
    }

    public static h0 x() {
        return new h0(1, z1.c.f16591i[2], 16, 2);
    }
}
