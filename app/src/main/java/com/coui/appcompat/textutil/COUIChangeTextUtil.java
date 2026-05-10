package com.coui.appcompat.textutil;

import android.content.res.Configuration;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.widget.TextView;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.version.COUIVersionUtil;

/* JADX INFO: loaded from: classes.dex */
public class COUIChangeTextUtil {
    private static final int DRAGONFLY_TINY_SCREEN_DENSITY = 296;
    private static final int FLAMINGO_TINY_SCREEN_DENSITY = 300;
    public static final int G1 = 1;
    public static final int G2 = 2;
    public static final int G3 = 3;
    public static final int G4 = 4;
    public static final int G5 = 5;
    public static final float H1 = 0.9f;
    public static final float H2 = 1.0f;
    public static final float H3 = 1.15f;
    public static final float H4 = 1.35f;
    public static final float H5 = 1.6f;
    public static final String MEDIUM_FONT = "sans-serif-medium";
    public static final float[] SCALE_LEVEL = {0.9f, 1.0f, 1.15f, 1.35f, 1.6f};
    private static final String TAG = "COUIChangeTextUtil";
    private static final float TINY_SCREEN_FONT_SCALE = 1.0f;
    private static final int TINY_SCREEN_SMALLEST_SCREEN_WIDTH_DP = 210;

    public static void adaptBoldAndMediumFont(TextView textView, boolean z10) {
        if (textView != null) {
            if (COUIVersionUtil.getOSVersionCode() < 12) {
                textView.getPaint().setFakeBoldText(z10);
            } else {
                textView.setTypeface(z10 ? Typeface.create(MEDIUM_FONT, 0) : Typeface.DEFAULT);
            }
        }
    }

    public static void adaptFontSize(TextView textView, int i10) {
        float textSize = textView.getTextSize();
        Configuration configuration = textView.getResources().getConfiguration();
        textView.getResources().getDisplayMetrics();
        float f10 = configuration.fontScale;
        int i11 = configuration.densityDpi;
        if (i11 == 300 || i11 == DRAGONFLY_TINY_SCREEN_DENSITY || configuration.smallestScreenWidthDp <= TINY_SCREEN_SMALLEST_SCREEN_WIDTH_DP) {
            f10 = 1.0f;
        }
        textView.setTextSize(0, getSuitableFontSize(textSize, f10, i10));
    }

    public static int binarySearchForOptimalTextViewWidth(TextView textView, int i10, int i11, int i12, int i13) {
        if (i10 <= 0) {
            COUILog.e(TAG, "Line count should be greater than 0!");
            return 0;
        }
        if (i11 < 0 || i12 < 0) {
            COUILog.e(TAG, "Width should be greater than 0!");
            return 0;
        }
        if (i11 > i12) {
            COUILog.e(TAG, "Max width should be greater than min width!");
            return 0;
        }
        if (i13 < 0) {
            COUILog.e(TAG, "Padding should be greater than 0!");
            return 0;
        }
        int i14 = i11 - i13;
        int i15 = i12 - i13;
        if (i14 < 0) {
            COUILog.e(TAG, "Min width should be greater than horizontal padding!");
            return 0;
        }
        int i16 = (i14 + i15) / 2;
        while (i14 <= i15) {
            i16 = (i14 + i15) / 2;
            int iMeasureTextLineCount = measureTextLineCount(textView, i16, 0);
            int i17 = i16 - 1;
            int iMeasureTextLineCount2 = measureTextLineCount(textView, i17, 0);
            if (iMeasureTextLineCount <= i10 && iMeasureTextLineCount2 > i10) {
                break;
            }
            if (iMeasureTextLineCount2 <= i10) {
                i15 = i17;
            } else {
                i14 = i16 + 1;
            }
        }
        return i16 + i13;
    }

    public static float getDpG2Size(float f10, float f11) {
        return f11 < 1.15f ? f10 * 1.0f : f10 * 1.15f;
    }

    public static float getG3FontSize(float f10, float f11) {
        float fRound = Math.round(f10 / f11);
        return f11 <= 1.0f ? f10 : f11 < 1.6f ? fRound * 1.15f : fRound * 1.15f;
    }

    private static float getSuitableFontScale(float f10, int i10) {
        if (i10 < 2) {
            return f10;
        }
        float[] fArr = SCALE_LEVEL;
        if (i10 > fArr.length) {
            i10 = fArr.length;
        }
        if (i10 == 2) {
            return f10 < 1.15f ? 1.0f : 1.15f;
        }
        if (i10 != 3) {
            float f11 = fArr[i10 - 1];
            return f10 > f11 ? f11 : f10;
        }
        if (f10 < 1.15f) {
            return 1.0f;
        }
        return f10 < 1.6f ? 1.15f : 1.35f;
    }

    public static float getSuitableFontSize(float f10, float f11, int i10) {
        if (i10 < 2) {
            return f10;
        }
        float[] fArr = SCALE_LEVEL;
        if (i10 > fArr.length) {
            i10 = fArr.length;
        }
        float fRound = Math.round(f10 / f11);
        if (i10 == 2) {
            return f11 < 1.15f ? fRound * 1.0f : fRound * 1.15f;
        }
        if (i10 == 3) {
            return f11 < 1.15f ? fRound * 1.0f : f11 < 1.6f ? fRound * 1.15f : fRound * 1.35f;
        }
        float f12 = fArr[i10 - 1];
        return f11 > f12 ? fRound * f12 : fRound * f11;
    }

    public static int measureTextLineCount(TextView textView, int i10, int i11) {
        if (i11 < 0 || i10 <= i11) {
            COUILog.e(TAG, "Illegal width or padding!");
            return 0;
        }
        if (textView == null) {
            return 0;
        }
        return StaticLayout.Builder.obtain(textView.getText(), 0, textView.getText().length(), textView.getPaint(), i10 - i11).setAlignment(Layout.Alignment.ALIGN_CENTER).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).build().getLineCount();
    }

    public static void adaptBoldAndMediumFont(Paint paint, boolean z10) {
        if (paint != null) {
            if (COUIVersionUtil.getOSVersionCode() < 12) {
                paint.setFakeBoldText(z10);
            } else {
                paint.setTypeface(z10 ? Typeface.create(MEDIUM_FONT, 0) : Typeface.DEFAULT);
            }
        }
    }
}
