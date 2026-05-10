package com.oplus.aiunit.core.data;

import kotlin.jvm.internal.DefaultConstructorMarker;
import r8.a;
import r8.b;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class DownloadType {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ DownloadType[] $VALUES;
    public static final Companion Companion;
    public static final DownloadType DOWNLOAD_NONE = new DownloadType("DOWNLOAD_NONE", 0);
    public static final DownloadType DOWNLOAD_LOST = new DownloadType("DOWNLOAD_LOST", 1);
    public static final DownloadType DOWNLOAD_NEW = new DownloadType("DOWNLOAD_NEW", 2);

    public static final class Companion {
        private Companion() {
        }

        public final DownloadType find(int i10) {
            if (i10 != 0) {
                if (i10 == 1) {
                    return DownloadType.DOWNLOAD_LOST;
                }
                if (i10 == 2) {
                    return DownloadType.DOWNLOAD_NEW;
                }
            }
            return DownloadType.DOWNLOAD_NONE;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private static final /* synthetic */ DownloadType[] $values() {
        return new DownloadType[]{DOWNLOAD_NONE, DOWNLOAD_LOST, DOWNLOAD_NEW};
    }

    static {
        DownloadType[] downloadTypeArr$values = $values();
        $VALUES = downloadTypeArr$values;
        $ENTRIES = b.a(downloadTypeArr$values);
        Companion = new Companion(null);
    }

    private DownloadType(String str, int i10) {
    }

    public static final DownloadType find(int i10) {
        return Companion.find(i10);
    }

    public static a getEntries() {
        return $ENTRIES;
    }

    public static DownloadType valueOf(String str) {
        return (DownloadType) Enum.valueOf(DownloadType.class, str);
    }

    public static DownloadType[] values() {
        return (DownloadType[]) $VALUES.clone();
    }
}
