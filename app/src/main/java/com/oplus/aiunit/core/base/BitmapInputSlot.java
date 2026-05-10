package com.oplus.aiunit.core.base;

import android.graphics.Bitmap;
import com.oplus.aiunit.core.FrameUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public class BitmapInputSlot extends FrameInputSlot {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "BitmapInputSlot";

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapInputSlot(AIContext aiContext) {
        super(aiContext);
        r.e(aiContext, "aiContext");
    }

    public final int setValue(Bitmap bitmap, boolean z10) {
        r.e(bitmap, "bitmap");
        return setValue(bitmap, z10, false);
    }

    public final int setValue(Bitmap bitmap, boolean z10, boolean z11) {
        r.e(bitmap, "bitmap");
        cleanExistFrameUnit();
        if (z10) {
            setTargetBitmap(bitmap, Boolean.valueOf(z11));
        } else {
            addFrameUnit(new FrameUnit(bitmap, "input_0"));
        }
        return getErrorCode().value();
    }
}
