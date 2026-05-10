package com.oplus.aiunit.core.protocol.common;

import com.coui.appcompat.vibrateutil.VibrateUtils;

/* JADX INFO: loaded from: classes.dex */
public enum ImageFormat {
    UNKNOWN(-1),
    YUV_NV21(0),
    YUV_NV12(1),
    BGR(2),
    RGB(3),
    RGBA(4),
    YUV_YU12(5),
    YUV_YV12(6),
    RGB565(7),
    YUV_444(10),
    YUV_420_888(35),
    GRAY(40),
    HARDWARE(50),
    IGNORED(100),
    YUV_NV21_10B(1000),
    YUV_NV12_10B(1001),
    BGR_10B(1002),
    RGB_10B(1003),
    RGBA_10B(1004),
    YUV_YU12_10B(1005),
    YUV_YV12_10B(1006),
    END(VibrateUtils.STRENGTH_MAX_STEP);

    private int value;

    ImageFormat(int i10) {
        this.value = i10;
    }

    public static ImageFormat find(int i10) {
        ImageFormat imageFormat;
        int i11 = 0;
        while (true) {
            if (i11 >= values().length) {
                imageFormat = null;
                break;
            }
            if (values()[i11].equals(i10)) {
                imageFormat = values()[i11];
                break;
            }
            i11++;
        }
        return imageFormat == null ? UNKNOWN : imageFormat;
    }

    public static boolean isYUV(int i10) {
        return i10 == YUV_NV21.value() || i10 == YUV_NV12.value() || i10 == YUV_YU12.value() || i10 == YUV_YV12.value() || i10 == YUV_444.value() || i10 == YUV_420_888.value();
    }

    public boolean equals(int i10) {
        return this.value == i10;
    }

    public int value() {
        return this.value;
    }
}
