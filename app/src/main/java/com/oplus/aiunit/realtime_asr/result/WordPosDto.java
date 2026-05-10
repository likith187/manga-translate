package com.oplus.aiunit.realtime_asr.result;

import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Serializable
public final class WordPosDto {
    private final int end;
    private final Map<String, LabelInfo> labels;
    private final int start;
    private final String text;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, LabelInfo$$serializer.INSTANCE)};

    public static final class Companion {
        private Companion() {
        }

        public final KSerializer<WordPosDto> serializer() {
            return WordPosDto$$serializer.INSTANCE;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ WordPosDto(int i10, String str, int i11, int i12, Map map, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i10 & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i10, 7, WordPosDto$$serializer.INSTANCE.getDescriptor());
        }
        this.text = str;
        this.start = i11;
        this.end = i12;
        if ((i10 & 8) == 0) {
            this.labels = null;
        } else {
            this.labels = map;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WordPosDto copy$default(WordPosDto wordPosDto, String str, int i10, int i11, Map map, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = wordPosDto.text;
        }
        if ((i12 & 2) != 0) {
            i10 = wordPosDto.start;
        }
        if ((i12 & 4) != 0) {
            i11 = wordPosDto.end;
        }
        if ((i12 & 8) != 0) {
            map = wordPosDto.labels;
        }
        return wordPosDto.copy(str, i10, i11, map);
    }

    public static final /* synthetic */ void write$Self$aiunit_sdk_realtime_asr_release(WordPosDto wordPosDto, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeStringElement(serialDescriptor, 0, wordPosDto.text);
        compositeEncoder.encodeIntElement(serialDescriptor, 1, wordPosDto.start);
        compositeEncoder.encodeIntElement(serialDescriptor, 2, wordPosDto.end);
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) && wordPosDto.labels == null) {
            return;
        }
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, kSerializerArr[3], wordPosDto.labels);
    }

    public final String component1() {
        return this.text;
    }

    public final int component2() {
        return this.start;
    }

    public final int component3() {
        return this.end;
    }

    public final Map<String, LabelInfo> component4() {
        return this.labels;
    }

    public final WordPosDto copy(String text, int i10, int i11, Map<String, LabelInfo> map) {
        r.e(text, "text");
        return new WordPosDto(text, i10, i11, map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WordPosDto)) {
            return false;
        }
        WordPosDto wordPosDto = (WordPosDto) obj;
        return r.a(this.text, wordPosDto.text) && this.start == wordPosDto.start && this.end == wordPosDto.end && r.a(this.labels, wordPosDto.labels);
    }

    public final int getEnd() {
        return this.end;
    }

    public final Map<String, LabelInfo> getLabels() {
        return this.labels;
    }

    public final int getStart() {
        return this.start;
    }

    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        int iHashCode = ((((this.text.hashCode() * 31) + Integer.hashCode(this.start)) * 31) + Integer.hashCode(this.end)) * 31;
        Map<String, LabelInfo> map = this.labels;
        return iHashCode + (map == null ? 0 : map.hashCode());
    }

    public String toString() {
        return "WordPosDto(text=" + this.text + ", start=" + this.start + ", end=" + this.end + ", labels=" + this.labels + ")";
    }

    public WordPosDto(String text, int i10, int i11, Map<String, LabelInfo> map) {
        r.e(text, "text");
        this.text = text;
        this.start = i10;
        this.end = i11;
        this.labels = map;
    }

    public /* synthetic */ WordPosDto(String str, int i10, int i11, Map map, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i10, i11, (i12 & 8) != 0 ? null : map);
    }
}
