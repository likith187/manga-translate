package t9;

import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public interface e extends y, WritableByteChannel {
    e E(int i10);

    e L(int i10);

    e T(int i10);

    e Z(byte[] bArr);

    d d();

    @Override // t9.y, java.io.Flushable
    void flush();

    e h0(g gVar);

    e j(byte[] bArr, int i10, int i11);

    e r(String str, int i10, int i11);

    e s(long j10);

    e u0(String str);
}
