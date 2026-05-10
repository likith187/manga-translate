package kotlinx.serialization.json.internal;

import java.util.Iterator;
import kotlin.jvm.internal.r;
import n8.i;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public class StringJsonLexer extends AbstractJsonLexer {
    private final String source;

    public StringJsonLexer(String source) {
        r.e(source, "source");
        this.source = source;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public boolean canConsumeValue() {
        int i10 = this.currentPosition;
        if (i10 == -1) {
            return false;
        }
        String source = getSource();
        while (i10 < source.length()) {
            char cCharAt = source.charAt(i10);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = i10;
                return isValidValueStart(cCharAt);
            }
            i10++;
        }
        this.currentPosition = i10;
        return false;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public String consumeKeyString() {
        consumeNextToken(AbstractJsonLexerKt.STRING);
        int i10 = this.currentPosition;
        int iV = kotlin.text.r.V(getSource(), AbstractJsonLexerKt.STRING, i10, false, 4, null);
        if (iV == -1) {
            consumeStringLenient();
            fail$kotlinx_serialization_json((byte) 1, false);
            throw new i();
        }
        for (int i11 = i10; i11 < iV; i11++) {
            if (getSource().charAt(i11) == '\\') {
                return consumeString(getSource(), this.currentPosition, i11);
            }
        }
        this.currentPosition = iV + 1;
        String strSubstring = getSource().substring(i10, iV);
        r.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte consumeNextToken() {
        String source = getSource();
        int i10 = this.currentPosition;
        while (i10 != -1 && i10 < source.length()) {
            int i11 = i10 + 1;
            char cCharAt = source.charAt(i10);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = i11;
                return AbstractJsonLexerKt.charToTokenClass(cCharAt);
            }
            i10 = i11;
        }
        this.currentPosition = source.length();
        return (byte) 10;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public void consumeStringChunked(boolean z10, l consumeChunk) {
        r.e(consumeChunk, "consumeChunk");
        Iterator it = kotlin.text.r.Q0(z10 ? consumeStringLenient() : consumeString(), ReaderJsonLexerKt.BATCH_SIZE).iterator();
        while (it.hasNext()) {
            consumeChunk.invoke(it.next());
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public String peekLeadingMatchingValue(String keyToMatch, boolean z10) {
        r.e(keyToMatch, "keyToMatch");
        int i10 = this.currentPosition;
        try {
            if (consumeNextToken() == 6 && r.a(peekString(z10), keyToMatch)) {
                discardPeeked();
                if (consumeNextToken() == 5) {
                    return peekString(z10);
                }
            }
            return null;
        } finally {
            this.currentPosition = i10;
            discardPeeked();
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public int prefetchOrEof(int i10) {
        if (i10 < getSource().length()) {
            return i10;
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public int skipWhitespaces() {
        char cCharAt;
        int i10 = this.currentPosition;
        if (i10 == -1) {
            return i10;
        }
        String source = getSource();
        while (i10 < source.length() && ((cCharAt = source.charAt(i10)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
            i10++;
        }
        this.currentPosition = i10;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public String getSource() {
        return this.source;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public void consumeNextToken(char c10) {
        if (this.currentPosition == -1) {
            unexpectedToken(c10);
        }
        String source = getSource();
        int i10 = this.currentPosition;
        while (i10 < source.length()) {
            int i11 = i10 + 1;
            char cCharAt = source.charAt(i10);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = i11;
                if (cCharAt == c10) {
                    return;
                } else {
                    unexpectedToken(c10);
                }
            }
            i10 = i11;
        }
        this.currentPosition = -1;
        unexpectedToken(c10);
    }
}
