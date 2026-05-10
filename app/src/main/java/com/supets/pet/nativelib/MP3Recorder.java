package com.supets.pet.nativelib;

import androidx.annotation.Keep;
import com.coloros.translate.utils.c0;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class MP3Recorder {
    private static final AtomicBoolean IS_INIT;
    private static final String TAG = "MP3Recorder";

    static {
        System.loadLibrary("mp3lame");
        IS_INIT = new AtomicBoolean(false);
    }

    public static native void close();

    public static synchronized void closeEx() {
        IS_INIT.set(false);
        close();
        c0.i(TAG, "closeEx destroy");
    }

    public static native int encode(short[] sArr, short[] sArr2, int i10, byte[] bArr);

    public static synchronized int encodeEx(short[] sArr, short[] sArr2, int i10, byte[] bArr) {
        if (IS_INIT.get()) {
            return encode(sArr, sArr2, i10, bArr);
        }
        c0.j(TAG, "encodeEx reject");
        return -1;
    }

    public static native int flush(byte[] bArr);

    public static synchronized int flushEx(byte[] bArr) {
        return flush(bArr);
    }

    public static native void init(int i10, int i11, int i12, int i13, int i14, int i15);

    public static synchronized void initEx(int i10, int i11, int i12, int i13, int i14, int i15) {
        init(i10, i11, i12, i13, i14, i15);
        IS_INIT.set(true);
        c0.i(TAG, "initEx");
    }
}
