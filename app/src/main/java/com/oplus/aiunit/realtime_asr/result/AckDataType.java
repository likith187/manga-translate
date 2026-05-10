package com.oplus.aiunit.realtime_asr.result;

import r8.a;
import r8.b;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class AckDataType {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ AckDataType[] $VALUES;
    private final String value;
    public static final AckDataType TYPE_INTERMEDIATE = new AckDataType("TYPE_INTERMEDIATE", 0, "INTERMMEDIATE");
    public static final AckDataType TYPE_VAD_FINAL = new AckDataType("TYPE_VAD_FINAL", 1, "VAD_FINAL");
    public static final AckDataType TYPE_FINAL = new AckDataType("TYPE_FINAL", 2, "FINAL");
    public static final AckDataType TYPE_END = new AckDataType("TYPE_END", 3, "END");

    private static final /* synthetic */ AckDataType[] $values() {
        return new AckDataType[]{TYPE_INTERMEDIATE, TYPE_VAD_FINAL, TYPE_FINAL, TYPE_END};
    }

    static {
        AckDataType[] ackDataTypeArr$values = $values();
        $VALUES = ackDataTypeArr$values;
        $ENTRIES = b.a(ackDataTypeArr$values);
    }

    private AckDataType(String str, int i10, String str2) {
        this.value = str2;
    }

    public static a getEntries() {
        return $ENTRIES;
    }

    public static AckDataType valueOf(String str) {
        return (AckDataType) Enum.valueOf(AckDataType.class, str);
    }

    public static AckDataType[] values() {
        return (AckDataType[]) $VALUES.clone();
    }

    public final String getValue() {
        return this.value;
    }
}
