package com.oplus.aiunit.realtime_asr.result;

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
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
public final class Sentence$$serializer implements GeneratedSerializer<Sentence> {
    public static final Sentence$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        Sentence$$serializer sentence$$serializer = new Sentence$$serializer();
        INSTANCE = sentence$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.oplus.aiunit.realtime_asr.result.Sentence", sentence$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("text", false);
        pluginGeneratedSerialDescriptor.addElement("wordsPosList", true);
        pluginGeneratedSerialDescriptor.addElement("biz_id", true);
        pluginGeneratedSerialDescriptor.addElement("languageCode", true);
        pluginGeneratedSerialDescriptor.addElement("startOffset", true);
        pluginGeneratedSerialDescriptor.addElement("endOffset", true);
        pluginGeneratedSerialDescriptor.addElement("roleId", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Sentence$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer[] kSerializerArr = Sentence.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        KSerializer<?> nullable = BuiltinSerializersKt.getNullable(kSerializerArr[1]);
        KSerializer<?> nullable2 = BuiltinSerializersKt.getNullable(stringSerializer);
        KSerializer<?> nullable3 = BuiltinSerializersKt.getNullable(stringSerializer);
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, nullable, nullable2, nullable3, BuiltinSerializersKt.getNullable(longSerializer), BuiltinSerializersKt.getNullable(longSerializer), BuiltinSerializersKt.getNullable(stringSerializer)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Sentence deserialize(Decoder decoder) {
        int i10;
        String str;
        Long l10;
        String str2;
        WordPosDto[] wordPosDtoArr;
        String str3;
        String str4;
        Long l11;
        r.e(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        KSerializer[] kSerializerArr = Sentence.$childSerializers;
        int i11 = 6;
        String strDecodeStringElement = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
            WordPosDto[] wordPosDtoArr2 = (WordPosDto[]) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, kSerializerArr[1], null);
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            String str5 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, stringSerializer, null);
            String str6 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, stringSerializer, null);
            LongSerializer longSerializer = LongSerializer.INSTANCE;
            Long l12 = (Long) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, longSerializer, null);
            Long l13 = (Long) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, longSerializer, null);
            wordPosDtoArr = wordPosDtoArr2;
            str2 = strDecodeStringElement2;
            str = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, stringSerializer, null);
            l10 = l13;
            str4 = str6;
            l11 = l12;
            str3 = str5;
            i10 = 127;
        } else {
            boolean z10 = true;
            int i12 = 0;
            String str7 = null;
            Long l14 = null;
            WordPosDto[] wordPosDtoArr3 = null;
            String str8 = null;
            String str9 = null;
            Long l15 = null;
            while (z10) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case -1:
                        z10 = false;
                        i11 = 6;
                        break;
                    case 0:
                        strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
                        i12 |= 1;
                        i11 = 6;
                        break;
                    case 1:
                        wordPosDtoArr3 = (WordPosDto[]) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, kSerializerArr[1], wordPosDtoArr3);
                        i12 |= 2;
                        i11 = 6;
                        break;
                    case 2:
                        str8 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, StringSerializer.INSTANCE, str8);
                        i12 |= 4;
                        i11 = 6;
                        break;
                    case 3:
                        str9 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, StringSerializer.INSTANCE, str9);
                        i12 |= 8;
                        break;
                    case 4:
                        l15 = (Long) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 4, LongSerializer.INSTANCE, l15);
                        i12 |= 16;
                        break;
                    case 5:
                        l14 = (Long) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, LongSerializer.INSTANCE, l14);
                        i12 |= 32;
                        break;
                    case 6:
                        str7 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i11, StringSerializer.INSTANCE, str7);
                        i12 |= 64;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            i10 = i12;
            str = str7;
            l10 = l14;
            str2 = strDecodeStringElement;
            wordPosDtoArr = wordPosDtoArr3;
            str3 = str8;
            str4 = str9;
            l11 = l15;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new Sentence(i10, str2, wordPosDtoArr, str3, str4, l11, l10, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Sentence value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        Sentence.write$Self$aiunit_sdk_realtime_asr_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
