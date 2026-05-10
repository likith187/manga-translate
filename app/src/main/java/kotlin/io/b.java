package kotlin.io;

import com.oplus.aiunit.core.ConfigPackage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static final long a(InputStream inputStream, OutputStream out, int i10) throws IOException {
        kotlin.jvm.internal.r.e(inputStream, "<this>");
        kotlin.jvm.internal.r.e(out, "out");
        byte[] bArr = new byte[i10];
        int i11 = inputStream.read(bArr);
        long j10 = 0;
        while (i11 >= 0) {
            out.write(bArr, 0, i11);
            j10 += (long) i11;
            i11 = inputStream.read(bArr);
        }
        return j10;
    }

    public static /* synthetic */ long b(InputStream inputStream, OutputStream outputStream, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = ConfigPackage.FRAME_SIZE_6;
        }
        return a(inputStream, outputStream, i10);
    }

    public static final byte[] c(InputStream inputStream) {
        kotlin.jvm.internal.r.e(inputStream, "<this>");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(ConfigPackage.FRAME_SIZE_6, inputStream.available()));
        b(inputStream, byteArrayOutputStream, 0, 2, null);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        kotlin.jvm.internal.r.d(byteArray, "toByteArray(...)");
        return byteArray;
    }
}
