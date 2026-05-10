package o6;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.GraphicBuffer;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import n6.c;
import n6.d;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f14448a = d();

    /* JADX INFO: renamed from: o6.a$a, reason: collision with other inner class name */
    private static class C0187a {
        private static RefMethod<HardwareBuffer> createFromGraphicBuffer;

        static {
            RefClass.load((Class<?>) C0187a.class, (Class<?>) HardwareBuffer.class);
        }
    }

    private static class b {

        @MethodName(name = "screenshot", params = {Rect.class, int.class, int.class, int.class, int.class})
        private static RefMethod<Bitmap> screenshot;

        @MethodName(name = "screenshot", params = {Rect.class, int.class, int.class, int.class})
        private static RefMethod<Bitmap> screenshotBelowP;

        static {
            RefClass.load((Class<?>) b.class, a.f14448a);
        }
    }

    private static Bitmap b(Rect rect, int i10, int i11, int i12, int i13, GraphicBuffer graphicBuffer) {
        try {
            HardwareBuffer hardwareBuffer = (HardwareBuffer) C0187a.createFromGraphicBuffer.call(null, graphicBuffer);
            try {
                Bitmap bitmapWrapHardwareBuffer = Bitmap.wrapHardwareBuffer(hardwareBuffer, ColorSpace.get(ColorSpace.Named.SRGB));
                if (hardwareBuffer != null) {
                    hardwareBuffer.close();
                }
                return bitmapWrapHardwareBuffer;
            } finally {
            }
        } catch (Throwable unused) {
            return (Bitmap) f("bitmap_type", rect, i10, i11, i12, i13).d().getParcelable("result");
        }
    }

    private static Bitmap c(Rect rect, int i10, int i11, int i12, int i13, HardwareBuffer hardwareBuffer) {
        try {
            return Bitmap.wrapHardwareBuffer(hardwareBuffer, ColorSpace.get(ColorSpace.Named.SRGB));
        } catch (Throwable unused) {
            return (Bitmap) f("bitmap_type", rect, i10, i11, i12, i13).d().getParcelable("result");
        }
    }

    private static String d() {
        return d.g() ? "com.oplus.view.OplusSurfaceControl" : (String) e();
    }

    private static Object e() {
        return o6.b.a();
    }

    private static Response f(String str, Rect rect, int i10, int i11, int i12, int i13) {
        return com.oplus.epona.d.o(new Request.b().c(f14448a).b("screenshot").e("sourceCrop", rect).d("width", i10).d("height", i11).d("maxLayer", i12).d("rotation", i13).f("type", str).a()).d();
    }

    public static Bitmap g(Rect rect, int i10, int i11, int i12, int i13) throws c {
        if (d.j()) {
            Response responseF = f("buffer_type", rect, i10, i11, i12, i13);
            HardwareBuffer hardwareBuffer = (HardwareBuffer) responseF.d().getParcelable("buffer_result");
            return hardwareBuffer != null ? c(rect, i10, i11, i12, i13, hardwareBuffer) : (Bitmap) responseF.d().getParcelable("result");
        }
        if (d.i()) {
            Response responseF2 = f("buffer_type", rect, i10, i11, i12, i13);
            GraphicBuffer parcelable = responseF2.d().getParcelable("buffer_result");
            return parcelable != null ? b(rect, i10, i11, i12, i13, parcelable) : (Bitmap) responseF2.d().getParcelable("result");
        }
        if (d.h()) {
            return (Bitmap) b.screenshot.call(null, rect, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13));
        }
        if (d.e()) {
            return (Bitmap) b.screenshotBelowP.call(null, rect, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
        }
        throw new c("not supported before O");
    }
}
