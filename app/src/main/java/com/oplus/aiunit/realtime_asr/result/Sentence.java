package com.oplus.aiunit.realtime_asr.result;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.ReferenceArraySerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Serializable
public final class Sentence {
    private final String biz_id;
    private final Long endOffset;
    private final String languageCode;
    private final String roleId;
    private final Long startOffset;
    private String text;
    private WordPosDto[] wordsPosList;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new ReferenceArraySerializer(d0.b(WordPosDto.class), WordPosDto$$serializer.INSTANCE), null, null, null, null, null};

    public static final class Companion {
        private Companion() {
        }

        public final KSerializer<Sentence> serializer() {
            return Sentence$$serializer.INSTANCE;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ Sentence(int i10, String str, WordPosDto[] wordPosDtoArr, String str2, String str3, Long l10, Long l11, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i10 & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i10, 1, Sentence$$serializer.INSTANCE.getDescriptor());
        }
        this.text = str;
        if ((i10 & 2) == 0) {
            this.wordsPosList = null;
        } else {
            this.wordsPosList = wordPosDtoArr;
        }
        if ((i10 & 4) == 0) {
            this.biz_id = null;
        } else {
            this.biz_id = str2;
        }
        if ((i10 & 8) == 0) {
            this.languageCode = null;
        } else {
            this.languageCode = str3;
        }
        if ((i10 & 16) == 0) {
            this.startOffset = null;
        } else {
            this.startOffset = l10;
        }
        if ((i10 & 32) == 0) {
            this.endOffset = null;
        } else {
            this.endOffset = l11;
        }
        if ((i10 & 64) == 0) {
            this.roleId = null;
        } else {
            this.roleId = str4;
        }
    }

    public static /* synthetic */ Sentence copy$default(Sentence sentence, String str, WordPosDto[] wordPosDtoArr, String str2, String str3, Long l10, Long l11, String str4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = sentence.text;
        }
        if ((i10 & 2) != 0) {
            wordPosDtoArr = sentence.wordsPosList;
        }
        WordPosDto[] wordPosDtoArr2 = wordPosDtoArr;
        if ((i10 & 4) != 0) {
            str2 = sentence.biz_id;
        }
        String str5 = str2;
        if ((i10 & 8) != 0) {
            str3 = sentence.languageCode;
        }
        String str6 = str3;
        if ((i10 & 16) != 0) {
            l10 = sentence.startOffset;
        }
        Long l12 = l10;
        if ((i10 & 32) != 0) {
            l11 = sentence.endOffset;
        }
        Long l13 = l11;
        if ((i10 & 64) != 0) {
            str4 = sentence.roleId;
        }
        return sentence.copy(str, wordPosDtoArr2, str5, str6, l12, l13, str4);
    }

    public static final /* synthetic */ void write$Self$aiunit_sdk_realtime_asr_release(Sentence sentence, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeStringElement(serialDescriptor, 0, sentence.text);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) || sentence.wordsPosList != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, kSerializerArr[1], sentence.wordsPosList);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || sentence.biz_id != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, sentence.biz_id);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || sentence.languageCode != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, sentence.languageCode);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 4) || sentence.startOffset != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 4, LongSerializer.INSTANCE, sentence.startOffset);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 5) || sentence.endOffset != null) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 5, LongSerializer.INSTANCE, sentence.endOffset);
        }
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 6) && sentence.roleId == null) {
            return;
        }
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, sentence.roleId);
    }

    public final String component1() {
        return this.text;
    }

    public final WordPosDto[] component2() {
        return this.wordsPosList;
    }

    public final String component3() {
        return this.biz_id;
    }

    public final String component4() {
        return this.languageCode;
    }

    public final Long component5() {
        return this.startOffset;
    }

    public final Long component6() {
        return this.endOffset;
    }

    public final String component7() {
        return this.roleId;
    }

    public final Sentence copy(String text, WordPosDto[] wordPosDtoArr, String str, String str2, Long l10, Long l11, String str3) {
        r.e(text, "text");
        return new Sentence(text, wordPosDtoArr, str, str2, l10, l11, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!r.a(Sentence.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        r.c(obj, "null cannot be cast to non-null type com.oplus.aiunit.realtime_asr.result.Sentence");
        Sentence sentence = (Sentence) obj;
        if (!r.a(this.text, sentence.text)) {
            return false;
        }
        WordPosDto[] wordPosDtoArr = this.wordsPosList;
        if (wordPosDtoArr != null) {
            WordPosDto[] wordPosDtoArr2 = sentence.wordsPosList;
            if (wordPosDtoArr2 == null || !Arrays.equals(wordPosDtoArr, wordPosDtoArr2)) {
                return false;
            }
        } else if (sentence.wordsPosList != null) {
            return false;
        }
        return r.a(this.biz_id, sentence.biz_id) && r.a(this.languageCode, sentence.languageCode) && r.a(this.startOffset, sentence.startOffset) && r.a(this.endOffset, sentence.endOffset) && r.a(this.roleId, sentence.roleId);
    }

    public final String getBiz_id() {
        return this.biz_id;
    }

    public final Long getEndOffset() {
        return this.endOffset;
    }

    public final String getLanguageCode() {
        return this.languageCode;
    }

    public final String getRoleId() {
        return this.roleId;
    }

    public final Long getStartOffset() {
        return this.startOffset;
    }

    public final String getText() {
        return this.text;
    }

    public final WordPosDto[] getWordsPosList() {
        return this.wordsPosList;
    }

    public int hashCode() {
        int iHashCode = this.text.hashCode() * 31;
        WordPosDto[] wordPosDtoArr = this.wordsPosList;
        int iHashCode2 = (iHashCode + (wordPosDtoArr != null ? Arrays.hashCode(wordPosDtoArr) : 0)) * 31;
        String str = this.biz_id;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.languageCode;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Long l10 = this.startOffset;
        int iHashCode5 = (iHashCode4 + (l10 != null ? l10.hashCode() : 0)) * 31;
        Long l11 = this.endOffset;
        int iHashCode6 = (iHashCode5 + (l11 != null ? l11.hashCode() : 0)) * 31;
        String str3 = this.roleId;
        return iHashCode6 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setText(String str) {
        r.e(str, "<set-?>");
        this.text = str;
    }

    public final void setWordsPosList(WordPosDto[] wordPosDtoArr) {
        this.wordsPosList = wordPosDtoArr;
    }

    public String toString() {
        return "Sentence(text=" + this.text + ", wordsPosList=" + Arrays.toString(this.wordsPosList) + ", biz_id=" + this.biz_id + ", languageCode=" + this.languageCode + ", startOffset=" + this.startOffset + ", endOffset=" + this.endOffset + ", roleId=" + this.roleId + ")";
    }

    public Sentence(String text, WordPosDto[] wordPosDtoArr, String str, String str2, Long l10, Long l11, String str3) {
        r.e(text, "text");
        this.text = text;
        this.wordsPosList = wordPosDtoArr;
        this.biz_id = str;
        this.languageCode = str2;
        this.startOffset = l10;
        this.endOffset = l11;
        this.roleId = str3;
    }

    public /* synthetic */ Sentence(String str, WordPosDto[] wordPosDtoArr, String str2, String str3, Long l10, Long l11, String str4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : wordPosDtoArr, (i10 & 4) != 0 ? null : str2, (i10 & 8) != 0 ? null : str3, (i10 & 16) != 0 ? null : l10, (i10 & 32) != 0 ? null : l11, (i10 & 64) == 0 ? str4 : null);
    }
}
