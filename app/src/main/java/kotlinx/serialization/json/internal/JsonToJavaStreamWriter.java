package kotlinx.serialization.json.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonToJavaStreamWriter implements InternalJsonWriter {
    private final byte[] buffer;
    private char[] charArray;
    private int indexInBuffer;
    private final OutputStream stream;

    public JsonToJavaStreamWriter(OutputStream stream) {
        r.e(stream, "stream");
        this.stream = stream;
        this.buffer = ByteArrayPool.INSTANCE.take();
        this.charArray = CharArrayPool.INSTANCE.take();
    }

    private final void appendStringSlowPath(int i10, String str) throws IOException {
        byte b10;
        int length = str.length();
        for (int i11 = i10 - 1; i11 < length; i11++) {
            int iEnsureTotalCapacity = ensureTotalCapacity(i10, 2);
            char cCharAt = str.charAt(i11);
            if (cCharAt >= StringOpsKt.getESCAPE_MARKERS().length || (b10 = StringOpsKt.getESCAPE_MARKERS()[cCharAt]) == 0) {
                int i12 = iEnsureTotalCapacity + 1;
                this.charArray[iEnsureTotalCapacity] = cCharAt;
                i10 = i12;
            } else {
                if (b10 == 1) {
                    String str2 = StringOpsKt.getESCAPE_STRINGS()[cCharAt];
                    r.b(str2);
                    int iEnsureTotalCapacity2 = ensureTotalCapacity(iEnsureTotalCapacity, str2.length());
                    str2.getChars(0, str2.length(), this.charArray, iEnsureTotalCapacity2);
                    i10 = iEnsureTotalCapacity2 + str2.length();
                } else {
                    char[] cArr = this.charArray;
                    cArr[iEnsureTotalCapacity] = AbstractJsonLexerKt.STRING_ESC;
                    cArr[iEnsureTotalCapacity + 1] = (char) b10;
                    i10 = iEnsureTotalCapacity + 2;
                }
            }
        }
        ensureTotalCapacity(i10, 1);
        char[] cArr2 = this.charArray;
        cArr2[i10] = AbstractJsonLexerKt.STRING;
        writeUtf8(cArr2, i10 + 1);
        flush();
    }

    private final void ensure(int i10) throws IOException {
        if (this.buffer.length - this.indexInBuffer < i10) {
            flush();
        }
    }

    private final int ensureTotalCapacity(int i10, int i11) {
        int i12 = i11 + i10;
        char[] cArr = this.charArray;
        if (cArr.length <= i12) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, b9.d.c(i12, i10 * 2));
            r.d(cArrCopyOf, "copyOf(...)");
            this.charArray = cArrCopyOf;
        }
        return i10;
    }

    private final void flush() throws IOException {
        this.stream.write(this.buffer, 0, this.indexInBuffer);
        this.indexInBuffer = 0;
    }

    private final int rest() {
        return this.buffer.length - this.indexInBuffer;
    }

    private final void writeUtf8(char[] cArr, int i10) throws IOException {
        if (i10 < 0) {
            throw new IllegalArgumentException("count < 0");
        }
        if (i10 > cArr.length) {
            throw new IllegalArgumentException(("count > string.length: " + i10 + " > " + cArr.length).toString());
        }
        int i11 = 0;
        while (i11 < i10) {
            char c10 = cArr[i11];
            if (c10 < 128) {
                if (this.buffer.length - this.indexInBuffer < 1) {
                    flush();
                }
                byte[] bArr = this.buffer;
                int i12 = this.indexInBuffer;
                int i13 = i12 + 1;
                this.indexInBuffer = i13;
                bArr[i12] = (byte) c10;
                i11++;
                int iMin = Math.min(i10, (bArr.length - i13) + i11);
                while (i11 < iMin) {
                    char c11 = cArr[i11];
                    if (c11 < 128) {
                        byte[] bArr2 = this.buffer;
                        int i14 = this.indexInBuffer;
                        this.indexInBuffer = i14 + 1;
                        bArr2[i14] = (byte) c11;
                        i11++;
                    }
                }
            } else {
                if (c10 < 2048) {
                    if (this.buffer.length - this.indexInBuffer < 2) {
                        flush();
                    }
                    byte[] bArr3 = this.buffer;
                    int i15 = this.indexInBuffer;
                    int i16 = i15 + 1;
                    this.indexInBuffer = i16;
                    bArr3[i15] = (byte) ((c10 >> 6) | 192);
                    this.indexInBuffer = i15 + 2;
                    bArr3[i16] = (byte) ((c10 & '?') | 128);
                } else if (c10 < 55296 || c10 > 57343) {
                    if (this.buffer.length - this.indexInBuffer < 3) {
                        flush();
                    }
                    byte[] bArr4 = this.buffer;
                    int i17 = this.indexInBuffer;
                    int i18 = i17 + 1;
                    this.indexInBuffer = i18;
                    bArr4[i17] = (byte) ((c10 >> '\f') | 224);
                    int i19 = i17 + 2;
                    this.indexInBuffer = i19;
                    bArr4[i18] = (byte) (((c10 >> 6) & 63) | 128);
                    this.indexInBuffer = i17 + 3;
                    bArr4[i19] = (byte) ((c10 & '?') | 128);
                } else {
                    int i20 = i11 + 1;
                    char c12 = i20 < i10 ? cArr[i20] : (char) 0;
                    if (c10 > 56319 || 56320 > c12 || c12 >= 57344) {
                        if (this.buffer.length - this.indexInBuffer < 1) {
                            flush();
                        }
                        byte[] bArr5 = this.buffer;
                        int i21 = this.indexInBuffer;
                        this.indexInBuffer = i21 + 1;
                        bArr5[i21] = (byte) 63;
                        i11 = i20;
                    } else {
                        int i22 = (((c10 & 1023) << 10) | (c12 & 1023)) + 65536;
                        if (this.buffer.length - this.indexInBuffer < 4) {
                            flush();
                        }
                        byte[] bArr6 = this.buffer;
                        int i23 = this.indexInBuffer;
                        int i24 = i23 + 1;
                        this.indexInBuffer = i24;
                        bArr6[i23] = (byte) ((i22 >> 18) | 240);
                        int i25 = i23 + 2;
                        this.indexInBuffer = i25;
                        bArr6[i24] = (byte) (((i22 >> 12) & 63) | 128);
                        int i26 = i23 + 3;
                        this.indexInBuffer = i26;
                        bArr6[i25] = (byte) (((i22 >> 6) & 63) | 128);
                        this.indexInBuffer = i23 + 4;
                        bArr6[i26] = (byte) ((i22 & 63) | 128);
                        i11 += 2;
                    }
                }
                i11++;
            }
        }
    }

    private final void writeUtf8CodePoint(int i10) throws IOException {
        if (i10 < 128) {
            if (this.buffer.length - this.indexInBuffer < 1) {
                flush();
            }
            byte[] bArr = this.buffer;
            int i11 = this.indexInBuffer;
            this.indexInBuffer = i11 + 1;
            bArr[i11] = (byte) i10;
            return;
        }
        if (i10 < 2048) {
            if (this.buffer.length - this.indexInBuffer < 2) {
                flush();
            }
            byte[] bArr2 = this.buffer;
            int i12 = this.indexInBuffer;
            int i13 = i12 + 1;
            this.indexInBuffer = i13;
            bArr2[i12] = (byte) ((i10 >> 6) | 192);
            this.indexInBuffer = i12 + 2;
            bArr2[i13] = (byte) ((i10 & 63) | 128);
            return;
        }
        if (55296 <= i10 && i10 < 57344) {
            if (this.buffer.length - this.indexInBuffer < 1) {
                flush();
            }
            byte[] bArr3 = this.buffer;
            int i14 = this.indexInBuffer;
            this.indexInBuffer = i14 + 1;
            bArr3[i14] = (byte) 63;
            return;
        }
        if (i10 < 65536) {
            if (this.buffer.length - this.indexInBuffer < 3) {
                flush();
            }
            byte[] bArr4 = this.buffer;
            int i15 = this.indexInBuffer;
            int i16 = i15 + 1;
            this.indexInBuffer = i16;
            bArr4[i15] = (byte) ((i10 >> 12) | 224);
            int i17 = i15 + 2;
            this.indexInBuffer = i17;
            bArr4[i16] = (byte) (((i10 >> 6) & 63) | 128);
            this.indexInBuffer = i15 + 3;
            bArr4[i17] = (byte) ((i10 & 63) | 128);
            return;
        }
        if (i10 > 1114111) {
            throw new JsonEncodingException("Unexpected code point: " + i10);
        }
        if (this.buffer.length - this.indexInBuffer < 4) {
            flush();
        }
        byte[] bArr5 = this.buffer;
        int i18 = this.indexInBuffer;
        int i19 = i18 + 1;
        this.indexInBuffer = i19;
        bArr5[i18] = (byte) ((i10 >> 18) | 240);
        int i20 = i18 + 2;
        this.indexInBuffer = i20;
        bArr5[i19] = (byte) (((i10 >> 12) & 63) | 128);
        int i21 = i18 + 3;
        this.indexInBuffer = i21;
        bArr5[i20] = (byte) (((i10 >> 6) & 63) | 128);
        this.indexInBuffer = i18 + 4;
        bArr5[i21] = (byte) ((i10 & 63) | 128);
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void release() throws IOException {
        flush();
        CharArrayPool.INSTANCE.release(this.charArray);
        ByteArrayPool.INSTANCE.release(this.buffer);
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void write(String text) throws IOException {
        r.e(text, "text");
        int length = text.length();
        ensureTotalCapacity(0, length);
        text.getChars(0, length, this.charArray, 0);
        writeUtf8(this.charArray, length);
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeChar(char c10) throws IOException {
        writeUtf8CodePoint(c10);
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeLong(long j10) throws IOException {
        write(String.valueOf(j10));
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeQuoted(String text) throws IOException {
        r.e(text, "text");
        ensureTotalCapacity(0, text.length() + 2);
        char[] cArr = this.charArray;
        cArr[0] = AbstractJsonLexerKt.STRING;
        int length = text.length();
        text.getChars(0, length, cArr, 1);
        int i10 = length + 1;
        for (int i11 = 1; i11 < i10; i11++) {
            char c10 = cArr[i11];
            if (c10 < StringOpsKt.getESCAPE_MARKERS().length && StringOpsKt.getESCAPE_MARKERS()[c10] != 0) {
                appendStringSlowPath(i11, text);
                return;
            }
        }
        cArr[i10] = AbstractJsonLexerKt.STRING;
        writeUtf8(cArr, length + 2);
        flush();
    }

    private final void write(int i10) {
        byte[] bArr = this.buffer;
        int i11 = this.indexInBuffer;
        this.indexInBuffer = i11 + 1;
        bArr[i11] = (byte) i10;
    }
}
