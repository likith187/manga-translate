package kotlinx.serialization.json.internal;

import kotlin.collections.i;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public class ReaderJsonLexer extends AbstractJsonLexer {
    private final char[] buffer;
    private final InternalJsonReader reader;
    private final ArrayAsSequence source;
    protected int threshold;

    public /* synthetic */ ReaderJsonLexer(InternalJsonReader internalJsonReader, char[] cArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(internalJsonReader, (i10 & 2) != 0 ? CharArrayPoolBatchSize.INSTANCE.take() : cArr);
    }

    private final void preload(int i10) {
        char[] buffer$kotlinx_serialization_json = getSource().getBuffer$kotlinx_serialization_json();
        if (i10 != 0) {
            int i11 = this.currentPosition;
            i.h(buffer$kotlinx_serialization_json, buffer$kotlinx_serialization_json, 0, i11, i11 + i10);
        }
        int length = getSource().length();
        while (true) {
            if (i10 == length) {
                break;
            }
            int i12 = this.reader.read(buffer$kotlinx_serialization_json, i10, length - i10);
            if (i12 == -1) {
                getSource().trim(i10);
                this.threshold = -1;
                break;
            }
            i10 += i12;
        }
        this.currentPosition = 0;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    protected void appendRange(int i10, int i11) {
        StringBuilder escapedString = getEscapedString();
        escapedString.append(getSource().getBuffer$kotlinx_serialization_json(), i10, i11 - i10);
        r.d(escapedString, "append(...)");
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public boolean canConsumeValue() {
        ensureHaveChars();
        int i10 = this.currentPosition;
        while (true) {
            int iPrefetchOrEof = prefetchOrEof(i10);
            if (iPrefetchOrEof == -1) {
                this.currentPosition = iPrefetchOrEof;
                return false;
            }
            char cCharAt = getSource().charAt(iPrefetchOrEof);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = iPrefetchOrEof;
                return isValidValueStart(cCharAt);
            }
            i10 = iPrefetchOrEof + 1;
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public String consumeKeyString() {
        consumeNextToken(AbstractJsonLexerKt.STRING);
        int i10 = this.currentPosition;
        int iIndexOf = indexOf(AbstractJsonLexerKt.STRING, i10);
        if (iIndexOf == -1) {
            int iPrefetchOrEof = prefetchOrEof(i10);
            if (iPrefetchOrEof != -1) {
                return consumeString(getSource(), this.currentPosition, iPrefetchOrEof);
            }
            AbstractJsonLexer.fail$kotlinx_serialization_json$default(this, (byte) 1, false, 2, null);
            throw new n8.i();
        }
        for (int i11 = i10; i11 < iIndexOf; i11++) {
            if (getSource().charAt(i11) == '\\') {
                return consumeString(getSource(), this.currentPosition, i11);
            }
        }
        this.currentPosition = iIndexOf + 1;
        return substring(i10, iIndexOf);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte consumeNextToken() {
        ensureHaveChars();
        ArrayAsSequence source = getSource();
        int i10 = this.currentPosition;
        while (true) {
            int iPrefetchOrEof = prefetchOrEof(i10);
            if (iPrefetchOrEof == -1) {
                this.currentPosition = iPrefetchOrEof;
                return (byte) 10;
            }
            int i11 = iPrefetchOrEof + 1;
            byte bCharToTokenClass = AbstractJsonLexerKt.charToTokenClass(source.charAt(iPrefetchOrEof));
            if (bCharToTokenClass != 3) {
                this.currentPosition = i11;
                return bCharToTokenClass;
            }
            i10 = i11;
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public void ensureHaveChars() {
        int length = getSource().length() - this.currentPosition;
        if (length > this.threshold) {
            return;
        }
        preload(length);
    }

    public final char[] getBuffer() {
        return this.buffer;
    }

    public final InternalJsonReader getReader() {
        return this.reader;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public int indexOf(char c10, int i10) {
        ArrayAsSequence source = getSource();
        int length = source.length();
        while (i10 < length) {
            if (source.charAt(i10) == c10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public String peekLeadingMatchingValue(String keyToMatch, boolean z10) {
        r.e(keyToMatch, "keyToMatch");
        return null;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public int prefetchOrEof(int i10) {
        if (i10 < getSource().length()) {
            return i10;
        }
        this.currentPosition = i10;
        ensureHaveChars();
        return (this.currentPosition != 0 || getSource().length() == 0) ? -1 : 0;
    }

    public final void release() {
        CharArrayPoolBatchSize.INSTANCE.release(this.buffer);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public int skipWhitespaces() {
        int iPrefetchOrEof;
        char cCharAt;
        int i10 = this.currentPosition;
        while (true) {
            iPrefetchOrEof = prefetchOrEof(i10);
            if (iPrefetchOrEof == -1 || !((cCharAt = getSource().charAt(iPrefetchOrEof)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
                break;
            }
            i10 = iPrefetchOrEof + 1;
        }
        this.currentPosition = iPrefetchOrEof;
        return iPrefetchOrEof;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public String substring(int i10, int i11) {
        return getSource().substring(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public ArrayAsSequence getSource() {
        return this.source;
    }

    public ReaderJsonLexer(InternalJsonReader reader, char[] buffer) {
        r.e(reader, "reader");
        r.e(buffer, "buffer");
        this.reader = reader;
        this.buffer = buffer;
        this.threshold = 128;
        this.source = new ArrayAsSequence(buffer);
        preload(0);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public void consumeNextToken(char c10) {
        ensureHaveChars();
        ArrayAsSequence source = getSource();
        int i10 = this.currentPosition;
        while (true) {
            int iPrefetchOrEof = prefetchOrEof(i10);
            if (iPrefetchOrEof != -1) {
                int i11 = iPrefetchOrEof + 1;
                char cCharAt = source.charAt(iPrefetchOrEof);
                if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                    this.currentPosition = i11;
                    if (cCharAt == c10) {
                        return;
                    } else {
                        unexpectedToken(c10);
                    }
                }
                i10 = i11;
            } else {
                this.currentPosition = iPrefetchOrEof;
                unexpectedToken(c10);
                return;
            }
        }
    }
}
