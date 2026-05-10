package com.oplus.vfxsdk.rsview;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.PorterDuff;
import android.graphics.RuntimeShader;
import android.graphics.Shader;
import android.util.Base64;
import android.util.Log;
import com.oplus.vfxsdk.common.COEData;
import com.oplus.vfxsdk.common.Layer;
import com.oplus.vfxsdk.common.RendPass;
import com.oplus.vfxsdk.common.Uniform;
import com.oplus.vfxsdk.common.u;
import e8.e;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class o extends com.oplus.vfxsdk.common.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final p f11435p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f11436q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private HashMap f11437r;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11438a;

        static {
            int[] iArr = new int[u.values().length];
            try {
                iArr[u.Int.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[u.Range.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[u.Float.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[u.Vec2.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[u.Vec3.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[u.Vec4.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f11438a = iArr;
        }
    }

    public static final class b implements e8.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.oplus.vfxsdk.common.o f11439a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ o f11440b;

        b(com.oplus.vfxsdk.common.o oVar, o oVar2) {
            this.f11439a = oVar;
            this.f11440b = oVar2;
        }

        @Override // e8.e
        public void a(com.oplus.vfxsdk.common.o oVar, String str, Object obj, int i10) {
            e.a.a(this, oVar, str, obj, i10);
        }

        @Override // e8.e
        public void b(String key, Object value) {
            r.e(key, "key");
            r.e(value, "value");
            if (this.f11439a.f() != u.Vec2 && this.f11439a.f() != u.Vec3 && this.f11439a.f() != u.Vec4 && this.f11439a.f() != u.Color) {
                this.f11440b.a0(key, Boolean.TRUE, value);
                return;
            }
            o oVar = this.f11440b;
            g0 g0Var = new g0(2);
            g0Var.a(Boolean.TRUE);
            float[] fArr = (float[]) value;
            ArrayList arrayList = new ArrayList(fArr.length);
            for (float f10 : fArr) {
                r.c(Float.valueOf(f10), "null cannot be cast to non-null type kotlin.Any");
                arrayList.add(Float.valueOf(f10));
            }
            g0Var.b(arrayList.toArray(new Object[0]));
            oVar.a0(key, g0Var.d(new Object[g0Var.c()]));
        }
    }

    public static final class c implements e8.b {
        c() {
        }

        @Override // e8.b
        public void a(Object... value) {
            r.e(value, "value");
            Object obj = value[2];
            if ((obj instanceof Float) || (obj instanceof Integer)) {
                o oVar = o.this;
                Object obj2 = value[1];
                r.c(obj2, "null cannot be cast to non-null type kotlin.String");
                oVar.a0((String) obj2, value[2]);
                return;
            }
            if (obj instanceof float[]) {
                o oVar2 = o.this;
                Object obj3 = value[1];
                r.c(obj3, "null cannot be cast to non-null type kotlin.String");
                Object obj4 = value[2];
                r.c(obj4, "null cannot be cast to non-null type kotlin.FloatArray");
                Float[] fArrT = kotlin.collections.i.t((float[]) obj4);
                oVar2.a0((String) obj3, Arrays.copyOf(fArrT, fArrT.length));
            }
        }
    }

    public static final class d implements e8.e {
        d() {
        }

        @Override // e8.e
        public void a(com.oplus.vfxsdk.common.o oVar, String key, Object value, int i10) {
            r.e(key, "key");
            r.e(value, "value");
            o.this.b0(key, value, i10);
        }

        @Override // e8.e
        public void b(String key, Object value) {
            r.e(key, "key");
            r.e(value, "value");
            o.c0(o.this, key, value, 0, 4, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(COEData coeData, int i10, p options) {
        super(coeData, i10);
        r.e(coeData, "coeData");
        r.e(options, "options");
        this.f11435p = options;
        String simpleName = getClass().getSimpleName();
        r.d(simpleName, "getSimpleName(...)");
        this.f11436q = simpleName;
        this.f11437r = new HashMap();
    }

    private final Integer R(int i10) {
        Layer layer = (Layer) kotlin.collections.i.H(l().getLayers(), i10);
        if (layer != null) {
            return Integer.valueOf(layer.getBlendDfactor());
        }
        return null;
    }

    private final Integer S(int i10) {
        Layer layer = (Layer) kotlin.collections.i.H(l().getLayers(), i10);
        if (layer != null) {
            return Integer.valueOf(layer.getBlendSfactor());
        }
        return null;
    }

    private final PorterDuff.Mode V(Integer num, Integer num2) {
        if (num == null || num2 == null) {
            return PorterDuff.Mode.SRC_OVER;
        }
        String str = num + "+" + num2;
        Object orDefault = this.f11437r.getOrDefault(str, PorterDuff.Mode.SRC_OVER);
        r.d(orDefault, "getOrDefault(...)");
        PorterDuff.Mode mode = (PorterDuff.Mode) orDefault;
        Log.d(X(), "getPorterDuffMode, key: " + str + " mode:" + mode.name());
        return mode;
    }

    public static /* synthetic */ PorterDuff.Mode W(o oVar, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPorterDuffMode");
        }
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return oVar.U(i10);
    }

    private final void Z() {
        this.f11437r.put("770+771", PorterDuff.Mode.SRC_OVER);
        this.f11437r.put("1+1", PorterDuff.Mode.ADD);
        this.f11437r.put("1+769", PorterDuff.Mode.SCREEN);
        this.f11437r.put("774+0", PorterDuff.Mode.MULTIPLY);
    }

    public static /* synthetic */ void c0(o oVar, String str, Object obj, int i10, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateAnimValue");
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        oVar.b0(str, obj, i10);
    }

    public final RuntimeShader P(RendPass passData, p options) {
        Bitmap bitmapDecodeByteArray;
        List listH;
        r.e(passData, "passData");
        r.e(options, "options");
        Log.i(X(), X() + "=>translate start");
        boolean zA = (!options.b() || W(this, 0, 1, null) == PorterDuff.Mode.SRC_OVER) ? options.a() : false;
        j.a();
        RuntimeShader runtimeShaderA = i.a(com.oplus.vfxsdk.common.i.f11275a.c(passData.getFs(), zA));
        Log.i(X(), X() + "=>translate end");
        Set<String> setKeySet = passData.getUniforms().keySet();
        r.d(setKeySet, "<get-keys>(...)");
        Iterator<T> it = setKeySet.iterator();
        while (it.hasNext()) {
            Uniform uniform = passData.getUniforms().get((String) it.next());
            if (uniform != null) {
                Log.i(X(), "Uniform name:" + uniform.getName() + ", type:" + uniform.getType() + ", value:" + uniform.getValue() + ", x:" + uniform.getX() + ", y:" + uniform.getY());
                if (!r.a(uniform.getName(), "u_resolution")) {
                    if (uniform.getType() == u.Texture) {
                        if (uniform.getValue() != null) {
                            Integer wrapMode = uniform.getWrapMode();
                            Shader.TileMode tileMode = (wrapMode != null && wrapMode.intValue() == 10497) ? Shader.TileMode.REPEAT : (wrapMode != null && wrapMode.intValue() == 33648) ? Shader.TileMode.MIRROR : (wrapMode != null && wrapMode.intValue() == 33071) ? Shader.TileMode.CLAMP : (wrapMode != null && wrapMode.intValue() == 33069) ? Shader.TileMode.DECAL : Shader.TileMode.REPEAT;
                            BitmapFactory.Options options2 = new BitmapFactory.Options();
                            if (options.d()) {
                                options2.inPreferredConfig = Bitmap.Config.HARDWARE;
                                Log.d(X(), "create HardwareBitmap");
                            }
                            if (uniform.getValue() instanceof String) {
                                Object value = uniform.getValue();
                                r.c(value, "null cannot be cast to non-null type kotlin.String");
                                List<String> listSplit = new kotlin.text.n(",").split((String) value, 0);
                                if (listSplit.isEmpty()) {
                                    listH = kotlin.collections.o.h();
                                    byte[] bArrDecode = Base64.decode(((String[]) listH.toArray(new String[0]))[1], 0);
                                    r.d(bArrDecode, "decode(...)");
                                    bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options2);
                                } else {
                                    ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                                    while (listIterator.hasPrevious()) {
                                        if (listIterator.previous().length() != 0) {
                                            listH = kotlin.collections.o.l0(listSplit, listIterator.nextIndex() + 1);
                                            break;
                                        }
                                    }
                                    listH = kotlin.collections.o.h();
                                    byte[] bArrDecode2 = Base64.decode(((String[]) listH.toArray(new String[0]))[1], 0);
                                    r.d(bArrDecode2, "decode(...)");
                                    bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode2, 0, bArrDecode2.length, options2);
                                }
                            } else if (uniform.getValue() instanceof ByteBuffer) {
                                Object value2 = uniform.getValue();
                                r.c(value2, "null cannot be cast to non-null type java.nio.ByteBuffer");
                                ByteBuffer byteBuffer = (ByteBuffer) value2;
                                bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity(), options2);
                            } else {
                                bitmapDecodeByteArray = null;
                            }
                            if (bitmapDecodeByteArray != null) {
                                if (options.c() && uniform.getFlip()) {
                                    bitmapDecodeByteArray = com.oplus.vfxsdk.rsview.b.f11413a.a(bitmapDecodeByteArray, true);
                                }
                                runtimeShaderA.setInputShader(uniform.getName(), new BitmapShader(bitmapDecodeByteArray, tileMode, tileMode));
                                runtimeShaderA.setFloatUniform(uniform.getName() + "_size", bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight());
                            }
                        }
                    } else if (uniform.getType() == u.Color || uniform.getType() == u.Vec4) {
                        runtimeShaderA.setFloatUniform(uniform.getName(), uniform.getX(), uniform.getY(), uniform.getZ(), uniform.getW());
                    } else if (uniform.getType() == u.Vec3) {
                        runtimeShaderA.setFloatUniform(uniform.getName(), uniform.getX(), uniform.getY(), uniform.getZ());
                    } else if (uniform.getType() == u.Vec2) {
                        runtimeShaderA.setFloatUniform(uniform.getName(), uniform.getX(), uniform.getY());
                    } else if (uniform.getType() == u.Range) {
                        if (uniform.getValue() instanceof Float) {
                            String name = uniform.getName();
                            Object value3 = uniform.getValue();
                            r.c(value3, "null cannot be cast to non-null type kotlin.Float");
                            runtimeShaderA.setFloatUniform(name, ((Float) value3).floatValue());
                        }
                    } else if (uniform.getType() == u.Float) {
                        String name2 = uniform.getName();
                        Object value4 = uniform.getValue();
                        r.c(value4, "null cannot be cast to non-null type kotlin.Float");
                        runtimeShaderA.setFloatUniform(name2, ((Float) value4).floatValue());
                    } else if (uniform.getType() == u.Int) {
                        String name3 = uniform.getName();
                        Object value5 = uniform.getValue();
                        r.c(value5, "null cannot be cast to non-null type kotlin.Int");
                        runtimeShaderA.setIntUniform(name3, ((Integer) value5).intValue());
                    }
                }
            }
        }
        runtimeShaderA.setFloatUniform("u_matResolution", new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f});
        Log.i(X(), X() + "=>setUniform end");
        return runtimeShaderA;
    }

    protected final void Q() {
        Z();
        x();
        for (Map.Entry entry : r().entrySet()) {
            ((Number) entry.getKey()).intValue();
            for (Map.Entry entry2 : ((HashMap) entry.getValue()).entrySet()) {
                com.oplus.vfxsdk.common.o oVar = (com.oplus.vfxsdk.common.o) entry2.getValue();
                oVar.l(new b(oVar, this));
            }
        }
        Y();
        Log.d(X(), "initUniformMap passSize:" + r().size());
        com.oplus.vfxsdk.common.a.w(this, new c(), null, 0L, 6, null);
        com.oplus.vfxsdk.common.a.u(this, new d(), null, 2, null);
    }

    public final p T() {
        return this.f11435p;
    }

    public final PorterDuff.Mode U(int i10) {
        Integer numS = S(i10);
        Integer numR = R(i10);
        Log.d(X(), "getPorterDuffMode srcFactor:" + numS + ", dstFactor:" + numR);
        return (numS == null || numR == null) ? PorterDuff.Mode.SRC_OVER : V(numS, numR);
    }

    public String X() {
        return this.f11436q;
    }

    public abstract void Y();

    public void a0(String str, Object... value) {
        com.oplus.vfxsdk.common.o oVarQ;
        r.e(value, "value");
        if (str == null || (oVarQ = q(str)) == null) {
            return;
        }
        oVarQ.m(true);
        int length = value.length;
        if (length != 0) {
            int i10 = 0;
            if (length == 1) {
                Object obj = value[0];
                r.c(obj, "null cannot be cast to non-null type kotlin.Any");
                oVarQ.n(obj);
                return;
            }
            Object obj2 = value[0];
            if (obj2 instanceof Integer) {
                int[] iArr = new int[value.length];
                int length2 = value.length;
                while (i10 < length2) {
                    Object obj3 = value[i10];
                    r.c(obj3, "null cannot be cast to non-null type kotlin.Int");
                    iArr[i10] = ((Integer) obj3).intValue();
                    i10++;
                }
                oVarQ.n(iArr);
                return;
            }
            if (obj2 instanceof Float) {
                float[] fArr = new float[value.length];
                int length3 = value.length;
                while (i10 < length3) {
                    Object obj4 = value[i10];
                    r.c(obj4, "null cannot be cast to non-null type kotlin.Float");
                    fArr[i10] = ((Float) obj4).floatValue();
                    i10++;
                }
                oVarQ.n(fArr);
            }
        }
    }

    protected final void b0(String key, Object value, int i10) {
        r.e(key, "key");
        r.e(value, "value");
        com.oplus.vfxsdk.common.o oVarQ = q(key);
        if (oVarQ == null) {
            return;
        }
        oVarQ.m(true);
        Object objH = oVarQ.h();
        if (objH != null) {
            if (objH instanceof float[]) {
                ((float[]) objH)[i10] = ((Float) value).floatValue();
            } else {
                oVarQ.n(value);
            }
        }
    }

    protected final void d0(RuntimeShader runtimeShader, HashMap uniformsMap) {
        r.e(uniformsMap, "uniformsMap");
        for (Map.Entry entry : uniformsMap.entrySet()) {
            if (((com.oplus.vfxsdk.common.o) entry.getValue()).g()) {
                switch (a.f11438a[((com.oplus.vfxsdk.common.o) entry.getValue()).f().ordinal()]) {
                    case 1:
                        if (runtimeShader != null) {
                            String strE = ((com.oplus.vfxsdk.common.o) entry.getValue()).e();
                            Object objH = ((com.oplus.vfxsdk.common.o) entry.getValue()).h();
                            r.c(objH, "null cannot be cast to non-null type kotlin.Int");
                            runtimeShader.setIntUniform(strE, ((Integer) objH).intValue());
                        }
                        break;
                    case 2:
                    case 3:
                        if (runtimeShader != null) {
                            String strE2 = ((com.oplus.vfxsdk.common.o) entry.getValue()).e();
                            Object objH2 = ((com.oplus.vfxsdk.common.o) entry.getValue()).h();
                            r.c(objH2, "null cannot be cast to non-null type kotlin.Float");
                            runtimeShader.setFloatUniform(strE2, ((Float) objH2).floatValue());
                        }
                        break;
                    case 4:
                    case 5:
                    case 6:
                        if (runtimeShader != null) {
                            String strE3 = ((com.oplus.vfxsdk.common.o) entry.getValue()).e();
                            Object objH3 = ((com.oplus.vfxsdk.common.o) entry.getValue()).h();
                            r.c(objH3, "null cannot be cast to non-null type kotlin.FloatArray");
                            runtimeShader.setFloatUniform(strE3, (float[]) objH3);
                        }
                        break;
                }
                ((com.oplus.vfxsdk.common.o) entry.getValue()).m(false);
            }
        }
    }
}
