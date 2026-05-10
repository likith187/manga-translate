package com.oplus.aiunit.realtime_asr.result;

import java.util.Map;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
public final class WordPosDto$$serializer implements GeneratedSerializer<WordPosDto> {
    public static final WordPosDto$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        WordPosDto$$serializer wordPosDto$$serializer = new WordPosDto$$serializer();
        INSTANCE = wordPosDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.oplus.aiunit.realtime_asr.result.WordPosDto", wordPosDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("text", false);
        pluginGeneratedSerialDescriptor.addElement("start", false);
        pluginGeneratedSerialDescriptor.addElement("end", false);
        pluginGeneratedSerialDescriptor.addElement("labels", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private WordPosDto$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?> nullable = BuiltinSerializersKt.getNullable(WordPosDto.$childSerializers[3]);
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{StringSerializer.INSTANCE, intSerializer, intSerializer, nullable};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public WordPosDto deserialize(Decoder decoder) {
        int i10;
        int i11;
        int i12;
        String str;
        Map map;
        r.e(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = WordPosDto.$childSerializers;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
            int iDecodeIntElement = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 1);
            int iDecodeIntElement2 = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 2);
            map = (Map) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            str = strDecodeStringElement;
            i10 = iDecodeIntElement2;
            i11 = 15;
            i12 = iDecodeIntElement;
        } else {
            boolean z10 = true;
            int iDecodeIntElement3 = 0;
            int iDecodeIntElement4 = 0;
            String strDecodeStringElement2 = null;
            Map map2 = null;
            int i13 = 0;
            while (z10) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                if (iDecodeElementIndex == -1) {
                    z10 = false;
                } else if (iDecodeElementIndex == 0) {
                    strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
                    i13 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    iDecodeIntElement4 = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 1);
                    i13 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    iDecodeIntElement3 = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 2);
                    i13 |= 4;
                } else {
                    if (iDecodeElementIndex != 3) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    map2 = (Map) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, kSerializerArr[3], map2);
                    i13 |= 8;
                }
            }
            i10 = iDecodeIntElement3;
            i11 = i13;
            i12 = iDecodeIntElement4;
            str = strDecodeStringElement2;
            map = map2;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new WordPosDto(i11, str, i12, i10, map, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, WordPosDto value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        WordPosDto.write$Self$aiunit_sdk_realtime_asr_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
