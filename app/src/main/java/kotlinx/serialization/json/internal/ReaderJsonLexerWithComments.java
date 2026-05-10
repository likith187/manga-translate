package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import n8.i;
import n8.q;
import n8.w;

/* JADX INFO: loaded from: classes2.dex */
public final class ReaderJsonLexerWithComments extends ReaderJsonLexer {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderJsonLexerWithComments(InternalJsonReader reader, char[] buffer) {
        super(reader, buffer);
        r.e(reader, "reader");
        r.e(buffer, "buffer");
    }

    private final q handleComment(int i10) {
        int i11 = i10 + 2;
        char cCharAt = getSource().charAt(i10 + 1);
        if (cCharAt != '*') {
            if (cCharAt != '/') {
                return w.a(Integer.valueOf(i10), Boolean.FALSE);
            }
            int iPrefetchOrEof = i11;
            while (i10 != -1) {
                int iV = kotlin.text.r.V(getSource(), '\n', iPrefetchOrEof, false, 4, null);
                if (iV != -1) {
                    return w.a(Integer.valueOf(iV + 1), Boolean.TRUE);
                }
                iPrefetchOrEof = prefetchOrEof(getSource().length());
                i10 = iPrefetchOrEof;
            }
            return w.a(-1, Boolean.TRUE);
        }
        boolean z10 = false;
        int iPrefetchWithinThreshold = i11;
        while (i10 != -1) {
            int iW = kotlin.text.r.W(getSource(), "*/", iPrefetchWithinThreshold, false, 4, null);
            if (iW != -1) {
                return w.a(Integer.valueOf(iW + 2), Boolean.TRUE);
            }
            if (getSource().charAt(getSource().length() - 1) == '*') {
                iPrefetchWithinThreshold = prefetchWithinThreshold(getSource().length() - 1);
                if (z10) {
                    break;
                }
                z10 = true;
            } else {
                iPrefetchWithinThreshold = prefetchOrEof(getSource().length());
            }
            i10 = iPrefetchWithinThreshold;
        }
        this.currentPosition = getSource().length();
        AbstractJsonLexer.fail$default(this, "Expected end of the block comment: \"*/\", but had EOF instead", 0, null, 6, null);
        throw new i();
    }

    private final int prefetchWithinThreshold(int i10) {
        if (getSource().length() - i10 > this.threshold) {
            return i10;
        }
        this.currentPosition = i10;
        ensureHaveChars();
        return (this.currentPosition != 0 || getSource().length() == 0) ? -1 : 0;
    }

    @Override // kotlinx.serialization.json.internal.ReaderJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public boolean canConsumeValue() {
        ensureHaveChars();
        int iSkipWhitespaces = skipWhitespaces();
        if (iSkipWhitespaces >= getSource().length() || iSkipWhitespaces == -1) {
            return false;
        }
        return isValidValueStart(getSource().charAt(iSkipWhitespaces));
    }

    @Override // kotlinx.serialization.json.internal.ReaderJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public void consumeNextToken(char c10) {
        ensureHaveChars();
        ArrayAsSequence source = getSource();
        int iSkipWhitespaces = skipWhitespaces();
        if (iSkipWhitespaces >= source.length() || iSkipWhitespaces == -1) {
            this.currentPosition = -1;
            unexpectedToken(c10);
        }
        char cCharAt = source.charAt(iSkipWhitespaces);
        this.currentPosition = iSkipWhitespaces + 1;
        if (cCharAt == c10) {
            return;
        }
        unexpectedToken(c10);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte peekNextToken() {
        ensureHaveChars();
        ArrayAsSequence source = getSource();
        int iSkipWhitespaces = skipWhitespaces();
        if (iSkipWhitespaces >= source.length() || iSkipWhitespaces == -1) {
            return (byte) 10;
        }
        this.currentPosition = iSkipWhitespaces;
        return AbstractJsonLexerKt.charToTokenClass(source.charAt(iSkipWhitespaces));
    }

    @Override // kotlinx.serialization.json.internal.ReaderJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public int skipWhitespaces() {
        int iPrefetchOrEof;
        int i10 = this.currentPosition;
        while (true) {
            iPrefetchOrEof = prefetchOrEof(i10);
            if (iPrefetchOrEof == -1) {
                break;
            }
            char cCharAt = getSource().charAt(iPrefetchOrEof);
            if (cCharAt == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t') {
                i10 = iPrefetchOrEof + 1;
            } else {
                if (cCharAt != '/' || iPrefetchOrEof + 1 >= getSource().length()) {
                    break;
                }
                q qVarHandleComment = handleComment(iPrefetchOrEof);
                int iIntValue = ((Number) qVarHandleComment.component1()).intValue();
                if (!((Boolean) qVarHandleComment.component2()).booleanValue()) {
                    iPrefetchOrEof = iIntValue;
                    break;
                }
                i10 = iIntValue;
            }
        }
        this.currentPosition = iPrefetchOrEof;
        return iPrefetchOrEof;
    }

    @Override // kotlinx.serialization.json.internal.ReaderJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte consumeNextToken() {
        ensureHaveChars();
        ArrayAsSequence source = getSource();
        int iSkipWhitespaces = skipWhitespaces();
        if (iSkipWhitespaces >= source.length() || iSkipWhitespaces == -1) {
            return (byte) 10;
        }
        this.currentPosition = iSkipWhitespaces + 1;
        return AbstractJsonLexerKt.charToTokenClass(source.charAt(iSkipWhitespaces));
    }
}
