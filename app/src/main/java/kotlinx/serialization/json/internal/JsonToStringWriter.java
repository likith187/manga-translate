package kotlinx.serialization.json.internal;

import java.util.Arrays;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonToStringWriter implements InternalJsonWriter {
    private char[] array = CharArrayPool.INSTANCE.take();
    private int size;

    private final void appendStringSlowPath(int i10, int i11, String str) {
        byte b10;
        int length = str.length();
        while (i10 < length) {
            int iEnsureTotalCapacity = ensureTotalCapacity(i11, 2);
            char cCharAt = str.charAt(i10);
            if (cCharAt >= StringOpsKt.getESCAPE_MARKERS().length || (b10 = StringOpsKt.getESCAPE_MARKERS()[cCharAt]) == 0) {
                int i12 = iEnsureTotalCapacity + 1;
                this.array[iEnsureTotalCapacity] = cCharAt;
                i11 = i12;
                i10++;
            } else {
                if (b10 == 1) {
                    String str2 = StringOpsKt.getESCAPE_STRINGS()[cCharAt];
                    r.b(str2);
                    int iEnsureTotalCapacity2 = ensureTotalCapacity(iEnsureTotalCapacity, str2.length());
                    str2.getChars(0, str2.length(), this.array, iEnsureTotalCapacity2);
                    i11 = iEnsureTotalCapacity2 + str2.length();
                    this.size = i11;
                } else {
                    char[] cArr = this.array;
                    cArr[iEnsureTotalCapacity] = AbstractJsonLexerKt.STRING_ESC;
                    cArr[iEnsureTotalCapacity + 1] = (char) b10;
                    i11 = iEnsureTotalCapacity + 2;
                    this.size = i11;
                }
                i10++;
            }
        }
        int iEnsureTotalCapacity3 = ensureTotalCapacity(i11, 1);
        this.array[iEnsureTotalCapacity3] = AbstractJsonLexerKt.STRING;
        this.size = iEnsureTotalCapacity3 + 1;
    }

    private final void ensureAdditionalCapacity(int i10) {
        ensureTotalCapacity(this.size, i10);
    }

    private final int ensureTotalCapacity(int i10, int i11) {
        int i12 = i11 + i10;
        char[] cArr = this.array;
        if (cArr.length <= i12) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, b9.d.c(i12, i10 * 2));
            r.d(cArrCopyOf, "copyOf(...)");
            this.array = cArrCopyOf;
        }
        return i10;
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void release() {
        CharArrayPool.INSTANCE.release(this.array);
    }

    public String toString() {
        return new String(this.array, 0, this.size);
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void write(String text) {
        r.e(text, "text");
        int length = text.length();
        if (length == 0) {
            return;
        }
        ensureAdditionalCapacity(length);
        text.getChars(0, text.length(), this.array, this.size);
        this.size += length;
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeChar(char c10) {
        ensureAdditionalCapacity(1);
        char[] cArr = this.array;
        int i10 = this.size;
        this.size = i10 + 1;
        cArr[i10] = c10;
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeLong(long j10) {
        write(String.valueOf(j10));
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeQuoted(String text) {
        r.e(text, "text");
        ensureAdditionalCapacity(text.length() + 2);
        char[] cArr = this.array;
        int i10 = this.size;
        int i11 = i10 + 1;
        cArr[i10] = AbstractJsonLexerKt.STRING;
        int length = text.length();
        text.getChars(0, length, cArr, i11);
        int i12 = length + i11;
        for (int i13 = i11; i13 < i12; i13++) {
            char c10 = cArr[i13];
            if (c10 < StringOpsKt.getESCAPE_MARKERS().length && StringOpsKt.getESCAPE_MARKERS()[c10] != 0) {
                appendStringSlowPath(i13 - i11, i13, text);
                return;
            }
        }
        cArr[i12] = AbstractJsonLexerKt.STRING;
        this.size = i12 + 1;
    }
}
