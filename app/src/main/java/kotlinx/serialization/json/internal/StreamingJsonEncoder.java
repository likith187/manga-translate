package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.modules.SerializersModule;
import n8.i;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public final class StreamingJsonEncoder extends AbstractEncoder implements JsonEncoder {
    private final Composer composer;
    private final JsonConfiguration configuration;
    private boolean forceQuoting;
    private final Json json;
    private final WriteMode mode;
    private final JsonEncoder[] modeReuseCache;
    private String polymorphicDiscriminator;
    private String polymorphicSerialName;
    private final SerializersModule serializersModule;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WriteMode.values().length];
            try {
                iArr[WriteMode.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WriteMode.MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public StreamingJsonEncoder(Composer composer, Json json, WriteMode mode, JsonEncoder[] jsonEncoderArr) {
        r.e(composer, "composer");
        r.e(json, "json");
        r.e(mode, "mode");
        this.composer = composer;
        this.json = json;
        this.mode = mode;
        this.modeReuseCache = jsonEncoderArr;
        this.serializersModule = getJson().getSerializersModule();
        this.configuration = getJson().getConfiguration();
        int iOrdinal = mode.ordinal();
        if (jsonEncoderArr != null) {
            JsonEncoder jsonEncoder = jsonEncoderArr[iOrdinal];
            if (jsonEncoder == null && jsonEncoder == this) {
                return;
            }
            jsonEncoderArr[iOrdinal] = this;
        }
    }

    private final /* synthetic */ <T extends Composer> T composerAs(p pVar) {
        Composer composer = this.composer;
        r.i(3, "T");
        return composer != null ? (T) this.composer : (T) pVar.invoke(this.composer.writer, Boolean.valueOf(this.forceQuoting));
    }

    private final void encodeTypeInfo(String str, String str2) {
        this.composer.nextItem();
        encodeString(str);
        this.composer.print(':');
        this.composer.space();
        encodeString(str2);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public CompositeEncoder beginStructure(SerialDescriptor descriptor) {
        JsonEncoder jsonEncoder;
        r.e(descriptor, "descriptor");
        WriteMode writeModeSwitchMode = WriteModeKt.switchMode(getJson(), descriptor);
        char c10 = writeModeSwitchMode.begin;
        if (c10 != 0) {
            this.composer.print(c10);
            this.composer.indent();
        }
        String str = this.polymorphicDiscriminator;
        if (str != null) {
            String serialName = this.polymorphicSerialName;
            if (serialName == null) {
                serialName = descriptor.getSerialName();
            }
            encodeTypeInfo(str, serialName);
            this.polymorphicDiscriminator = null;
            this.polymorphicSerialName = null;
        }
        if (this.mode == writeModeSwitchMode) {
            return this;
        }
        JsonEncoder[] jsonEncoderArr = this.modeReuseCache;
        return (jsonEncoderArr == null || (jsonEncoder = jsonEncoderArr[writeModeSwitchMode.ordinal()]) == null) ? new StreamingJsonEncoder(this.composer, getJson(), writeModeSwitchMode, this.modeReuseCache) : jsonEncoder;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeBoolean(boolean z10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(z10));
        } else {
            this.composer.print(z10);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeByte(byte b10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf((int) b10));
        } else {
            this.composer.print(b10);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeChar(char c10) {
        encodeString(String.valueOf(c10));
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeDouble(double d10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(d10));
        } else {
            this.composer.print(d10);
        }
        if (this.configuration.getAllowSpecialFloatingPointValues()) {
            return;
        }
        if (Double.isInfinite(d10) || Double.isNaN(d10)) {
            throw JsonExceptionsKt.InvalidFloatingPointEncoded(Double.valueOf(d10), this.composer.writer.toString());
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder
    public boolean encodeElement(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        int i11 = WhenMappings.$EnumSwitchMapping$0[this.mode.ordinal()];
        if (i11 != 1) {
            boolean z10 = false;
            if (i11 != 2) {
                if (i11 != 3) {
                    if (!this.composer.getWritingFirst()) {
                        this.composer.print(AbstractJsonLexerKt.COMMA);
                    }
                    this.composer.nextItem();
                    encodeString(JsonNamesMapKt.getJsonElementName(descriptor, getJson(), i10));
                    this.composer.print(':');
                    this.composer.space();
                } else {
                    if (i10 == 0) {
                        this.forceQuoting = true;
                    }
                    if (i10 == 1) {
                        this.composer.print(AbstractJsonLexerKt.COMMA);
                        this.composer.space();
                        this.forceQuoting = false;
                    }
                }
            } else if (this.composer.getWritingFirst()) {
                this.forceQuoting = true;
                this.composer.nextItem();
            } else {
                if (i10 % 2 == 0) {
                    this.composer.print(AbstractJsonLexerKt.COMMA);
                    this.composer.nextItem();
                    z10 = true;
                } else {
                    this.composer.print(':');
                    this.composer.space();
                }
                this.forceQuoting = z10;
            }
        } else {
            if (!this.composer.getWritingFirst()) {
                this.composer.print(AbstractJsonLexerKt.COMMA);
            }
            this.composer.nextItem();
        }
        return true;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeEnum(SerialDescriptor enumDescriptor, int i10) {
        r.e(enumDescriptor, "enumDescriptor");
        encodeString(enumDescriptor.getElementName(i10));
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeFloat(float f10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(f10));
        } else {
            this.composer.print(f10);
        }
        if (this.configuration.getAllowSpecialFloatingPointValues()) {
            return;
        }
        if (Float.isInfinite(f10) || Float.isNaN(f10)) {
            throw JsonExceptionsKt.InvalidFloatingPointEncoded(Float.valueOf(f10), this.composer.writer.toString());
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public Encoder encodeInline(SerialDescriptor descriptor) {
        StreamingJsonEncoder streamingJsonEncoder;
        r.e(descriptor, "descriptor");
        if (StreamingJsonEncoderKt.isUnsignedNumber(descriptor)) {
            Composer composerForUnsignedNumbers = this.composer;
            if (!(composerForUnsignedNumbers instanceof ComposerForUnsignedNumbers)) {
                composerForUnsignedNumbers = new ComposerForUnsignedNumbers(composerForUnsignedNumbers.writer, this.forceQuoting);
            }
            streamingJsonEncoder = new StreamingJsonEncoder(composerForUnsignedNumbers, getJson(), this.mode, (JsonEncoder[]) null);
        } else {
            if (!StreamingJsonEncoderKt.isUnquotedLiteral(descriptor)) {
                if (this.polymorphicDiscriminator == null) {
                    return super.encodeInline(descriptor);
                }
                this.polymorphicSerialName = descriptor.getSerialName();
                return this;
            }
            Composer composerForUnquotedLiterals = this.composer;
            if (!(composerForUnquotedLiterals instanceof ComposerForUnquotedLiterals)) {
                composerForUnquotedLiterals = new ComposerForUnquotedLiterals(composerForUnquotedLiterals.writer, this.forceQuoting);
            }
            streamingJsonEncoder = new StreamingJsonEncoder(composerForUnquotedLiterals, getJson(), this.mode, (JsonEncoder[]) null);
        }
        return streamingJsonEncoder;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeInt(int i10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(i10));
        } else {
            this.composer.print(i10);
        }
    }

    @Override // kotlinx.serialization.json.JsonEncoder
    public void encodeJsonElement(JsonElement element) {
        r.e(element, "element");
        if (this.polymorphicDiscriminator == null || (element instanceof JsonObject)) {
            encodeSerializableValue(JsonElementSerializer.INSTANCE, element);
        } else {
            PolymorphicKt.throwJsonElementPolymorphicException(this.polymorphicSerialName, element);
            throw new i();
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeLong(long j10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(j10));
        } else {
            this.composer.print(j10);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
        this.composer.print(AbstractJsonLexerKt.NULL);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.CompositeEncoder
    public <T> void encodeNullableSerializableElement(SerialDescriptor descriptor, int i10, SerializationStrategy<? super T> serializer, T t10) {
        r.e(descriptor, "descriptor");
        r.e(serializer, "serializer");
        if (t10 != null || this.configuration.getExplicitNulls()) {
            super.encodeNullableSerializableElement(descriptor, i10, serializer, t10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0062  */
    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public <T> void encodeSerializableValue(kotlinx.serialization.SerializationStrategy<? super T> r4, T r5) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.StreamingJsonEncoder.encodeSerializableValue(kotlinx.serialization.SerializationStrategy, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeShort(short s10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf((int) s10));
        } else {
            this.composer.print(s10);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeString(String value) {
        r.e(value, "value");
        this.composer.printQuoted(value);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.CompositeEncoder
    public void endStructure(SerialDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        if (this.mode.end != 0) {
            this.composer.unIndent();
            this.composer.nextItemIfNotFirst();
            this.composer.print(this.mode.end);
        }
    }

    @Override // kotlinx.serialization.json.JsonEncoder
    public Json getJson() {
        return this.json;
    }

    @Override // kotlinx.serialization.encoding.Encoder, kotlinx.serialization.encoding.CompositeEncoder
    public SerializersModule getSerializersModule() {
        return this.serializersModule;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.CompositeEncoder
    public boolean shouldEncodeElementDefault(SerialDescriptor descriptor, int i10) {
        r.e(descriptor, "descriptor");
        return this.configuration.getEncodeDefaults();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StreamingJsonEncoder(InternalJsonWriter output, Json json, WriteMode mode, JsonEncoder[] modeReuseCache) {
        this(ComposersKt.Composer(output, json), json, mode, modeReuseCache);
        r.e(output, "output");
        r.e(json, "json");
        r.e(mode, "mode");
        r.e(modeReuseCache, "modeReuseCache");
    }
}
