package com.oplus.vfxsdk.common;

import android.animation.TimeInterpolator;
import android.util.Log;
import android.view.animation.PathInterpolator;
import com.oplus.vfxsdk.common.Animator;
import e8.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.e0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.d0;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements q {

    /* JADX INFO: renamed from: n */
    public static final C0124a f11236n = new C0124a(null);

    /* JADX INFO: renamed from: o */
    private static final String f11237o = "VFX:AbsAnimator";

    /* JADX INFO: renamed from: a */
    private final COEData f11238a;

    /* JADX INFO: renamed from: b */
    private final int f11239b;

    /* JADX INFO: renamed from: c */
    private com.oplus.vfxsdk.common.g f11240c;

    /* JADX INFO: renamed from: f */
    private HashMap f11241f;

    /* JADX INFO: renamed from: h */
    private HashMap f11242h;

    /* JADX INFO: renamed from: i */
    private d8.b f11243i;

    /* JADX INFO: renamed from: j */
    private ArrayList f11244j;

    /* JADX INFO: renamed from: k */
    private int f11245k;

    /* JADX INFO: renamed from: l */
    private int f11246l;

    /* JADX INFO: renamed from: m */
    private final com.oplus.vfxsdk.common.d f11247m;

    /* JADX INFO: renamed from: com.oplus.vfxsdk.common.a$a */
    public static final class C0124a {

        /* JADX INFO: renamed from: com.oplus.vfxsdk.common.a$a$a */
        public static final class C0125a implements e8.d {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ e8.c f11248a;

            C0125a(e8.c cVar) {
                this.f11248a = cVar;
            }

            @Override // e8.d
            public Object a(com.oplus.vfxsdk.common.o oVar, String key, int i10) {
                kotlin.jvm.internal.r.e(key, "key");
                e8.c cVar = this.f11248a;
                return cVar instanceof e8.g ? ((e8.g) cVar).getValue() : cVar instanceof e8.i ? ((e8.i) cVar).getValue() : new Object();
            }
        }

        /* JADX INFO: renamed from: com.oplus.vfxsdk.common.a$a$b */
        public static final class b implements e8.e {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ e8.c f11249a;

            b(e8.c cVar) {
                this.f11249a = cVar;
            }

            @Override // e8.e
            public void a(com.oplus.vfxsdk.common.o oVar, String str, Object obj, int i10) {
                e.a.a(this, oVar, str, obj, i10);
            }

            @Override // e8.e
            public void b(String key, Object value) {
                kotlin.jvm.internal.r.e(key, "key");
                kotlin.jvm.internal.r.e(value, "value");
                e8.c cVar = this.f11249a;
                if (cVar instanceof e8.g) {
                    ((e8.g) cVar).f((Float) value);
                } else if (cVar instanceof e8.i) {
                    ((e8.i) cVar).f((Integer) value);
                }
            }
        }

        public /* synthetic */ C0124a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(AnimLine animLine, e8.c parameter) {
            kotlin.jvm.internal.r.e(animLine, "animLine");
            kotlin.jvm.internal.r.e(parameter, "parameter");
            animLine.setPop(new C0125a(parameter));
        }

        public final void b(AnimLine animLine, e8.c parameter) {
            kotlin.jvm.internal.r.e(animLine, "animLine");
            kotlin.jvm.internal.r.e(parameter, "parameter");
            animLine.setUpdate(new b(parameter));
        }

        private C0124a() {
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a */
        private final e8.a f11250a;

        /* JADX INFO: renamed from: b */
        private final UniformValue f11251b;

        /* JADX INFO: renamed from: c */
        private final Object f11252c;

        /* JADX INFO: renamed from: d */
        private final Object f11253d;

        /* JADX INFO: renamed from: e */
        private boolean f11254e;

        public b(e8.a defaultParameter, UniformValue uniformValue, Object obj, Object obj2, boolean z10) {
            kotlin.jvm.internal.r.e(defaultParameter, "defaultParameter");
            kotlin.jvm.internal.r.e(uniformValue, "uniformValue");
            this.f11250a = defaultParameter;
            this.f11251b = uniformValue;
            this.f11252c = obj;
            this.f11253d = obj2;
            this.f11254e = z10;
        }

        public final e8.a a() {
            return this.f11250a;
        }

        public final Object b() {
            return this.f11253d;
        }

        public final Object c() {
            return this.f11252c;
        }

        public final UniformValue d() {
            return this.f11251b;
        }

        public final boolean e() {
            return this.f11254e;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return kotlin.jvm.internal.r.a(this.f11250a, bVar.f11250a) && kotlin.jvm.internal.r.a(this.f11251b, bVar.f11251b) && kotlin.jvm.internal.r.a(this.f11252c, bVar.f11252c) && kotlin.jvm.internal.r.a(this.f11253d, bVar.f11253d) && this.f11254e == bVar.f11254e;
        }

        public final void f(boolean z10) {
            this.f11254e = z10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v2, types: [int] */
        /* JADX WARN: Type inference failed for: r3v3 */
        /* JADX WARN: Type inference failed for: r3v4 */
        public int hashCode() {
            int iHashCode = ((this.f11250a.hashCode() * 31) + this.f11251b.hashCode()) * 31;
            Object obj = this.f11252c;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.f11253d;
            int iHashCode3 = (iHashCode2 + (obj2 != null ? obj2.hashCode() : 0)) * 31;
            boolean z10 = this.f11254e;
            ?? r32 = z10;
            if (z10) {
                r32 = 1;
            }
            return iHashCode3 + r32;
        }

        public String toString() {
            return "StateAnimParam(defaultParameter=" + this.f11250a + ", uniformValue=" + this.f11251b + ", srcValue=" + this.f11252c + ", deltaValue=" + this.f11253d + ", isDone=" + this.f11254e + ")";
        }
    }

    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a */
        public static final /* synthetic */ int[] f11255a;

        static {
            int[] iArr = new int[u.values().length];
            try {
                iArr[u.UseFBO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[u.FBO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[u.Texture.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[u.Color.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[u.Vec4.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[u.Vec3.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[u.Vec2.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[u.Range.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[u.Float.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[u.Int.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            f11255a = iArr;
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ String $uniformName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str) {
            super(1);
            this.$uniformName = str;
        }

        @Override // w8.l
        public final com.oplus.vfxsdk.common.o invoke(Map.Entry<Integer, HashMap<String, com.oplus.vfxsdk.common.o>> it) {
            kotlin.jvm.internal.r.e(it, "it");
            return it.getValue().get(this.$uniformName);
        }
    }

    public static final class e implements e8.e {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ e8.b f11256a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f11257b;

        e(e8.b bVar, int i10) {
            this.f11256a = bVar;
            this.f11257b = i10;
        }

        @Override // e8.e
        public void a(com.oplus.vfxsdk.common.o oVar, String str, Object obj, int i10) {
            e.a.a(this, oVar, str, obj, i10);
        }

        @Override // e8.e
        public void b(String key, Object value) {
            kotlin.jvm.internal.r.e(key, "key");
            kotlin.jvm.internal.r.e(value, "value");
            e8.b bVar = this.f11256a;
            if (bVar != null) {
                bVar.a(Integer.valueOf(this.f11257b), key, value);
            }
        }
    }

    public static final class f implements p {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ ArrayList f11258a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ a f11259b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ w8.a f11260c;

        f(ArrayList arrayList, a aVar, w8.a aVar2) {
            this.f11258a = arrayList;
            this.f11259b = aVar;
            this.f11260c = aVar2;
        }

        @Override // com.oplus.vfxsdk.common.p
        public void doFrame(long j10) {
            boolean z10;
            ArrayList<b> arrayList = this.f11258a;
            a aVar = this.f11259b;
            loop0: while (true) {
                for (b bVar : arrayList) {
                    z10 = aVar.O(j10, bVar.d().getDuration(), bVar.d().getDelay(), bVar) || z10;
                }
            }
            if (z10) {
                return;
            }
            this.f11259b.i().g();
            w8.a aVar2 = this.f11260c;
            if (aVar2 != null) {
            }
        }
    }

    static final class g extends kotlin.jvm.internal.s implements w8.l {
        public static final g INSTANCE = new g();

        g() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Animator) obj);
            return h0.INSTANCE;
        }

        public final void invoke(Animator it) {
            kotlin.jvm.internal.r.e(it, "it");
            it.pause();
        }
    }

    static final class h extends kotlin.jvm.internal.s implements w8.l {
        public static final h INSTANCE = new h();

        h() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Animator) obj);
            return h0.INSTANCE;
        }

        public final void invoke(Animator it) {
            kotlin.jvm.internal.r.e(it, "it");
            it.play();
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ float $time;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(float f10) {
            super(1);
            this.$time = f10;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Animator) obj);
            return h0.INSTANCE;
        }

        public final void invoke(Animator it) {
            kotlin.jvm.internal.r.e(it, "it");
            it.playTo(this.$time);
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.l {
        public static final j INSTANCE = new j();

        j() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Animator) obj);
            return h0.INSTANCE;
        }

        public final void invoke(Animator it) {
            kotlin.jvm.internal.r.e(it, "it");
            it.restart(true);
        }
    }

    static final class k extends kotlin.jvm.internal.s implements w8.l {
        public static final k INSTANCE = new k();

        k() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Animator) obj);
            return h0.INSTANCE;
        }

        public final void invoke(Animator it) {
            kotlin.jvm.internal.r.e(it, "it");
            it.seekNext();
        }
    }

    static final class l extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ float $time;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(float f10) {
            super(1);
            this.$time = f10;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Animator) obj);
            return h0.INSTANCE;
        }

        public final void invoke(Animator it) {
            kotlin.jvm.internal.r.e(it, "it");
            it.seekTo(this.$time);
        }
    }

    static final class m extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ w8.a $cb;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(w8.a aVar) {
            super(1);
            this.$cb = aVar;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Animator) obj);
            return h0.INSTANCE;
        }

        public final void invoke(Animator it) {
            kotlin.jvm.internal.r.e(it, "it");
            it.setAnimEndListener(this.$cb);
        }
    }

    static final class n extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ Animator.a $mode;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(Animator.a aVar) {
            super(1);
            this.$mode = aVar;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Animator) obj);
            return h0.INSTANCE;
        }

        public final void invoke(Animator it) {
            kotlin.jvm.internal.r.e(it, "it");
            it.setMAnimMode(this.$mode);
        }
    }

    static final class o extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ w8.l $cb;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(w8.l lVar) {
            super(1);
            this.$cb = lVar;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Animator) obj);
            return h0.INSTANCE;
        }

        public final void invoke(Animator it) {
            kotlin.jvm.internal.r.e(it, "it");
            it.setAnimUpdateListener(this.$cb);
        }
    }

    public a(COEData coeData, int i10) {
        kotlin.jvm.internal.r.e(coeData, "coeData");
        this.f11238a = coeData;
        this.f11239b = i10;
        this.f11240c = com.oplus.vfxsdk.common.g.Animator;
        this.f11241f = new HashMap();
        this.f11242h = new HashMap();
        this.f11244j = new ArrayList();
        this.f11247m = new com.oplus.vfxsdk.common.d();
    }

    private final void D() {
        if (this.f11244j.isEmpty()) {
            Log.w("COE_LOGGER", "onTriger defaultPassParam is null");
            return;
        }
        HashMap mapK = k();
        if (mapK != null) {
            Iterator it = mapK.entrySet().iterator();
            while (it.hasNext()) {
                ((Animator) ((Map.Entry) it.next()).getValue()).stop();
            }
        }
        this.f11247m.f();
    }

    private final void M(e8.c cVar, Object[] objArr) {
        float fFloatValue;
        if (cVar instanceof e8.g) {
            Object obj = objArr[0];
            kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlin.Float");
            ((e8.g) cVar).f((Float) obj);
            return;
        }
        if (cVar instanceof e8.i) {
            Object obj2 = objArr[0];
            kotlin.jvm.internal.r.c(obj2, "null cannot be cast to non-null type kotlin.Int");
            ((e8.i) cVar).f((Integer) obj2);
            return;
        }
        if (cVar instanceof e8.h) {
            e8.h hVar = (e8.h) cVar;
            ArrayList arrayList = new ArrayList(objArr.length);
            for (Object obj3 : objArr) {
                if (obj3 instanceof Integer) {
                    fFloatValue = ((Number) obj3).intValue();
                } else {
                    if (!(obj3 instanceof Float)) {
                        throw new IllegalArgumentException("cannot convert");
                    }
                    fFloatValue = ((Number) obj3).floatValue();
                }
                arrayList.add(Float.valueOf(fFloatValue));
            }
            hVar.f(kotlin.collections.o.o0(arrayList));
        }
    }

    private final ArrayList N(String str) {
        HashMap<String, PassParams[]> params;
        PassParams[] passParamsArr;
        e8.c cVar;
        Object objC;
        ArrayList arrayList = new ArrayList();
        Layer layer = (Layer) kotlin.collections.i.H(this.f11238a.getLayers(), this.f11239b);
        if (layer != null && (params = layer.getParams()) != null && (passParamsArr = params.get(str)) != null) {
            for (e0 e0Var : kotlin.collections.i.a0(passParamsArr)) {
                int iA = e0Var.a();
                for (UniformValue uniformValue : ((PassParams) e0Var.b()).getUniformPrams()) {
                    Map map = (Map) kotlin.collections.o.T(this.f11244j, iA);
                    if (map != null && (cVar = (e8.c) map.get(uniformValue.getName())) != null && !f(cVar, uniformValue) && (objC = c(cVar.getValue(), uniformValue.getValues())) != null) {
                        kotlin.jvm.internal.r.c(cVar, "null cannot be cast to non-null type com.oplus.vfxsdk.common.parameter.AbsParameter<*>");
                        arrayList.add(new b((e8.a) cVar, uniformValue, cVar.a(), objC, false));
                    }
                }
            }
        }
        return arrayList;
    }

    public final boolean O(long j10, long j11, float f10, b bVar) {
        Object[] array;
        if (bVar.e()) {
            return false;
        }
        float f11 = j10;
        if (f11 < f10) {
            return true;
        }
        float f12 = f11 - f10;
        float interpolation = kotlin.jvm.internal.r.a(bVar.d().getIpol(), "bezier") ? bVar.a().d().b().getInterpolation(Math.min(1.0f, f12 / j11)) : bVar.a().d().b().getInterpolation(f12);
        Object objC = bVar.c();
        if (objC instanceof Float) {
            float fFloatValue = ((Number) bVar.c()).floatValue();
            Object objB = bVar.b();
            kotlin.jvm.internal.r.c(objB, "null cannot be cast to non-null type kotlin.Float");
            array = new Object[]{Float.valueOf(fFloatValue + (((Float) objB).floatValue() * interpolation))};
        } else if (objC instanceof Integer) {
            float fFloatValue2 = ((Number) bVar.c()).floatValue();
            kotlin.jvm.internal.r.c(bVar.b(), "null cannot be cast to non-null type kotlin.Int");
            array = new Object[]{Float.valueOf(fFloatValue2 + (((Integer) r12).intValue() * interpolation))};
        } else {
            if (!(objC instanceof float[])) {
                Object objC2 = bVar.c();
                throw new IllegalArgumentException("Unsupported type: " + (objC2 != null ? objC2.getClass().getSimpleName() : null));
            }
            float[] fArr = (float[]) bVar.c();
            ArrayList arrayList = new ArrayList(fArr.length);
            int length = fArr.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                float f13 = fArr[i10];
                Object objB2 = bVar.b();
                kotlin.jvm.internal.r.c(objB2, "null cannot be cast to non-null type kotlin.FloatArray");
                arrayList.add(Float.valueOf(f13 + (((float[]) objB2)[i11] * interpolation)));
                i10++;
                i11++;
            }
            array = arrayList.toArray(new Object[0]);
        }
        M(bVar.a(), array);
        bVar.f(interpolation >= 1.0f);
        return interpolation < 1.0f;
    }

    private final Object c(Object obj, Object[] objArr) {
        float fFloatValue;
        if (obj instanceof Integer) {
            Object obj2 = objArr[0];
            if (obj2 instanceof Integer) {
                kotlin.jvm.internal.r.c(obj2, "null cannot be cast to non-null type kotlin.Int");
                return Integer.valueOf(((Integer) obj2).intValue() - ((Number) obj).intValue());
            }
        }
        if (obj instanceof Float) {
            Object obj3 = objArr[0];
            if (obj3 instanceof Float) {
                kotlin.jvm.internal.r.c(obj3, "null cannot be cast to non-null type kotlin.Float");
                return Float.valueOf(((Float) obj3).floatValue() - ((Number) obj).floatValue());
            }
        }
        if (!(obj instanceof float[])) {
            return null;
        }
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj4 : objArr) {
            if (obj4 instanceof Integer) {
                fFloatValue = ((Number) obj4).intValue();
            } else {
                if (!(obj4 instanceof Float)) {
                    throw new IllegalArgumentException("cannot convert");
                }
                fFloatValue = ((Number) obj4).floatValue();
            }
            arrayList.add(Float.valueOf(fFloatValue));
        }
        return d((float[]) obj, kotlin.collections.o.o0(arrayList));
    }

    private final float[] d(float[] fArr, float[] fArr2) {
        if (fArr.length != fArr2.length) {
            return null;
        }
        int length = fArr.length;
        float[] fArr3 = new float[length];
        for (int i10 = 0; i10 < length; i10++) {
            fArr3[i10] = fArr2[i10] - fArr[i10];
        }
        return fArr3;
    }

    private final void g(String str, w8.l lVar) {
        this.f11240c = com.oplus.vfxsdk.common.g.Animator;
        HashMap mapK = k();
        if (mapK == null || !mapK.containsKey(str)) {
            return;
        }
        Object obj = mapK.get(str);
        kotlin.jvm.internal.r.b(obj);
        lVar.invoke(obj);
    }

    public static /* synthetic */ HashMap u(a aVar, e8.e eVar, e8.d dVar, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: initAnimators");
        }
        if ((i10 & 1) != 0) {
            eVar = null;
        }
        if ((i10 & 2) != 0) {
            dVar = null;
        }
        return aVar.t(eVar, dVar);
    }

    public static /* synthetic */ ArrayList w(a aVar, e8.b bVar, TimeInterpolator timeInterpolator, long j10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: initStateParams");
        }
        if ((i10 & 1) != 0) {
            bVar = null;
        }
        if ((i10 & 2) != 0) {
            timeInterpolator = new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f);
        }
        if ((i10 & 4) != 0) {
            j10 = 400;
        }
        return aVar.v(bVar, timeInterpolator, j10);
    }

    private final void z(Uniform uniform, int i10, HashMap map) {
        com.oplus.vfxsdk.common.o oVar = new com.oplus.vfxsdk.common.o();
        oVar.i(uniform.getName());
        oVar.k(uniform.getType());
        oVar.j(i10);
        if (!kotlin.jvm.internal.r.a(uniform.getName(), "iResolution")) {
            switch (c.f11255a[uniform.getType().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    break;
                case 4:
                case 5:
                    oVar.n(new float[]{uniform.getX(), uniform.getY(), uniform.getZ(), uniform.getW()});
                    break;
                case 6:
                    oVar.n(new float[]{uniform.getX(), uniform.getY(), uniform.getZ()});
                    break;
                case 7:
                    oVar.n(new float[]{uniform.getX(), uniform.getY()});
                    break;
                case 8:
                    Object value = uniform.getValue();
                    kotlin.jvm.internal.r.c(value, "null cannot be cast to non-null type kotlin.Float");
                    oVar.n((Float) value);
                    break;
                case 9:
                    Object value2 = uniform.getValue();
                    kotlin.jvm.internal.r.c(value2, "null cannot be cast to non-null type kotlin.Float");
                    oVar.n((Float) value2);
                    break;
                case 10:
                    Object value3 = uniform.getValue();
                    kotlin.jvm.internal.r.c(value3, "null cannot be cast to non-null type kotlin.Int");
                    oVar.n((Integer) value3);
                    break;
                default:
                    Log.w(f11237o, "Unsupported uniform type: " + uniform.getType().name());
                    break;
            }
        }
        map.put(uniform.getName(), oVar);
    }

    public void A(String key) {
        kotlin.jvm.internal.r.e(key, "key");
        g(key, g.INSTANCE);
    }

    public void B(String key) {
        kotlin.jvm.internal.r.e(key, "key");
        g(key, h.INSTANCE);
    }

    public void C(String key, float f10) {
        kotlin.jvm.internal.r.e(key, "key");
        g(key, new i(f10));
    }

    public void E(String key) {
        kotlin.jvm.internal.r.e(key, "key");
        g(key, j.INSTANCE);
    }

    public void F(String key) {
        kotlin.jvm.internal.r.e(key, "key");
        g(key, k.INSTANCE);
    }

    public void G(String key, float f10) {
        kotlin.jvm.internal.r.e(key, "key");
        g(key, new l(f10));
    }

    public void H(String key, w8.a cb) {
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(cb, "cb");
        g(key, new m(cb));
    }

    public void I(String key, Animator.a mode) {
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(mode, "mode");
        g(key, new n(mode));
    }

    public void J(String key, w8.l cb) {
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(cb, "cb");
        g(key, new o(cb));
    }

    protected final void K(com.oplus.vfxsdk.common.g gVar) {
        kotlin.jvm.internal.r.e(gVar, "<set-?>");
        this.f11240c = gVar;
    }

    public final void L(d8.b iLinkProxy) {
        kotlin.jvm.internal.r.e(iLinkProxy, "iLinkProxy");
        this.f11243i = iLinkProxy;
    }

    public final void b(AnimLine animLine, e8.e eVar, e8.d dVar) {
        kotlin.jvm.internal.r.e(animLine, "animLine");
        String name = animLine.getName();
        Iterator it = this.f11244j.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Iterator it2 = ((Map) it.next()).entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it2.next();
                String str = (String) entry.getKey();
                e8.c cVar = (e8.c) entry.getValue();
                if (kotlin.jvm.internal.r.a(str, name)) {
                    C0124a c0124a = f11236n;
                    c0124a.b(animLine, cVar);
                    c0124a.a(animLine, cVar);
                    z10 = true;
                    break;
                }
            }
            if (z10) {
                break;
            }
        }
        com.oplus.vfxsdk.common.o oVarQ = q(animLine.getName());
        if (oVarQ != null) {
            animLine.setChannelData(oVarQ);
        }
        animLine.setUpdate(eVar);
        animLine.setPop(dVar);
    }

    public final void e() {
        this.f11244j.clear();
        this.f11241f.clear();
        this.f11242h.clear();
    }

    public final boolean f(e8.c param, UniformValue target) {
        kotlin.jvm.internal.r.e(param, "param");
        kotlin.jvm.internal.r.e(target, "target");
        Object[] values = target.getValues();
        if (param instanceof e8.g) {
            if (values.length == 0) {
                return false;
            }
            Object obj = values[0];
            if ((obj instanceof Number) && ((Number) ((e8.g) param).getValue()).floatValue() == ((Number) obj).floatValue()) {
                return true;
            }
        } else if (param instanceof e8.i) {
            if (values.length == 0) {
                return false;
            }
            Object obj2 = values[0];
            if ((obj2 instanceof Number) && ((Number) ((e8.i) param).getValue()).intValue() == ((Number) obj2).intValue()) {
                return true;
            }
        } else if (param instanceof e8.h) {
            e8.h hVar = (e8.h) param;
            if (values.length != ((float[]) hVar.getValue()).length) {
                return false;
            }
            if (values.length == 0 && ((float[]) hVar.getValue()).length == 0) {
                return true;
            }
            try {
                int length = values.length;
                for (int i10 = 0; i10 < length; i10++) {
                    Object obj3 = values[i10];
                    if (!(obj3 instanceof Number)) {
                        throw new IllegalArgumentException("Unsupported type: " + d0.b(obj3.getClass()).c());
                    }
                    if (((float[]) ((e8.h) param).getValue())[i10] != ((Number) obj3).floatValue()) {
                        return false;
                    }
                }
                return true;
            } catch (Exception e10) {
                throw new IllegalArgumentException("Error converting target values: " + e10.getMessage(), e10);
            }
        }
        return false;
    }

    public HashMap h() {
        Layer layer;
        Layer[] layers = this.f11238a.getLayers();
        if (layers == null || (layer = (Layer) kotlin.collections.i.H(layers, this.f11239b)) == null) {
            return null;
        }
        return layer.getParams();
    }

    public final com.oplus.vfxsdk.common.d i() {
        return this.f11247m;
    }

    protected final com.oplus.vfxsdk.common.g j() {
        return this.f11240c;
    }

    public HashMap k() {
        return this.f11241f;
    }

    public final COEData l() {
        return this.f11238a;
    }

    public final ArrayList m() {
        return this.f11244j;
    }

    public final int n() {
        return this.f11246l;
    }

    public PassParams[] o(String stateKey) {
        Layer layer;
        HashMap<String, PassParams[]> params;
        kotlin.jvm.internal.r.e(stateKey, "stateKey");
        Layer[] layers = this.f11238a.getLayers();
        if (layers == null || (layer = (Layer) kotlin.collections.i.H(layers, this.f11239b)) == null || (params = layer.getParams()) == null) {
            return null;
        }
        return params.get(stateKey);
    }

    public com.oplus.vfxsdk.common.o p(int i10, String uniformName) {
        kotlin.jvm.internal.r.e(uniformName, "uniformName");
        HashMap map = (HashMap) this.f11242h.get(Integer.valueOf(i10));
        if (map != null) {
            return (com.oplus.vfxsdk.common.o) map.get(uniformName);
        }
        return null;
    }

    public com.oplus.vfxsdk.common.o q(String uniformName) {
        kotlin.jvm.internal.r.e(uniformName, "uniformName");
        Set setEntrySet = this.f11242h.entrySet();
        kotlin.jvm.internal.r.d(setEntrySet, "<get-entries>(...)");
        return (com.oplus.vfxsdk.common.o) kotlin.sequences.i.k(kotlin.sequences.i.p(kotlin.collections.o.L(setEntrySet), new d(uniformName)));
    }

    public final HashMap r() {
        return this.f11242h;
    }

    public final void s(String animName, AnimatorValue animatorValue, e8.e eVar, e8.d dVar) {
        kotlin.jvm.internal.r.e(animName, "animName");
        kotlin.jvm.internal.r.e(animatorValue, "animatorValue");
        for (AnimLine animLine : animatorValue.getAnimLines()) {
            b(animLine, eVar, dVar);
        }
        Animator animator = new Animator(animatorValue, this.f11238a.getExpressions(), this.f11243i);
        animator.init();
        this.f11241f.put(animName, animator);
    }

    public HashMap t(e8.e eVar, e8.d dVar) {
        HashMap<String, AnimatorValue> animParams;
        Layer layer = (Layer) kotlin.collections.i.H(this.f11238a.getLayers(), this.f11239b);
        if (layer != null && (animParams = layer.getAnimParams()) != null) {
            for (Map.Entry<String, AnimatorValue> entry : animParams.entrySet()) {
                s(entry.getKey(), entry.getValue(), eVar, dVar);
            }
        }
        return this.f11241f;
    }

    public final ArrayList v(e8.b bVar, TimeInterpolator interpolator, long j10) {
        HashMap<String, PassParams[]> params;
        PassParams[] passParamsArr;
        Iterator it;
        int i10;
        int i11;
        UniformValue[] uniformValueArr;
        HashMap map;
        float fFloatValue;
        kotlin.jvm.internal.r.e(interpolator, "interpolator");
        Layer layer = (Layer) kotlin.collections.i.H(this.f11238a.getLayers(), this.f11239b);
        if (layer != null && (params = layer.getParams()) != null && (passParamsArr = params.get("default")) != null) {
            Iterator it2 = kotlin.collections.i.a0(passParamsArr).iterator();
            while (it2.hasNext()) {
                e0 e0Var = (e0) it2.next();
                int iA = e0Var.a();
                PassParams passParams = (PassParams) e0Var.b();
                e eVar = new e(bVar, iA);
                HashMap map2 = new HashMap();
                UniformValue[] uniformPrams = passParams.getUniformPrams();
                int length = uniformPrams.length;
                int i12 = 0;
                while (i12 < length) {
                    UniformValue uniformValue = uniformPrams[i12];
                    switch (c.f11255a[uniformValue.getType().ordinal()]) {
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            it = it2;
                            i10 = i12;
                            i11 = length;
                            uniformValueArr = uniformPrams;
                            map = map2;
                            float[] bezier = uniformValue.getBezier();
                            String name = uniformValue.getName();
                            Object[] values = uniformValue.getValues();
                            ArrayList arrayList = new ArrayList(values.length);
                            for (Object obj : values) {
                                if (obj instanceof Integer) {
                                    fFloatValue = ((Number) obj).intValue();
                                } else {
                                    if (!(obj instanceof Float)) {
                                        throw new IllegalArgumentException("Invalid value type for parameter " + uniformValue.getName());
                                    }
                                    fFloatValue = ((Number) obj).floatValue();
                                }
                                arrayList.add(Float.valueOf(fFloatValue));
                            }
                            map.put(uniformValue.getName(), new e8.h(new e8.f(name, kotlin.collections.o.o0(arrayList), new PathInterpolator(bezier[0], bezier[1], bezier[2], bezier[3]), j10, 0L, null, 48, null), eVar));
                            break;
                        case 8:
                        default:
                            it = it2;
                            i10 = i12;
                            i11 = length;
                            uniformValueArr = uniformPrams;
                            map = map2;
                            break;
                        case 9:
                            it = it2;
                            i10 = i12;
                            i11 = length;
                            uniformValueArr = uniformPrams;
                            map = map2;
                            float[] bezier2 = uniformValue.getBezier();
                            String name2 = uniformValue.getName();
                            String name3 = uniformValue.getName();
                            Object obj2 = uniformValue.getValues()[0];
                            kotlin.jvm.internal.r.c(obj2, "null cannot be cast to non-null type kotlin.Float");
                            map.put(name2, new e8.g(new e8.f(name3, (Float) obj2, new PathInterpolator(bezier2[0], bezier2[1], bezier2[2], bezier2[3]), uniformValue.getDuration(), 0L, null, 48, null), eVar));
                            break;
                        case 10:
                            String name4 = uniformValue.getName();
                            String name5 = uniformValue.getName();
                            Object obj3 = uniformValue.getValues()[0];
                            kotlin.jvm.internal.r.c(obj3, "null cannot be cast to non-null type kotlin.Int");
                            i10 = i12;
                            i11 = length;
                            uniformValueArr = uniformPrams;
                            it = it2;
                            map = map2;
                            map.put(name4, new e8.i(new e8.f(name5, (Integer) obj3, interpolator, j10, 0L, null, 48, null), eVar));
                            break;
                    }
                    i12 = i10 + 1;
                    map2 = map;
                    it2 = it;
                    length = i11;
                    uniformPrams = uniformValueArr;
                }
                Iterator it3 = it2;
                HashMap map3 = map2;
                this.f11245k += map3.size();
                this.f11244j.add(map3);
                it2 = it3;
            }
        }
        return this.f11244j;
    }

    public void x() {
        PostProcessorData[] postProcessor;
        RendPass[] render;
        Layer layer = (Layer) kotlin.collections.i.H(this.f11238a.getLayers(), this.f11239b);
        if (layer != null && (render = layer.getRender()) != null) {
            int length = render.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                RendPass rendPass = render[i10];
                int i12 = i11 + 1;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                this.f11242h.put(Integer.valueOf(i11), linkedHashMap);
                Set<String> setKeySet = rendPass.getUniforms().keySet();
                kotlin.jvm.internal.r.d(setKeySet, "<get-keys>(...)");
                Iterator<T> it = setKeySet.iterator();
                while (it.hasNext()) {
                    Uniform uniform = rendPass.getUniforms().get((String) it.next());
                    if (uniform != null) {
                        kotlin.jvm.internal.r.b(uniform);
                        z(uniform, i11, linkedHashMap);
                    }
                }
                Effect[] effects = rendPass.getEffects();
                if (effects != null) {
                    for (Effect effect : effects) {
                        Iterator<Map.Entry<String, Uniform>> it2 = effect.getUniforms().entrySet().iterator();
                        while (it2.hasNext()) {
                            z(it2.next().getValue(), 0, linkedHashMap);
                        }
                    }
                }
                i10++;
                i11 = i12;
            }
        }
        if (layer == null || (postProcessor = layer.getPostProcessor()) == null) {
            return;
        }
        for (PostProcessorData postProcessorData : postProcessor) {
            HashMap map = (HashMap) this.f11242h.get(0);
            for (Map.Entry<String, Uniform> entry : postProcessorData.getProperties().entrySet()) {
                entry.getKey();
                Uniform value = entry.getValue();
                if (map != null) {
                    z(value, 0, map);
                }
            }
        }
    }

    public void y(String stateKey, boolean z10, w8.a aVar) {
        kotlin.jvm.internal.r.e(stateKey, "stateKey");
        D();
        ArrayList<b> arrayListN = N(stateKey);
        if (z10) {
            for (b bVar : arrayListN) {
                M(bVar.a(), bVar.d().getValues());
            }
            if (aVar != null) {
                return;
            }
            return;
        }
        if (arrayListN.isEmpty()) {
            if (aVar != null) {
            }
            Log.w(f11237o, "state:" + stateKey + " animParameters empty");
            return;
        }
        for (b bVar2 : arrayListN) {
            if (bVar2.d().getDuration() < 10) {
                M(bVar2.a(), bVar2.d().getValues());
                bVar2.f(true);
            } else if (kotlin.jvm.internal.r.a(bVar2.d().getIpol(), "bezier")) {
                bVar2.a().d().d(new PathInterpolator(bVar2.d().getBezier()[0], bVar2.d().getBezier()[1], bVar2.d().getBezier()[2], bVar2.d().getBezier()[3]));
            } else if (kotlin.jvm.internal.r.a(bVar2.d().getIpol(), "spring")) {
                bVar2.a().d().d(com.oplus.vfxsdk.common.b.a(bVar2.d().getSpring()[0], bVar2.d().getSpring()[1], bVar2.d().getSpring()[2]));
            }
        }
        this.f11247m.e(new f(arrayListN, this, aVar));
        this.f11247m.d();
    }
}
