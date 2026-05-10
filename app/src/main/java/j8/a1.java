package j8;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.Log;
import com.oplus.backup.sdk.common.utils.Constants;
import j8.m0;
import j8.n0;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.opencv.android.Utils;
import org.opencv.core.Mat;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: loaded from: classes2.dex */
public class a1 extends n0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f12777c = "j8.a1";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    n0.a f12778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Mat f12779b;

    static {
        String name = a1.class.getName();
        if (org.opencv.android.a.a()) {
            return;
        }
        Log.e(name, "OpenCV initialization failed!");
    }

    protected a1(Bitmap bitmap, n0.a aVar) {
        l8.d dVarD = l8.d.d();
        String str = f12777c;
        dVarD.e("textrender_init", str);
        Bitmap.Config config = bitmap.getConfig();
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        if (!config.equals(config2) && !bitmap.getConfig().equals(Bitmap.Config.RGB_565)) {
            bitmap = l8.a.a(bitmap, config2);
            Log.d(str, "input new " + bitmap.getConfig().toString());
            l8.d.d().a("convert2rgb");
        }
        this.f12778a = aVar;
        aVar = aVar == null ? new n0.a() : aVar;
        l8.c.h(aVar.f12844j, aVar.f12845k);
        l8.c.e(str, Constants.MessagerConstants.CONFIG_KEY, aVar);
        Mat mat = new Mat();
        this.f12779b = mat;
        Utils.a(bitmap, mat);
        Mat mat2 = this.f12779b;
        Imgproc.a(mat2, mat2, 3);
        l8.d.d().a("createSrcMat");
        l8.d.d().c("textrender_init");
    }

    private static Mat i(Mat mat, List list) {
        k8.i.e(mat, (List) list.stream().map(new Function() { // from class: j8.w0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return a1.p((m0) obj);
            }
        }).collect(Collectors.toList()), new aa.g(255.0d, 0.0d, 0.0d), 1);
        k8.i.e(mat, (List) list.stream().map(new Function() { // from class: j8.x0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return a1.q((m0) obj);
            }
        }).collect(Collectors.toList()), new aa.g(0.0d, 0.0d, 255.0d), 1);
        k8.i.e(mat, (List) list.stream().map(new Function() { // from class: j8.y0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return a1.r((m0) obj);
            }
        }).collect(Collectors.toList()), new aa.g(0.0d, 255.0d, 0.0d), 1);
        return mat;
    }

    private static void j(m0 m0Var, Mat mat, Context context, n0.a aVar) {
        Mat matM = m(m0Var, context, aVar);
        String str = f12777c;
        k8.i.k(str, String.format("text_%d.jpg", Integer.valueOf(m0Var.f12817a)), matM);
        Mat matO = o(matM.v(), matM.d(), m0Var.f12822f, aVar);
        k8.i.k(str, String.format("mask_%d.jpg", Integer.valueOf(m0Var.f12817a)), matO);
        Mat mat2 = new Mat(mat, m0Var.f12822f.f12834d);
        k8.i.k(str, String.format("target_%d.jpg", Integer.valueOf(m0Var.f12817a)), mat2);
        if (aVar.f12837c) {
            Imgproc.a(matM, matM, 2);
        }
        matM.f(mat2, matO);
        k8.i.k(str, String.format("result_%d.jpg", Integer.valueOf(m0Var.f12817a)), mat2);
        matM.u();
        matO.u();
    }

    private static Mat k(List list, Mat mat, Context context, n0.a aVar) {
        if (aVar.f12837c) {
            mat = new Mat(mat.x(), aa.a.f114d, new aa.g(255.0d, 255.0d, 255.0d, 0.0d));
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            j((m0) it.next(), mat, context, aVar);
        }
        k8.i.k(f12777c, "result_mat", mat);
        return mat;
    }

    private static void l(Canvas canvas, m0 m0Var, c1 c1Var) {
        if (m0Var.f12823g == null) {
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL);
            int[] iArr = m0Var.f12825i;
            paint.setColor(Color.rgb(iArr[0], iArr[1], iArr[2]));
            canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), paint);
        }
        TextPaint textPaint = new TextPaint(1);
        int[] iArr2 = m0Var.f12824h;
        textPaint.setColor(Color.rgb(iArr2[0], iArr2[1], iArr2[2]));
        textPaint.setTextSize(m0Var.f12827k.floatValue());
        if (m0Var.f12828l != null) {
            l8.c.d(f12777c, "set font " + m0Var.f12828l);
            textPaint.setTypeface(m0Var.f12828l);
        }
        int height = (int) ((canvas.getHeight() + m0Var.f12827k.floatValue()) / 2.0f);
        if (height >= canvas.getHeight()) {
            height = canvas.getHeight();
        }
        canvas.drawText(m0Var.f12819c, c1Var.f12785f + c1Var.f12781b, height, textPaint);
    }

    private static Mat m(m0 m0Var, Context context, n0.a aVar) {
        Bitmap bitmapCreateBitmap;
        Mat mat = m0Var.f12823g;
        if (mat != null) {
            int iZ = mat.z();
            int i10 = aa.a.f113c;
            if (iZ != i10) {
                Mat mat2 = m0Var.f12823g;
                mat2.e(mat2, i10);
            }
            bitmapCreateBitmap = Bitmap.createBitmap(m0Var.f12823g.d(), m0Var.f12823g.v(), Bitmap.Config.ARGB_8888);
            Utils.c(m0Var.f12823g, bitmapCreateBitmap);
        } else {
            aa.h hVarT = k8.e.t(m0Var.f12822f.f12833c);
            bitmapCreateBitmap = Bitmap.createBitmap((int) hVarT.f147a, (int) hVarT.f148b, Bitmap.Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        if (m0Var.f12830n) {
            l(canvas, m0Var, aVar.f12843i);
        } else {
            b1.a(context, m0Var, aVar).draw(canvas);
        }
        Mat mat3 = new Mat();
        Utils.a(bitmapCreateBitmap, mat3);
        Imgproc.a(mat3, mat3, 1);
        return k8.i.z(mat3, k8.e.x(m0Var.f12822f.f12833c), m0Var.f12822f.f12834d.d());
    }

    private static void n(List list, final Mat mat, final n0.a aVar) {
        list.forEach(new Consumer() { // from class: j8.v0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                a1.s(mat, aVar, (m0) obj);
            }
        });
    }

    private static Mat o(int i10, int i11, m0.a aVar, n0.a aVar2) {
        Mat matZ = k8.i.z(new Mat(i10, i11, 0, new aa.g(255.0d)), k8.e.y(aVar.f12832b, k8.e.n(aVar.f12833c)), aVar.f12834d.d());
        Imgproc.i(matZ, matZ, 0.0d, 255.0d, 0);
        return matZ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List p(m0 m0Var) {
        return m0Var.f12822f.f12831a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List q(m0 m0Var) {
        return m0Var.f12822f.f12832b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List r(m0 m0Var) {
        return m0Var.f12822f.f12833c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void s(Mat mat, n0.a aVar, m0 m0Var) {
        int[] iArr = m0Var.f12824h;
        if (iArr != null) {
            if (aVar.f12842h) {
                m0Var.f12824h = h.k(iArr, m0Var.f12825i, m0Var.f12823g);
            }
        } else {
            Mat matU = k8.i.u(mat, m0Var.f12822f.f12831a);
            k8.i.k(f12777c, String.format("subSrcMat_%d.jpg", Integer.valueOf(m0Var.f12817a)), matU);
            m0Var.f12824h = h.o(matU, m0Var.f12823g, m0Var.f12825i);
            matU.u();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void t(Mat mat, n0.a aVar, m0 m0Var) {
        aa.d[] dVarArr = m0Var.f12820d;
        aa.h hVarX = mat.x();
        c1 c1Var = aVar.f12843i;
        m0Var.f12822f = new m0.a(dVarArr, hVarX, c1Var.f12780a, c1Var.f12781b);
    }

    private static Bitmap u(final Mat mat, List list, Context context, final n0.a aVar) {
        l8.d dVarD = l8.d.d();
        String str = f12777c;
        dVarD.e("text_render", str);
        l8.c.e(str, "renderData", list);
        if (context == null) {
            l8.d.d().c("textrender_init");
            throw new RuntimeException("Cannot render text! context is null!");
        }
        boolean z10 = aVar.f12836b;
        aVar.f12836b = z10;
        aVar.f12838d = aVar.f12838d && !z10;
        List listR = m0.r(list, mat.x(), aVar);
        l8.c.e(str, "renderItems", listR);
        l8.d.d().a("toRenderItems");
        if (aVar.f12836b) {
            listR = m0.J(listR, mat.x(), aVar);
            l8.c.e(str, "merged_renderItems", listR);
            l8.d.d().a("mergedRenderItems");
        } else {
            listR.forEach(new Consumer() { // from class: j8.z0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    a1.t(mat, aVar, (m0) obj);
                }
            });
            l8.d.d().a("calcBBox");
        }
        if (aVar.f12846l) {
            i(mat, listR);
            Imgproc.a(mat, mat, 4);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(mat.d(), mat.v(), Bitmap.Config.ARGB_8888);
            Utils.c(mat, bitmapCreateBitmap);
            l8.d.d().c("text_render");
            return bitmapCreateBitmap;
        }
        u.o(listR, context, aVar);
        l8.d.d().a("calcFontSize");
        if (aVar.f12840f) {
            u0.g(mat, listR, aVar);
        } else {
            u0.l(mat, listR, aVar);
        }
        l8.d.d().a("createBackground");
        n(listR, mat, aVar);
        l8.d.d().a("findTextColor");
        Mat matK = k(listR, mat, context, aVar);
        l8.d.d().a("render_item");
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(matK.d(), matK.v(), Bitmap.Config.ARGB_8888);
        if (aVar.f12837c) {
            bitmapCreateBitmap2.setHasAlpha(true);
        } else {
            Imgproc.a(matK, matK, 4);
        }
        Utils.c(matK, bitmapCreateBitmap2);
        l8.d.d().a("matToBitmap");
        l8.d.d().c("text_render");
        return bitmapCreateBitmap2;
    }

    @Override // j8.n0
    public Bitmap b(Context context, List list) {
        Bitmap bitmapU = u(this.f12779b, list, context, this.f12778a);
        v();
        return bitmapU;
    }

    public void v() {
        this.f12778a = null;
        Mat mat = this.f12779b;
        if (mat != null) {
            mat.u();
            this.f12779b = null;
        }
    }
}
