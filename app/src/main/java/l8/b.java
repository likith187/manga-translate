package l8;

import android.util.Log;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f13633a = "l8.b";

    public static ByteBuffer a(ByteBuffer byteBuffer, byte[] bArr) {
        byteBuffer.put(bArr);
        return byteBuffer;
    }

    public static ByteBuffer b(ByteBuffer byteBuffer, float[] fArr) {
        byteBuffer.asFloatBuffer().put(fArr);
        return byteBuffer;
    }

    public static void c(ByteBuffer byteBuffer, String str) {
        try {
            Log.d(f13633a, String.format("saveRawBuffer %s", str));
            FileChannel channel = new FileOutputStream(str).getChannel();
            channel.write(byteBuffer);
            channel.close();
            byteBuffer.flip();
        } catch (Exception e10) {
            Log.e(f13633a, e10.toString());
        }
    }
}
