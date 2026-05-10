package k6;

import android.graphics.PointF;
import com.oplus.anim.parser.moshi.c;
import f6.b;

/* JADX INFO: loaded from: classes2.dex */
public class i implements n0 {
    public static final i INSTANCE = new i();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.a f12931a = c.a.a("t", "f", "s", "j", "tr", "lh", "ls", "fc", "sc", "sw", "of", "ps", "sz");

    private i() {
    }

    @Override // k6.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public f6.b a(com.oplus.anim.parser.moshi.c cVar, float f10) {
        b.a aVar = b.a.CENTER;
        cVar.k();
        b.a aVar2 = aVar;
        String strX = null;
        String strX2 = null;
        PointF pointF = null;
        PointF pointF2 = null;
        float fG = 0.0f;
        float fG2 = 0.0f;
        float fG3 = 0.0f;
        float fG4 = 0.0f;
        int I = 0;
        int iD = 0;
        int iD2 = 0;
        boolean zD = true;
        while (cVar.B()) {
            switch (cVar.v0(f12931a)) {
                case 0:
                    strX = cVar.X();
                    break;
                case 1:
                    strX2 = cVar.X();
                    break;
                case 2:
                    fG = (float) cVar.G();
                    break;
                case 3:
                    int I2 = cVar.I();
                    aVar2 = b.a.CENTER;
                    if (I2 <= aVar2.ordinal() && I2 >= 0) {
                        aVar2 = b.a.values()[I2];
                    }
                    break;
                case 4:
                    I = cVar.I();
                    break;
                case 5:
                    fG2 = (float) cVar.G();
                    break;
                case 6:
                    fG3 = (float) cVar.G();
                    break;
                case 7:
                    iD = t.d(cVar);
                    break;
                case 8:
                    iD2 = t.d(cVar);
                    break;
                case 9:
                    fG4 = (float) cVar.G();
                    break;
                case 10:
                    zD = cVar.D();
                    break;
                case 11:
                    cVar.i();
                    PointF pointF3 = new PointF(((float) cVar.G()) * f10, ((float) cVar.G()) * f10);
                    cVar.v();
                    pointF = pointF3;
                    break;
                case 12:
                    cVar.i();
                    PointF pointF4 = new PointF(((float) cVar.G()) * f10, ((float) cVar.G()) * f10);
                    cVar.v();
                    pointF2 = pointF4;
                    break;
                default:
                    cVar.x0();
                    cVar.D0();
                    break;
            }
        }
        cVar.x();
        return new f6.b(strX, strX2, fG, aVar2, I, fG2, fG3, iD, iD2, fG4, zD, pointF, pointF2);
    }
}
