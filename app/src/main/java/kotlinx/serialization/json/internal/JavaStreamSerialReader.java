package kotlinx.serialization.json.internal;

import java.io.InputStream;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class JavaStreamSerialReader implements InternalJsonReader {
    private final CharsetReader reader;

    public JavaStreamSerialReader(InputStream stream) {
        r.e(stream, "stream");
        this.reader = new CharsetReader(stream, kotlin.text.d.f13110a);
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonReader
    public int read(char[] buffer, int i10, int i11) {
        r.e(buffer, "buffer");
        return this.reader.read(buffer, i10, i11);
    }

    public final void release() {
        this.reader.release();
    }
}
