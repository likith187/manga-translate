package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlin.text.e0;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.AbstractDecoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;
import n8.i;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonDecoderForUnsignedTypes extends AbstractDecoder {
    private final AbstractJsonLexer lexer;
    private final SerializersModule serializersModule;

    public JsonDecoderForUnsignedTypes(AbstractJsonLexer lexer, Json json) {
        r.e(lexer, "lexer");
        r.e(json, "json");
        this.lexer = lexer;
        this.serializersModule = json.getSerializersModule();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public byte decodeByte() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        String strConsumeStringLenient = abstractJsonLexer.consumeStringLenient();
        try {
            return e0.a(strConsumeStringLenient);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, "Failed to parse type 'UByte' for input '" + strConsumeStringLenient + '\'', 0, null, 6, null);
            throw new i();
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeElementIndex(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        throw new IllegalStateException("unsupported");
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public int decodeInt() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        String strConsumeStringLenient = abstractJsonLexer.consumeStringLenient();
        try {
            return e0.d(strConsumeStringLenient);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, "Failed to parse type 'UInt' for input '" + strConsumeStringLenient + '\'', 0, null, 6, null);
            throw new i();
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public long decodeLong() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        String strConsumeStringLenient = abstractJsonLexer.consumeStringLenient();
        try {
            return e0.g(strConsumeStringLenient);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, "Failed to parse type 'ULong' for input '" + strConsumeStringLenient + '\'', 0, null, 6, null);
            throw new i();
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public short decodeShort() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        String strConsumeStringLenient = abstractJsonLexer.consumeStringLenient();
        try {
            return e0.j(strConsumeStringLenient);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, "Failed to parse type 'UShort' for input '" + strConsumeStringLenient + '\'', 0, null, 6, null);
            throw new i();
        }
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.CompositeDecoder
    public SerializersModule getSerializersModule() {
        return this.serializersModule;
    }
}
