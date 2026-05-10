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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
public final class AsrAckMessage$$serializer implements GeneratedSerializer<AsrAckMessage> {
    public static final AsrAckMessage$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        AsrAckMessage$$serializer asrAckMessage$$serializer = new AsrAckMessage$$serializer();
        INSTANCE = asrAckMessage$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.oplus.aiunit.realtime_asr.result.AsrAckMessage", asrAckMessage$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("code", false);
        pluginGeneratedSerialDescriptor.addElement("message", true);
        pluginGeneratedSerialDescriptor.addElement("ciphertext", true);
        pluginGeneratedSerialDescriptor.addElement("data", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private AsrAckMessage$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{IntSerializer.INSTANCE, stringSerializer, BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(AudioText$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public AsrAckMessage deserialize(Decoder decoder) {
        int i10;
        int i11;
        String str;
        String str2;
        AudioText audioText;
        r.e(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            int iDecodeIntElement = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 0);
            String strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 1);
            String str3 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, StringSerializer.INSTANCE, null);
            i10 = iDecodeIntElement;
            audioText = (AudioText) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, AudioText$$serializer.INSTANCE, null);
            str2 = str3;
            str = strDecodeStringElement;
            i11 = 15;
        } else {
            boolean z10 = true;
            int iDecodeIntElement2 = 0;
            String strDecodeStringElement2 = null;
            String str4 = null;
            AudioText audioText2 = null;
            int i12 = 0;
            while (z10) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                if (iDecodeElementIndex == -1) {
                    z10 = false;
                } else if (iDecodeElementIndex == 0) {
                    iDecodeIntElement2 = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 0);
                    i12 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 1);
                    i12 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    str4 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 2, StringSerializer.INSTANCE, str4);
                    i12 |= 4;
                } else {
                    if (iDecodeElementIndex != 3) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    audioText2 = (AudioText) compositeDecoderBeginStructure.decodeNullableSerializableElement(descriptor2, 3, AudioText$$serializer.INSTANCE, audioText2);
                    i12 |= 8;
                }
            }
            i10 = iDecodeIntElement2;
            i11 = i12;
            str = strDecodeStringElement2;
            str2 = str4;
            audioText = audioText2;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new AsrAckMessage(i11, i10, str, str2, audioText, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, AsrAckMessage value) {
        r.e(encoder, "encoder");
        r.e(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        AsrAckMessage.write$Self$aiunit_sdk_realtime_asr_release(value, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
