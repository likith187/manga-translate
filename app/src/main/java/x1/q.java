package x1;

import com.supets.pet.nativelib.MP3Recorder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: g */
    public static final a f16235g = new a(null);

    /* JADX INFO: renamed from: a */
    private byte[] f16236a;

    /* JADX INFO: renamed from: b */
    private int f16237b;

    /* JADX INFO: renamed from: c */
    private j0 f16238c;

    /* JADX INFO: renamed from: d */
    private j0 f16239d;

    /* JADX INFO: renamed from: e */
    private boolean f16240e;

    /* JADX INFO: renamed from: f */
    private int f16241f = 1;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final n8.v a(byte[] bArr) {
        int length = bArr.length / 2;
        short[] sArrG = g(length);
        ByteBuffer.wrap(bArr).order(ByteOrder.nativeOrder()).asShortBuffer().get(sArrG);
        return new n8.v(sArrG, sArrG, Integer.valueOf(length));
    }

    private final n8.v c(byte[] bArr) {
        ShortBuffer shortBufferAsShortBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer();
        int iCapacity = shortBufferAsShortBuffer.capacity();
        int iCeil = (int) Math.ceil(iCapacity / 2.0f);
        short[] sArrF = f(iCeil);
        short[] sArrF2 = f(iCeil);
        b9.a aVarK = b9.d.k(b9.d.l(0, iCeil), 2);
        int iA = aVarK.a();
        int iC = aVarK.c();
        int iD = aVarK.d();
        if ((iD > 0 && iA <= iC) || (iD < 0 && iC <= iA)) {
            while (true) {
                int i10 = iA * 2;
                if (i10 < iCapacity) {
                    sArrF[iA] = shortBufferAsShortBuffer.get(i10);
                }
                int i11 = i10 + 1;
                if (i11 < iCapacity) {
                    sArrF2[iA] = shortBufferAsShortBuffer.get(i11);
                }
                if (iA == iC) {
                    break;
                }
                iA += iD;
            }
        }
        return new n8.v(sArrF, sArrF2, Integer.valueOf(iCeil));
    }

    public static /* synthetic */ void e(q qVar, int i10, int i11, int i12, int i13, int i14, int i15, Object obj) {
        int i16 = (i15 & 8) != 0 ? 16 : i13;
        if ((i15 & 16) != 0) {
            i14 = 2;
        }
        qVar.d(i10, i11, i12, i16, i14);
    }

    private final short[] f(int i10) {
        if (this.f16239d == null) {
            this.f16239d = new j0(i10);
        }
        j0 j0Var = this.f16239d;
        return j0Var != null ? (short[]) j0Var.b() : new short[i10];
    }

    private final short[] g(int i10) {
        if (this.f16238c == null) {
            this.f16238c = new j0(i10);
        }
        j0 j0Var = this.f16238c;
        return j0Var != null ? (short[]) j0Var.b() : new short[i10];
    }

    public final void b(byte[] bArr, w8.p method) {
        n8.v vVarA;
        Object objM59constructorimpl;
        Object objM59constructorimpl2;
        short[] sArr;
        short[] sArr2;
        short[] sArr3;
        kotlin.jvm.internal.r.e(method, "method");
        if (!this.f16240e) {
            com.coloros.translate.utils.c0.f7098a.q("LameMp3Encoder", "encode, but have not inited!");
            return;
        }
        if (bArr == null) {
            com.coloros.translate.utils.c0.f7098a.q("LameMp3Encoder", "encode, but data is null!");
            return;
        }
        int i10 = this.f16241f;
        Boolean boolValueOf = null;
        if (i10 == 1) {
            vVarA = a(bArr);
        } else if (i10 != 2) {
            com.coloros.translate.utils.c0.f7098a.e("LameMp3Encoder", "encode error, no support channel " + i10);
            vVarA = null;
        } else {
            vVarA = c(bArr);
        }
        try {
            r.a aVar = n8.r.Companion;
            int iEncodeEx = vVarA != null ? MP3Recorder.encodeEx((short[]) vVarA.getFirst(), (short[]) vVarA.getSecond(), ((Number) vVarA.getThird()).intValue(), this.f16236a) : -1;
            this.f16237b = iEncodeEx;
            if (iEncodeEx > 0) {
                method.invoke(this.f16236a, Integer.valueOf(iEncodeEx));
            } else {
                com.coloros.translate.utils.c0.f7098a.e("LameMp3Encoder", "encodedSize error:" + iEncodeEx);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("LameMp3Encoder", "encode error: " + thM62exceptionOrNullimpl);
        }
        try {
            j0 j0Var = this.f16238c;
            if (j0Var != null && vVarA != null && (sArr3 = (short[]) vVarA.getFirst()) != null) {
                j0Var.e(sArr3);
            }
            j0 j0Var2 = this.f16239d;
            if (j0Var2 != null) {
                if (vVarA != null && (sArr2 = (short[]) vVarA.getFirst()) != null) {
                    j0Var2.e(sArr2);
                }
                if (vVarA != null && (sArr = (short[]) vVarA.getSecond()) != null) {
                    boolValueOf = Boolean.valueOf(j0Var2.e(sArr));
                }
            }
            objM59constructorimpl2 = n8.r.m59constructorimpl(boolValueOf);
        } catch (Throwable th2) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl2 = n8.r.m59constructorimpl(n8.s.a(th2));
        }
        Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
        if (thM62exceptionOrNullimpl2 != null) {
            com.coloros.translate.utils.c0.f7098a.q("LameMp3Encoder", "encode release error: " + thM62exceptionOrNullimpl2);
        }
    }

    public final void d(int i10, int i11, int i12, int i13, int i14) {
        Object objM59constructorimpl;
        this.f16241f = i12;
        this.f16236a = new byte[(int) (7200 + (i10 * 1.25f))];
        try {
            r.a aVar = n8.r.Companion;
            MP3Recorder.initEx(i11, i12, i11, 1, i13, i14);
            this.f16240e = true;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.q("LameMp3Encoder", "init error: " + thM62exceptionOrNullimpl);
        }
    }

    public final void h() {
        Object objM59constructorimpl;
        com.coloros.translate.utils.c0.f7098a.i("LameMp3Encoder", "release");
        this.f16240e = false;
        try {
            r.a aVar = n8.r.Companion;
            MP3Recorder.closeEx();
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("LameMp3Encoder", "release error: " + thM62exceptionOrNullimpl);
        }
        j0 j0Var = this.f16239d;
        if (j0Var != null) {
            j0Var.a();
        }
        j0 j0Var2 = this.f16238c;
        if (j0Var2 != null) {
            j0Var2.a();
        }
    }
}
