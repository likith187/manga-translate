package k2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.RemoteException;
import android.view.OplusWindowManager;
import com.coloros.translate.utils.c0;
import com.oplus.os.OplusBuild;
import com.oplus.screenshot.OplusScreenCapture;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a INSTANCE = new a();

    private a() {
    }

    public static final int a(Context context) {
        if (context != null) {
            return context.getResources().getDisplayMetrics().heightPixels;
        }
        return 0;
    }

    public static final int b(Context context) {
        if (context != null) {
            return context.getResources().getDisplayMetrics().widthPixels;
        }
        return 0;
    }

    public static final Bitmap c(Rect rect, int i10, int i11, int i12, int i13) {
        Bitmap bitmapAsBitmap;
        r.e(rect, "rect");
        Bitmap bitmap = null;
        try {
            if (i10 == 0 || i11 == 0) {
                OplusScreenCapture.LayerCaptureArgs layerCaptureArgsBuild = new OplusScreenCapture.LayerCaptureArgs.Builder(new OplusWindowManager().getLongshotWindowByTypeForR(-1)).setSourceCrop(rect).setFrameScale(1.0f).setPixelFormat(1).build();
                r.d(layerCaptureArgsBuild, "build(...)");
                OplusScreenCapture.ScreenshotHardwareBuffer screenshotHardwareBufferCaptureLayers = OplusScreenCapture.getInstance().captureLayers(layerCaptureArgsBuild);
                if (screenshotHardwareBufferCaptureLayers == null || (bitmapAsBitmap = screenshotHardwareBufferCaptureLayers.asBitmap()) == null) {
                    return null;
                }
                c0.f7098a.d("ScreenUtils", "[takeScreenAboveU] w: " + bitmapAsBitmap.getWidth() + " h: " + bitmapAsBitmap.getHeight() + ", size: " + bitmapAsBitmap.getByteCount());
            } else {
                OplusScreenCapture.ScreenshotHardwareBuffer screenshotHardwareBufferCaptureDisplay = OplusScreenCapture.getInstance().captureDisplay(new OplusScreenCapture.DisplayCaptureArgs.Builder(0).setSourceCrop(rect).setSize(i10, i11).build());
                r.d(screenshotHardwareBufferCaptureDisplay, "captureDisplay(...)");
                bitmapAsBitmap = screenshotHardwareBufferCaptureDisplay.asBitmap();
                if (bitmapAsBitmap == null) {
                    return null;
                }
                c0.f7098a.d("ScreenUtils", "[takeScreenAboveU2] w: " + bitmapAsBitmap.getWidth() + " h: " + bitmapAsBitmap.getHeight() + ", size: " + bitmapAsBitmap.getByteCount());
            }
            bitmap = bitmapAsBitmap;
            return bitmap;
        } catch (RemoteException e10) {
            c0.f7098a.e("ScreenUtils", "takeScreenShot ignore " + e10.getMessage());
            return bitmap;
        }
    }

    public static final Bitmap d(Rect rect, int i10, int i11, int i12, int i13) {
        r.e(rect, "rect");
        return OplusBuild.VERSION.SDK_VERSION >= 34 ? c(rect, i10, i11, i12, i13) : e(rect, i10, i11, i12, i13);
    }

    public static final Bitmap e(Rect rect, int i10, int i11, int i12, int i13) {
        r.e(rect, "rect");
        return o6.a.g(rect, i10, i11, i12, i13);
    }
}
