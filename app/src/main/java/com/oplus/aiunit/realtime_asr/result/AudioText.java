package com.oplus.aiunit.realtime_asr.result;

import android.util.Log;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.core.protocol.ValueType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Serializable
public final class AudioText implements ValueType {
    public static final Companion Companion = new Companion(null);
    private final String callId;
    private final long endOffset;
    private final Integer index;
    private final String language;
    private final String msgId;
    private final Sentence originalText;
    private Sentence smoothText;
    private final String speaker;
    private final long startOffset;
    private final Sentence text;
    private final String type;

    public static final class Companion {
        private Companion() {
        }

        public final AudioText fromJson(String message) {
            r.e(message, "message");
            try {
                Json.Default r22 = Json.Default;
                r22.getSerializersModule();
                return (AudioText) r22.decodeFromString(AudioText.Companion.serializer(), message);
            } catch (Exception e10) {
                Log.e("AudioText", "parse AudioText error:" + message, e10);
                return null;
            }
        }

        public final KSerializer<AudioText> serializer() {
            return AudioText$$serializer.INSTANCE;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ AudioText(int i10, String str, String str2, long j10, long j11, String str3, Sentence sentence, Integer num, String str4, Sentence sentence2, Sentence sentence3, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if (29 != (i10 & 29)) {
            PluginExceptionsKt.throwMissingFieldException(i10, 29, AudioText$$serializer.INSTANCE.getDescriptor());
        }
        this.msgId = str;
        this.callId = (i10 & 2) == 0 ? "-1" : str2;
        this.startOffset = j10;
        this.endOffset = j11;
        this.type = str3;
        if ((i10 & 32) == 0) {
            this.text = null;
        } else {
            this.text = sentence;
        }
        if ((i10 & 64) == 0) {
            this.index = null;
        } else {
            this.index = num;
        }
        if ((i10 & 128) == 0) {
            this.speaker = null;
        } else {
            this.speaker = str4;
        }
        if ((i10 & COUIToolTips.ALIGN_TOP) == 0) {
            this.smoothText = null;
        } else {
            this.smoothText = sentence2;
        }
        if ((i10 & ConfigPackage.FRAME_SIZE_1) == 0) {
            this.originalText = null;
        } else {
            this.originalText = sentence3;
        }
        if ((i10 & 1024) == 0) {
            this.language = null;
        } else {
            this.language = str5;
        }
    }

    public static final /* synthetic */ void write$Self$aiunit_sdk_realtime_asr_release(AudioText audioText, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeStringElement(serialDescriptor, 0, audioText.msgId);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || !r.a(audioText.callId, "-1")) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, audioText.callId);
        }
        compositeEncoder.encodeLongElement(serialDescriptor, 2, audioText.startOffset);
        compositeEncoder.encodeLongElement(serialDescriptor, 3, audioText.endOffset);
        compositeEncoder.encodeStringElement(serialDescriptor, 4, audioText.type);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 5) || audioText.text != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 5, Sentence$$serializer.INSTANCE, audioText.text);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 6) || audioText.index != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 6, IntSerializer.INSTANCE, audioText.index);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 7) || audioText.speaker != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, audioText.speaker);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 8) || audioText.smoothText != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 8, Sentence$$serializer.INSTANCE, audioText.smoothText);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 9) || audioText.originalText != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 9, Sentence$$serializer.INSTANCE, audioText.originalText);
        }
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 10) && audioText.language == null) {
            return;
        }
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 10, StringSerializer.INSTANCE, audioText.language);
    }

    public final String component1() {
        return this.msgId;
    }

    public final Sentence component10() {
        return this.originalText;
    }

    public final String component11() {
        return this.language;
    }

    public final String component2() {
        return this.callId;
    }

    public final long component3() {
        return this.startOffset;
    }

    public final long component4() {
        return this.endOffset;
    }

    public final String component5() {
        return this.type;
    }

    public final Sentence component6() {
        return this.text;
    }

    public final Integer component7() {
        return this.index;
    }

    public final String component8() {
        return this.speaker;
    }

    public final Sentence component9() {
        return this.smoothText;
    }

    public final AudioText copy(String msgId, String str, long j10, long j11, String type, Sentence sentence, Integer num, String str2, Sentence sentence2, Sentence sentence3, String str3) {
        r.e(msgId, "msgId");
        r.e(type, "type");
        return new AudioText(msgId, str, j10, j11, type, sentence, num, str2, sentence2, sentence3, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioText)) {
            return false;
        }
        AudioText audioText = (AudioText) obj;
        return r.a(this.msgId, audioText.msgId) && r.a(this.callId, audioText.callId) && this.startOffset == audioText.startOffset && this.endOffset == audioText.endOffset && r.a(this.type, audioText.type) && r.a(this.text, audioText.text) && r.a(this.index, audioText.index) && r.a(this.speaker, audioText.speaker) && r.a(this.smoothText, audioText.smoothText) && r.a(this.originalText, audioText.originalText) && r.a(this.language, audioText.language);
    }

    public final String getCallId() {
        return this.callId;
    }

    public final long getEndOffset() {
        return this.endOffset;
    }

    public final Integer getIndex() {
        return this.index;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getMsgId() {
        return this.msgId;
    }

    public final Sentence getOriginalText() {
        return this.originalText;
    }

    public final Sentence getSmoothText() {
        return this.smoothText;
    }

    public final String getSpeaker() {
        return this.speaker;
    }

    public final long getStartOffset() {
        return this.startOffset;
    }

    public final Sentence getText() {
        return this.text;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        int iHashCode = this.msgId.hashCode() * 31;
        String str = this.callId;
        int iHashCode2 = (((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Long.hashCode(this.startOffset)) * 31) + Long.hashCode(this.endOffset)) * 31) + this.type.hashCode()) * 31;
        Sentence sentence = this.text;
        int iHashCode3 = (iHashCode2 + (sentence == null ? 0 : sentence.hashCode())) * 31;
        Integer num = this.index;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.speaker;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Sentence sentence2 = this.smoothText;
        int iHashCode6 = (iHashCode5 + (sentence2 == null ? 0 : sentence2.hashCode())) * 31;
        Sentence sentence3 = this.originalText;
        int iHashCode7 = (iHashCode6 + (sentence3 == null ? 0 : sentence3.hashCode())) * 31;
        String str3 = this.language;
        return iHashCode7 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setSmoothText(Sentence sentence) {
        this.smoothText = sentence;
    }

    @Override // com.oplus.aiunit.core.protocol.ValueType
    public JSONObject toJson() {
        Json.Default r12 = Json.Default;
        r12.getSerializersModule();
        return new JSONObject(r12.encodeToString(Companion.serializer(), this));
    }

    public String toString() {
        return "AudioText(msgId=" + this.msgId + ", callId=" + this.callId + ", startOffset=" + this.startOffset + ", endOffset=" + this.endOffset + ", type=" + this.type + ", text=" + this.text + ", index=" + this.index + ", speaker=" + this.speaker + ", smoothText=" + this.smoothText + ", originalText=" + this.originalText + ", language=" + this.language + ")";
    }

    public AudioText(String msgId, String str, long j10, long j11, String type, Sentence sentence, Integer num, String str2, Sentence sentence2, Sentence sentence3, String str3) {
        r.e(msgId, "msgId");
        r.e(type, "type");
        this.msgId = msgId;
        this.callId = str;
        this.startOffset = j10;
        this.endOffset = j11;
        this.type = type;
        this.text = sentence;
        this.index = num;
        this.speaker = str2;
        this.smoothText = sentence2;
        this.originalText = sentence3;
        this.language = str3;
    }

    public /* synthetic */ AudioText(String str, String str2, long j10, long j11, String str3, Sentence sentence, Integer num, String str4, Sentence sentence2, Sentence sentence3, String str5, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? "-1" : str2, j10, j11, str3, (i10 & 32) != 0 ? null : sentence, (i10 & 64) != 0 ? null : num, (i10 & 128) != 0 ? null : str4, (i10 & COUIToolTips.ALIGN_TOP) != 0 ? null : sentence2, (i10 & ConfigPackage.FRAME_SIZE_1) != 0 ? null : sentence3, (i10 & 1024) != 0 ? null : str5);
    }
}
