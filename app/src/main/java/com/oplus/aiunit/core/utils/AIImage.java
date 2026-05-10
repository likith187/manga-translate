package com.oplus.aiunit.core.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class AIImage {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AIImage";

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int calculateSampleSize(int i10, int i11, int i12, int i13) {
            int i14;
            if (i10 > i12 || i11 > i13) {
                i14 = 2;
                while (true) {
                    if (i10 / i14 <= i12 && i11 / i14 <= i13) {
                        break;
                    }
                    i14 *= 2;
                }
            } else {
                i14 = 1;
            }
            AILog.d(AIImage.TAG, "calculateSampleSize " + i14);
            return i14;
        }

        private final float calculateScaleSize(int i10, int i11, int i12, int i13) {
            float f10 = i10 == i12 ? 1.0f : (i12 * 1.0f) / i10;
            float f11 = i11 != i13 ? (i13 * 1.0f) / i11 : 1.0f;
            if (f10 <= f11) {
                f10 = f11;
            }
            AILog.d(AIImage.TAG, "calculateScaleSize " + f10);
            return f10;
        }

        public final Bitmap compress(Bitmap bitmap, int i10, int i11) {
            r.e(bitmap, "bitmap");
            int iCalculateSampleSize = calculateSampleSize(bitmap.getWidth(), bitmap.getHeight(), i10, i11);
            if (iCalculateSampleSize <= 1) {
                return bitmap;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    options.inSampleSize = iCalculateSampleSize;
                    options.inJustDecodeBounds = false;
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
                    r.d(bitmapDecodeByteArray, "decodeByteArray(...)");
                    try {
                        byteArrayOutputStream.flush();
                        byteArrayOutputStream.close();
                    } catch (IOException e10) {
                        AILog.e(AIImage.TAG, "compress close err: " + e10.getMessage());
                    }
                    AILog.d(AIImage.TAG, "compress from [" + bitmap.getWidth() + ", " + bitmap.getHeight() + "] to [" + bitmapDecodeByteArray.getWidth() + ", " + bitmapDecodeByteArray.getHeight() + AbstractJsonLexerKt.END_LIST);
                    return bitmapDecodeByteArray;
                } catch (Exception e11) {
                    AILog.e(AIImage.TAG, "compress error: " + e11.getMessage());
                    return bitmap;
                }
            } finally {
                try {
                    byteArrayOutputStream.flush();
                    byteArrayOutputStream.close();
                } catch (IOException e12) {
                    AILog.e(AIImage.TAG, "compress close err: " + e12.getMessage());
                }
                AILog.d(AIImage.TAG, "compress from [" + bitmap.getWidth() + ", " + bitmap.getHeight() + "] to [" + bitmap.getWidth() + ", " + bitmap.getHeight() + AbstractJsonLexerKt.END_LIST);
            }
        }

        public final float minEdgeScaleToSpecificValue(int i10, int i11, int i12) {
            if (i10 > i11) {
                i10 = i11;
            }
            if (i10 > 0) {
                return (i10 * 1.0f) / i12;
            }
            return 0.0f;
        }

        public final Bitmap scale(Bitmap bitmap, int i10) {
            r.e(bitmap, "bitmap");
            float fMinEdgeScaleToSpecificValue = minEdgeScaleToSpecificValue(bitmap.getWidth(), bitmap.getHeight(), i10);
            return fMinEdgeScaleToSpecificValue <= 1.0f ? bitmap : scale(bitmap, 1.0f / fMinEdgeScaleToSpecificValue);
        }

        public final Bitmap scaled(Bitmap bitmap, int i10, int i11) {
            r.e(bitmap, "bitmap");
            if (bitmap.getWidth() == i10 && bitmap.getHeight() == i11) {
                return bitmap;
            }
            float fCalculateScaleSize = calculateScaleSize(bitmap.getWidth(), bitmap.getHeight(), i10, i11);
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * fCalculateScaleSize), (int) (bitmap.getHeight() * fCalculateScaleSize), true);
            r.d(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
            return bitmapCreateScaledBitmap;
        }

        private Companion() {
        }

        public final Bitmap scale(Bitmap bitmap, int i10, int i11) {
            r.e(bitmap, "bitmap");
            int iCalculateSampleSize = calculateSampleSize(bitmap.getWidth(), bitmap.getHeight(), i10, i11);
            return iCalculateSampleSize <= 1 ? bitmap : scale(bitmap, 1.0f / iCalculateSampleSize);
        }

        public final Bitmap scale(Bitmap bitmap, float f10) {
            r.e(bitmap, "bitmap");
            Matrix matrix = new Matrix();
            matrix.postScale(f10, f10);
            try {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                StringBuilder sb = new StringBuilder("scale from [");
                sb.append(bitmap.getWidth());
                sb.append(", ");
                sb.append(bitmap.getHeight());
                sb.append("] to [");
                sb.append(bitmapCreateBitmap != null ? Integer.valueOf(bitmapCreateBitmap.getWidth()) : null);
                sb.append(", ");
                sb.append(bitmapCreateBitmap != null ? Integer.valueOf(bitmapCreateBitmap.getHeight()) : null);
                sb.append("]. scale = ");
                sb.append(f10);
                AILog.d(AIImage.TAG, sb.toString());
                r.b(bitmapCreateBitmap);
                return bitmapCreateBitmap;
            } catch (Exception unused) {
                return bitmap;
            }
        }
    }

    private static final int calculateSampleSize(int i10, int i11, int i12, int i13) {
        return Companion.calculateSampleSize(i10, i11, i12, i13);
    }

    public static final Bitmap compress(Bitmap bitmap, int i10, int i11) {
        return Companion.compress(bitmap, i10, i11);
    }

    public static final float minEdgeScaleToSpecificValue(int i10, int i11, int i12) {
        return Companion.minEdgeScaleToSpecificValue(i10, i11, i12);
    }

    public static final Bitmap scale(Bitmap bitmap, float f10) {
        return Companion.scale(bitmap, f10);
    }

    public static final Bitmap scaled(Bitmap bitmap, int i10, int i11) {
        return Companion.scaled(bitmap, i10, i11);
    }

    public static final Bitmap scale(Bitmap bitmap, int i10) {
        return Companion.scale(bitmap, i10);
    }

    public static final Bitmap scale(Bitmap bitmap, int i10, int i11) {
        return Companion.scale(bitmap, i10, i11);
    }
}
