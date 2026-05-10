package com.oplus.aiunit.realtime_asr.result;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Serializable
public final class LabelInfo {
    public static final Companion Companion = new Companion(null);
    private final String desc;
    private final int id;

    public static final class Companion {
        private Companion() {
        }

        public final KSerializer<LabelInfo> serializer() {
            return LabelInfo$$serializer.INSTANCE;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ LabelInfo(int i10, int i11, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i10 & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i10, 1, LabelInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.id = i11;
        if ((i10 & 2) == 0) {
            this.desc = null;
        } else {
            this.desc = str;
        }
    }

    public static /* synthetic */ LabelInfo copy$default(LabelInfo labelInfo, int i10, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = labelInfo.id;
        }
        if ((i11 & 2) != 0) {
            str = labelInfo.desc;
        }
        return labelInfo.copy(i10, str);
    }

    public static final /* synthetic */ void write$Self$aiunit_sdk_realtime_asr_release(LabelInfo labelInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, labelInfo.id);
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 1) && labelInfo.desc == null) {
            return;
        }
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, labelInfo.desc);
    }

    public final int component1() {
        return this.id;
    }

    public final String component2() {
        return this.desc;
    }

    public final LabelInfo copy(int i10, String str) {
        return new LabelInfo(i10, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LabelInfo)) {
            return false;
        }
        LabelInfo labelInfo = (LabelInfo) obj;
        return this.id == labelInfo.id && r.a(this.desc, labelInfo.desc);
    }

    public final String getDesc() {
        return this.desc;
    }

    public final int getId() {
        return this.id;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.id) * 31;
        String str = this.desc;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "LabelInfo(id=" + this.id + ", desc=" + this.desc + ")";
    }

    public LabelInfo(int i10, String str) {
        this.id = i10;
        this.desc = str;
    }

    public /* synthetic */ LabelInfo(int i10, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? null : str);
    }
}
