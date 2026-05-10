package com.oplus.aiunit.realtime_asr.result;

import com.oplus.aiunit.core.utils.AILog;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: loaded from: classes2.dex */
@Serializable
public final class AsrAckMessage {
    public static final Companion Companion = new Companion(null);
    private String ciphertext;
    private int code;
    private AudioText data;
    private final String message;

    public static final class Companion {
        private Companion() {
        }

        public final AsrAckMessage fromJson(String jsonStr) {
            r.e(jsonStr, "jsonStr");
            try {
                Json jsonJson$default = JsonKt.Json$default(null, AsrAckMessage$Companion$fromJson$jsonDecoder$1.INSTANCE, 1, null);
                jsonJson$default.getSerializersModule();
                return (AsrAckMessage) jsonJson$default.decodeFromString(BuiltinSerializersKt.getNullable(AsrAckMessage.Companion.serializer()), jsonStr);
            } catch (Exception e10) {
                AILog.e("AsrAckMessage", "fromJson error:" + jsonStr, e10);
                return null;
            }
        }

        public final KSerializer<AsrAckMessage> serializer() {
            return AsrAckMessage$$serializer.INSTANCE;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ AsrAckMessage(int i10, int i11, String str, String str2, AudioText audioText, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i10 & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i10, 1, AsrAckMessage$$serializer.INSTANCE.getDescriptor());
        }
        this.code = i11;
        if ((i10 & 2) == 0) {
            this.message = "";
        } else {
            this.message = str;
        }
        if ((i10 & 4) == 0) {
            this.ciphertext = null;
        } else {
            this.ciphertext = str2;
        }
        if ((i10 & 8) == 0) {
            this.data = null;
        } else {
            this.data = audioText;
        }
    }

    public static /* synthetic */ AsrAckMessage copy$default(AsrAckMessage asrAckMessage, int i10, String str, String str2, AudioText audioText, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = asrAckMessage.code;
        }
        if ((i11 & 2) != 0) {
            str = asrAckMessage.message;
        }
        if ((i11 & 4) != 0) {
            str2 = asrAckMessage.ciphertext;
        }
        if ((i11 & 8) != 0) {
            audioText = asrAckMessage.data;
        }
        return asrAckMessage.copy(i10, str, str2, audioText);
    }

    public static final /* synthetic */ void write$Self$aiunit_sdk_realtime_asr_release(AsrAckMessage asrAckMessage, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, asrAckMessage.code);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || !r.a(asrAckMessage.message, "")) {
            compositeEncoder.encodeStringElement(serialDescriptor, 1, asrAckMessage.message);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || asrAckMessage.ciphertext != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, asrAckMessage.ciphertext);
        }
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) && asrAckMessage.data == null) {
            return;
        }
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, AudioText$$serializer.INSTANCE, asrAckMessage.data);
    }

    public final int component1() {
        return this.code;
    }

    public final String component2() {
        return this.message;
    }

    public final String component3() {
        return this.ciphertext;
    }

    public final AudioText component4() {
        return this.data;
    }

    public final AsrAckMessage copy(int i10, String message, String str, AudioText audioText) {
        r.e(message, "message");
        return new AsrAckMessage(i10, message, str, audioText);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AsrAckMessage)) {
            return false;
        }
        AsrAckMessage asrAckMessage = (AsrAckMessage) obj;
        return this.code == asrAckMessage.code && r.a(this.message, asrAckMessage.message) && r.a(this.ciphertext, asrAckMessage.ciphertext) && r.a(this.data, asrAckMessage.data);
    }

    public final String getCiphertext() {
        return this.ciphertext;
    }

    public final int getCode() {
        return this.code;
    }

    public final AudioText getData() {
        return this.data;
    }

    public final String getMessage() {
        return this.message;
    }

    public int hashCode() {
        int iHashCode = ((Integer.hashCode(this.code) * 31) + this.message.hashCode()) * 31;
        String str = this.ciphertext;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        AudioText audioText = this.data;
        return iHashCode2 + (audioText != null ? audioText.hashCode() : 0);
    }

    public final void setCiphertext(String str) {
        this.ciphertext = str;
    }

    public final void setCode(int i10) {
        this.code = i10;
    }

    public final void setData(AudioText audioText) {
        this.data = audioText;
    }

    public String toString() {
        return "AsrAckMessage(code=" + this.code + ", message=" + this.message + ", ciphertext=" + this.ciphertext + ", data=" + this.data + ")";
    }

    public AsrAckMessage(int i10, String message, String str, AudioText audioText) {
        r.e(message, "message");
        this.code = i10;
        this.message = message;
        this.ciphertext = str;
        this.data = audioText;
    }

    public /* synthetic */ AsrAckMessage(int i10, String str, String str2, AudioText audioText, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : audioText);
    }
}
