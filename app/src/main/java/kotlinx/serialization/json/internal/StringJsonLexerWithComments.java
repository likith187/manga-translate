package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import n8.i;

/* JADX INFO: loaded from: classes2.dex */
public final class StringJsonLexerWithComments extends StringJsonLexer {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringJsonLexerWithComments(String source) {
        super(source);
        r.e(source, "source");
    }

    @Override // kotlinx.serialization.json.internal.StringJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public boolean canConsumeValue() {
        int iSkipWhitespaces = skipWhitespaces();
        if (iSkipWhitespaces >= getSource().length() || iSkipWhitespaces == -1) {
            return false;
        }
        return isValidValueStart(getSource().charAt(iSkipWhitespaces));
    }

    @Override // kotlinx.serialization.json.internal.StringJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte consumeNextToken() {
        String source = getSource();
        int iSkipWhitespaces = skipWhitespaces();
        if (iSkipWhitespaces >= source.length() || iSkipWhitespaces == -1) {
            return (byte) 10;
        }
        this.currentPosition = iSkipWhitespaces + 1;
        return AbstractJsonLexerKt.charToTokenClass(source.charAt(iSkipWhitespaces));
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte peekNextToken() {
        String source = getSource();
        int iSkipWhitespaces = skipWhitespaces();
        if (iSkipWhitespaces >= source.length() || iSkipWhitespaces == -1) {
            return (byte) 10;
        }
        this.currentPosition = iSkipWhitespaces;
        return AbstractJsonLexerKt.charToTokenClass(source.charAt(iSkipWhitespaces));
    }

    @Override // kotlinx.serialization.json.internal.StringJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public int skipWhitespaces() {
        int i10;
        int iV = this.currentPosition;
        if (iV == -1) {
            return iV;
        }
        String source = getSource();
        while (iV < source.length()) {
            char cCharAt = source.charAt(iV);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                if (cCharAt != '/' || (i10 = iV + 1) >= source.length()) {
                    break;
                }
                char cCharAt2 = source.charAt(i10);
                if (cCharAt2 == '*') {
                    int iW = kotlin.text.r.W(source, "*/", iV + 2, false, 4, null);
                    if (iW == -1) {
                        this.currentPosition = source.length();
                        AbstractJsonLexer.fail$default(this, "Expected end of the block comment: \"*/\", but had EOF instead", 0, null, 6, null);
                        throw new i();
                    }
                    iV = iW + 2;
                } else {
                    if (cCharAt2 != '/') {
                        break;
                    }
                    iV = kotlin.text.r.V(source, '\n', iV + 2, false, 4, null);
                    if (iV == -1) {
                        iV = source.length();
                    }
                }
            }
            iV++;
        }
        this.currentPosition = iV;
        return iV;
    }

    @Override // kotlinx.serialization.json.internal.StringJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public void consumeNextToken(char c10) {
        String source = getSource();
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
}
