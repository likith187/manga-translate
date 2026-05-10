package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@JsonFriendModuleApi
public abstract class InternalJsonReaderCodePointImpl implements InternalJsonReader {
    private Character bufferedChar;

    public abstract boolean exhausted();

    public abstract int nextCodePoint();

    @Override // kotlinx.serialization.json.internal.InternalJsonReader
    public final int read(char[] buffer, int i10, int i11) {
        int i12;
        r.e(buffer, "buffer");
        Character ch = this.bufferedChar;
        if (ch != null) {
            r.b(ch);
            buffer[i10] = ch.charValue();
            this.bufferedChar = null;
            i12 = 1;
        } else {
            i12 = 0;
        }
        while (i12 < i11 && !exhausted()) {
            int iNextCodePoint = nextCodePoint();
            if (iNextCodePoint <= 65535) {
                buffer[i10 + i12] = (char) iNextCodePoint;
                i12++;
            } else {
                char c10 = (char) ((iNextCodePoint >>> 10) + 55232);
                char c11 = (char) ((iNextCodePoint & 1023) + 56320);
                buffer[i10 + i12] = c10;
                int i13 = i12 + 1;
                if (i13 < i11) {
                    buffer[i13 + i10] = c11;
                    i12 += 2;
                } else {
                    this.bufferedChar = Character.valueOf(c11);
                    i12 = i13;
                }
            }
        }
        if (i12 > 0) {
            return i12;
        }
        return -1;
    }
}
