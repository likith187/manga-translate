package com.oplus.aiunit.realtime_asr.result;

import com.coui.appcompat.tooltips.COUIToolTips;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
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
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
public final class AudioText$$serializer implements GeneratedSerializer<AudioText> {
    public static final AudioText$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        AudioText$$serializer audioText$$serializer = new AudioText$$serializer();
        INSTANCE = audioText$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.oplus.aiunit.realtime_asr.result.AudioText", audioText$$serializer, 11);
        pluginGeneratedSerialDescriptor.addElement(RealTimeAsrInputSlot.KEY_MESSAGE_ID, false);
        pluginGeneratedSerialDescriptor.addElement(RealTimeAsrInputSlot.KEY_CALL_ID, true);
        pluginGeneratedSerialDescriptor.addElement("startOffset", false);
        pluginGeneratedSerialDescriptor.addElement("endOffset", false);
        pluginGeneratedSerialDescriptor.addElement("type", false);
        pluginGeneratedSerialDescriptor.addElement("text", true);
        pluginGeneratedSerialDescriptor.addElement("index", true);
        pluginGeneratedSerialDescriptor.addElement("speaker", true);
        pluginGeneratedSerialDescriptor.addElement("smoothText", true);
        pluginGeneratedSerialDescriptor.addElement("originalText", true);
        pluginGeneratedSerialDescriptor.addElement(RealTimeAsrInputSlot.KEY_LANGUAGE, true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private AudioText$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        KSerializer<?> nullable = BuiltinSerializersKt.getNullable(stringSerializer);
        Sentence$$serializer sentence$$serializer = Sentence$$serializer.INSTANCE;
        KSerializer<?> nullable2 = BuiltinSerializersKt.getNullable(sentence$$serializer);
        KSerializer<?> nullable3 = BuiltinSerializersKt.getNullable(IntSerializer.INSTANCE);
        KSerializer<?> nullable4 = BuiltinSerializersKt.getNullable(stringSerializer);
        KSerializer<?> nullable5 = BuiltinSerializersKt.getNullable(sentence$$serializer);
        KSerializer<?> nullable6 = BuiltinSerializersKt.getNullable(sentence$$serializer);
        KSerializer<?> nullable7 = BuiltinSerializersKt.getNullable(stringSerializer);
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, nullable, longSerializer, longSerializer, stringSerializer, nullable2, nullable3, nullable4, nullable5, nullable6, nullable7};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public AudioText deserialize(Decoder decoder) {
        int i10;
        String str;
        Sentence sentence;
        Sentence sentence2;
        String str2;
        Integer num;
        Sentence sentence3;
        String str3;
        String str4;
        String str5;
        long j10;
        long j11;
        r.e(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        int i11 = 10;
        int i12 = 9;
        String strDecodeStringElement = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            String str6 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, stringSerializer, null);
            long jDecodeLongElement = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 2);
            long jDecodeLongElement2 = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 3);
            String strDecodeStringElement3 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 4);
            Sentence$$serializer sentence$$serializer = Sentence$$serializer.INSTANCE;
            Sentence sentence4 = (Sentence) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, sentence$$serializer, null);
            Integer num2 = (Integer) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, IntSerializer.INSTANCE, null);
            String str7 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 7, stringSerializer, null);
            Sentence sentence5 = (Sentence) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 8, sentence$$serializer, null);
            Sentence sentence6 = (Sentence) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 9, sentence$$serializer, null);
            str3 = strDecodeStringElement2;
            str = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 10, stringSerializer, null);
            sentence2 = sentence6;
            str2 = str7;
            num = num2;
            sentence3 = sentence4;
            str5 = strDecodeStringElement3;
            sentence = sentence5;
            i10 = 2047;
            str4 = str6;
            j10 = jDecodeLongElement;
            j11 = jDecodeLongElement2;
        } else {
            boolean z10 = true;
            int i13 = 0;
            String str8 = null;
            Sentence sentence7 = null;
            Sentence sentence8 = null;
            String str9 = null;
            Integer num3 = null;
            Sentence sentence9 = null;
            long jDecodeLongElement3 = 0;
            long jDecodeLongElement4 = 0;
            String str10 = null;
            String strDecodeStringElement4 = null;
            while (z10) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case -1:
                        z10 = false;
                        i11 = 10;
                        break;
                    case 0:
                        strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
                        i13 |= 1;
                        i11 = 10;
                        i12 = 9;
                        break;
                    case 1:
                        str10 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 1, StringSerializer.INSTANCE, str10);
                        i13 |= 2;
                        i11 = 10;
                        i12 = 9;
                        break;
                    case 2:
                        jDecodeLongElement3 = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 2);
                        i13 |= 4;
                        i11 = 10;
                        break;
                    case 3:
                        jDecodeLongElement4 = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 3);
                        i13 |= 8;
                        i11 = 10;
                        break;
                    case 4:
                        strDecodeStringElement4 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 4);
                        i13 |= 16;
                        i11 = 10;
                        break;
                    case 5:
                        sentence9 = (Sentence) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 5, Sentence$$serializer.INSTANCE, sentence9);
                        i13 |= 32;
                        i11 = 10;
                        break;
                    case 6:
                        num3 = (Integer) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 6, IntSerializer.INSTANCE, num3);
                        i13 |= 64;
                        i11 = 10;
                        break;
                    case 7:
                        str9 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 7, StringSerializer.INSTANCE, str9);
                        i13 |= 128;
                        break;
                    case 8:
                        sentence7 = (Sentence) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 8, Sentence$$serializer.INSTANCE, sentence7);
                        i13 |= COUIToolTips.ALIGN_TOP;
                        break;
                    case 9:
                        sentence8 = (Sentence) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i12, Sentence$$serializer.INSTANCE, sentence8);
                        i13 |= ConfigPackage.FRAME_SIZE_1;
                        break;
                    case 10:
                        str8 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, i11, StringSerializer.INSTANCE, str8);
                        i13 |= 1024;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            i10 = i13;
            str = str8;
            sentence = sentence7;
            sentence2 = sentence8;
            str2 = str9;
            num = num3;
            sentence3 = sentence9;
            str3 = strDecodeStringElement;
            str4 = str10;
            str5 = strDecodeStringElement4;
            j10 = jDecodeLongElement3;
            j11 = jDecodeLongElement4;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new AudioText(i10, str3, str4, j10, j11, str5, sentence3, num, str2, sentence, sentence2, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, AudioText value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        AudioText.write$Self$aiunit_sdk_realtime_asr_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
