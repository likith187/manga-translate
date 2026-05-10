package com.oplus.aiunit.core.data;

import r8.a;
import r8.b;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class ServiceType {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ ServiceType[] $VALUES;
    private final String pkgName;
    public static final ServiceType NONE = new ServiceType("NONE", 0, "");
    public static final ServiceType AIUNIT = new ServiceType("AIUNIT", 1, ConfigKt.AIUNIT_PACKAGE_NAME);
    public static final ServiceType OCRSERVICE = new ServiceType("OCRSERVICE", 2, ConfigKt.OCRSERVICE_PACKAGE_NAME);

    private static final /* synthetic */ ServiceType[] $values() {
        return new ServiceType[]{NONE, AIUNIT, OCRSERVICE};
    }

    static {
        ServiceType[] serviceTypeArr$values = $values();
        $VALUES = serviceTypeArr$values;
        $ENTRIES = b.a(serviceTypeArr$values);
    }

    private ServiceType(String str, int i10, String str2) {
        this.pkgName = str2;
    }

    public static a getEntries() {
        return $ENTRIES;
    }

    public static ServiceType valueOf(String str) {
        return (ServiceType) Enum.valueOf(ServiceType.class, str);
    }

    public static ServiceType[] values() {
        return (ServiceType[]) $VALUES.clone();
    }

    public final String getPkgName() {
        return this.pkgName;
    }
}
