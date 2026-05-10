package com.oplus.vfxsdk.naive.parse;

import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.Base64;
import android.util.Log;
import android.view.animation.PathInterpolator;
import androidx.annotation.Keep;
import com.oplus.vfxsdk.common.Anim;
import com.oplus.vfxsdk.common.Animator;
import com.oplus.vfxsdk.common.AnimatorValue;
import com.oplus.vfxsdk.common.COEData;
import com.oplus.vfxsdk.common.Effect;
import com.oplus.vfxsdk.common.Layer;
import com.oplus.vfxsdk.common.PassParams;
import com.oplus.vfxsdk.common.PostProcessorData;
import com.oplus.vfxsdk.common.RendPass;
import com.oplus.vfxsdk.common.StatusAnim;
import com.oplus.vfxsdk.common.TransformData;
import com.oplus.vfxsdk.common.Uniform;
import com.oplus.vfxsdk.common.UniformValue;
import com.oplus.vfxsdk.common.o;
import com.oplus.vfxsdk.common.u;
import com.oplus.vfxsdk.naive.coe.engine.BaseRenderer;
import com.oplus.vfxsdk.naive.coe.engine.Material;
import com.oplus.vfxsdk.naive.coe.engine.NativeEngine;
import com.oplus.vfxsdk.naive.coe.engine.NativeRenderer;
import com.oplus.vfxsdk.naive.coe.engine.ParticleEffect;
import com.oplus.vfxsdk.naive.coe.engine.ParticleEmitter;
import com.oplus.vfxsdk.naive.coe.engine.Pass;
import com.oplus.vfxsdk.naive.coe.engine.PostProcessor;
import com.oplus.vfxsdk.naive.coe.engine.RenderTexture;
import com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo;
import com.oplus.vfxsdk.naive.coe.engine.Texture;
import com.oplus.vfxsdk.naive.coe.engine.Transform;
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
import java.util.function.BiConsumer;
import kotlin.collections.e0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.a0;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlin.text.n;
import n8.h0;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class COERenderer extends BaseRenderer {
    private final String TAG;
    private String[] animListenedList;
    private d animListener;
    private HashMap<String, c> animTracker;
    private com.oplus.vfxsdk.common.a animator;
    private final e8.e builtinUpdate;
    private final boolean cacheData;
    private final COEData coeData;
    private final float height;
    private final ArrayList<SystemUniform> iResolution;
    private final int layerIndex;
    private final float[] layout;
    private float layoutHeight;
    private float layoutWidth;
    private h8.a renderListener;
    private final float[] rotation;
    private final HashMap<String, RenderTexture> rt;
    private final float[] scale;
    private final HashMap<String, StatusData[]> statusAnim;
    private final float width;

    public static final class a implements e8.e {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ o f11368a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ COERenderer f11369b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ int f11370c;

        /* JADX INFO: renamed from: com.oplus.vfxsdk.naive.parse.COERenderer$a$a */
        public /* synthetic */ class C0128a {

            /* JADX INFO: renamed from: a */
            public static final /* synthetic */ int[] f11371a;

            static {
                int[] iArr = new int[u.values().length];
                try {
                    iArr[u.Vec2.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[u.Vec3.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[u.Vec4.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[u.Color.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[u.Int.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[u.Range.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[u.Float.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                f11371a = iArr;
            }
        }

        a(o oVar, COERenderer cOERenderer, int i10) {
            this.f11368a = oVar;
            this.f11369b = cOERenderer;
            this.f11370c = i10;
        }

        @Override // e8.e
        public void a(o oVar, String str, Object obj, int i10) {
            e.a.a(this, oVar, str, obj, i10);
        }

        @Override // e8.e
        public void b(String key, Object value) {
            r.e(key, "key");
            r.e(value, "value");
            switch (C0128a.f11371a[this.f11368a.f().ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    COERenderer cOERenderer = this.f11369b;
                    int i10 = this.f11370c;
                    float[] fArr = (float[]) value;
                    ArrayList arrayList = new ArrayList(fArr.length);
                    for (float f10 : fArr) {
                        r.c(Float.valueOf(f10), "null cannot be cast to non-null type kotlin.Any");
                        arrayList.add(Float.valueOf(f10));
                    }
                    Object[] array = arrayList.toArray(new Object[0]);
                    cOERenderer.setParameterCache(i10, key, true, Arrays.copyOf(array, array.length));
                    break;
                case 5:
                case 6:
                case 7:
                    this.f11369b.setParameterCache(this.f11370c, key, true, value);
                    break;
            }
        }
    }

    static final class b extends s implements p {
        final /* synthetic */ NativeEngine $engine;

        static final class a extends s implements w8.a {
            final /* synthetic */ NativeEngine $engine;
            final /* synthetic */ String $key;
            final /* synthetic */ COERenderer this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(COERenderer cOERenderer, String str, NativeEngine nativeEngine) {
                super(0);
                this.this$0 = cOERenderer;
                this.$key = str;
                this.$engine = nativeEngine;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return h0.INSTANCE;
            }

            public final void invoke() {
                Log.i("COE_LOGGER", this.this$0.getTAG() + "=>onAnimStart: java animator " + this.$key);
                this.$engine.onAnimStart(this.this$0.getLayerIndex(), this.$key);
            }
        }

        /* JADX INFO: renamed from: com.oplus.vfxsdk.naive.parse.COERenderer$b$b */
        static final class C0129b extends s implements w8.a {
            final /* synthetic */ NativeEngine $engine;
            final /* synthetic */ String $key;
            final /* synthetic */ COERenderer this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0129b(COERenderer cOERenderer, String str, NativeEngine nativeEngine) {
                super(0);
                this.this$0 = cOERenderer;
                this.$key = str;
                this.$engine = nativeEngine;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return h0.INSTANCE;
            }

            public final void invoke() {
                Log.i("COE_LOGGER", this.this$0.getTAG() + "=>onAnimEnd: java animator " + this.$key);
                this.$engine.onAnimEnd(this.this$0.getLayerIndex(), this.$key);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(NativeEngine nativeEngine) {
            super(2);
            this.$engine = nativeEngine;
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((String) obj, (Animator) obj2);
            return h0.INSTANCE;
        }

        public final void invoke(String key, Animator anim) {
            r.e(key, "key");
            r.e(anim, "anim");
            anim.setAnimStartListener(new a(COERenderer.this, key, this.$engine));
            anim.setAnimEndListener(new C0129b(COERenderer.this, key, this.$engine));
        }
    }

    public final class c {

        /* JADX INFO: renamed from: a */
        private long f11372a;

        /* JADX INFO: renamed from: b */
        private long f11373b;

        /* JADX INFO: renamed from: c */
        private long f11374c;

        public c() {
        }

        public final long a() {
            return this.f11374c;
        }

        public final long b() {
            return this.f11373b;
        }

        public final long c() {
            return this.f11372a;
        }

        public final void d(long j10) {
            this.f11374c = j10;
        }

        public final void e(long j10) {
            this.f11373b = j10;
        }

        public final void f(long j10) {
            this.f11372a = j10;
        }
    }

    public interface d {
    }

    public static final class e implements e8.e {
        e() {
        }

        @Override // e8.e
        public void a(o oVar, String str, Object obj, int i10) {
            e.a.a(this, oVar, str, obj, i10);
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override // e8.e
        public void b(String key, Object value) {
            r.e(key, "key");
            r.e(value, "value");
            float[] fArr = (float[]) value;
            switch (key.hashCode()) {
                case -192516410:
                    if (key.equals("builtin_layout")) {
                        COERenderer.this.layout[2] = fArr[0];
                        COERenderer.this.layout[3] = fArr[1];
                    }
                    break;
                case -7974665:
                    if (key.equals("builtin_rotate")) {
                        COERenderer.this.rotation[0] = fArr[0];
                        COERenderer.this.rotation[1] = fArr[1];
                    }
                    break;
                case 554480174:
                    if (key.equals("builtin_scale")) {
                        COERenderer.this.scale[0] = fArr[0];
                        COERenderer.this.scale[1] = fArr[1];
                    }
                    break;
                case 952338482:
                    if (key.equals("builtin_translate")) {
                        COERenderer.this.layout[0] = fArr[0];
                        COERenderer.this.layout[1] = fArr[1];
                    }
                    break;
            }
            COERenderer.this.updateTransform();
        }
    }

    public static final class f implements e8.b {
        f() {
        }

        @Override // e8.b
        public void a(Object... value) {
            r.e(value, "value");
            Object obj = value[2];
            if ((obj instanceof Float) || (obj instanceof Integer)) {
                COERenderer cOERenderer = COERenderer.this;
                Object obj2 = value[0];
                r.c(obj2, "null cannot be cast to non-null type kotlin.Int");
                int iIntValue = ((Integer) obj2).intValue();
                Object obj3 = value[1];
                r.c(obj3, "null cannot be cast to non-null type kotlin.String");
                cOERenderer.setParameter(iIntValue, (String) obj3, true, value[2]);
                return;
            }
            if (obj instanceof float[]) {
                COERenderer cOERenderer2 = COERenderer.this;
                Object obj4 = value[0];
                r.c(obj4, "null cannot be cast to non-null type kotlin.Int");
                int iIntValue2 = ((Integer) obj4).intValue();
                Object obj5 = value[1];
                r.c(obj5, "null cannot be cast to non-null type kotlin.String");
                Object obj6 = value[2];
                r.c(obj6, "null cannot be cast to non-null type kotlin.FloatArray");
                Float[] fArrT = kotlin.collections.i.t((float[]) obj6);
                cOERenderer2.setParameter(iIntValue2, (String) obj5, true, Arrays.copyOf(fArrT, fArrT.length));
            }
        }
    }

    public static final class g implements e8.e {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Pass f11378a;

        g(Pass pass) {
            this.f11378a = pass;
        }

        @Override // e8.e
        public void a(o oVar, String str, Object obj, int i10) {
            e.a.a(this, oVar, str, obj, i10);
        }

        @Override // e8.e
        public void b(String key, Object value) {
            r.e(key, "key");
            r.e(value, "value");
            this.f11378a.setParameter(key, value);
        }
    }

    static final class h extends s implements w8.a {
        final /* synthetic */ a0 $startProgresss;
        final /* synthetic */ String $stateKey;
        final /* synthetic */ COERenderer this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(a0 a0Var, COERenderer cOERenderer, String str) {
            super(0);
            this.$startProgresss = a0Var;
            this.this$0 = cOERenderer;
            this.$stateKey = str;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            com.oplus.vfxsdk.common.a animator = this.this$0.getAnimator();
            if (animator != null) {
                a0 a0Var = this.$startProgresss;
                int i10 = a0Var.element + 1;
                a0Var.element = i10;
                if (i10 == animator.n()) {
                    Log.i("COE_LOGGER", this.this$0.getTAG() + "=>onAnimStart: java animator callback " + this.$stateKey);
                    this.this$0.getEngine().onAnimStart(this.this$0.getLayerIndex(), this.$stateKey);
                    this.$startProgresss.element = 0;
                }
            }
        }
    }

    static final class i extends s implements w8.a {
        final /* synthetic */ a0 $endProgresss;
        final /* synthetic */ String $stateKey;
        final /* synthetic */ COERenderer this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(a0 a0Var, COERenderer cOERenderer, String str) {
            super(0);
            this.$endProgresss = a0Var;
            this.this$0 = cOERenderer;
            this.$stateKey = str;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            com.oplus.vfxsdk.common.a animator = this.this$0.getAnimator();
            if (animator != null) {
                a0 a0Var = this.$endProgresss;
                int i10 = a0Var.element + 1;
                a0Var.element = i10;
                if (i10 == animator.n()) {
                    Log.i("COE_LOGGER", "COERenderer: onAnimEnd, java animator callback " + this.$stateKey);
                    this.this$0.getEngine().onAnimEnd(this.this$0.getLayerIndex(), this.$stateKey);
                    this.$endProgresss.element = 0;
                }
            }
        }
    }

    static final class j extends s implements w8.a {
        final /* synthetic */ w8.a $endCb;
        final /* synthetic */ a0 $endProgresss;
        final /* synthetic */ COERenderer this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(a0 a0Var, COERenderer cOERenderer, w8.a aVar) {
            super(0);
            this.$endProgresss = a0Var;
            this.this$0 = cOERenderer;
            this.$endCb = aVar;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            com.oplus.vfxsdk.common.a animator = this.this$0.getAnimator();
            if (animator != null) {
                a0 a0Var = this.$endProgresss;
                int i10 = a0Var.element + 1;
                a0Var.element = i10;
                if (i10 == animator.n()) {
                    this.$endCb.mo8invoke();
                    String tag = this.this$0.getTAG();
                    com.oplus.vfxsdk.common.a animator2 = this.this$0.getAnimator();
                    Log.i("COE_LOGGER", tag + "=>onTriger endCb " + (animator2 != null ? Integer.valueOf(animator2.n()) : null));
                }
            }
        }
    }

    public /* synthetic */ COERenderer(NativeEngine nativeEngine, float f10, float f11, h8.a aVar, COEData cOEData, int i10, boolean z10, d8.b bVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(nativeEngine, f10, f11, (i11 & 8) != 0 ? null : aVar, cOEData, i10, (i11 & 64) != 0 ? false : z10, bVar);
    }

    public static final void _init_$lambda$2(p tmp0, Object obj, Object obj2) {
        r.e(tmp0, "$tmp0");
        tmp0.invoke(obj, obj2);
    }

    public static /* synthetic */ Texture createTexture$default(COERenderer cOERenderer, String str, TexCreateInfo.WrapMode wrapMode, boolean z10, TexCreateInfo.FilterMode filterMode, TexCreateInfo.PixelFormat pixelFormat, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        boolean z11 = z10;
        if ((i10 & 8) != 0) {
            filterMode = TexCreateInfo.FilterMode.NEAREST;
        }
        TexCreateInfo.FilterMode filterMode2 = filterMode;
        if ((i10 & 16) != 0) {
            pixelFormat = TexCreateInfo.PixelFormat.RGBA8Unorm;
        }
        return cOERenderer.createTexture(str, wrapMode, z11, filterMode2, pixelFormat);
    }

    private final void initParticle() {
        if (r.a(getLayer().getType(), "Particle")) {
            ParticleEmitter particleEmitter = new ParticleEmitter(getEngine(), getLayer().getRender()[0].getCs());
            NativeRenderer nativeRenderer = getNativeRenderer();
            if (nativeRenderer != null) {
                nativeRenderer.n(particleEmitter);
            }
            getLayer().getRender()[0].getUniforms();
            for (Map.Entry<String, Uniform> entry : getLayer().getRender()[0].getUniforms().entrySet()) {
                entry.getKey();
                updateUniformValue(entry.getValue(), 0);
            }
            Effect[] effects = getLayer().getRender()[0].getEffects();
            if (effects != null) {
                for (Effect effect : effects) {
                    ParticleEffect particleEffect = new ParticleEffect(getEngine(), effect.getCs());
                    NativeRenderer nativeRenderer2 = getNativeRenderer();
                    if (nativeRenderer2 != null) {
                        nativeRenderer2.b(particleEffect);
                    }
                    Iterator<Map.Entry<String, Uniform>> it = effect.getUniforms().entrySet().iterator();
                    while (it.hasNext()) {
                        updateUniformValue(it.next().getValue(), 0);
                    }
                }
            }
        }
    }

    private final void initPostProcessor() {
        PostProcessorData[] postProcessor;
        PostProcessorData[] postProcessor2;
        Layer layer = (Layer) kotlin.collections.i.H(this.coeData.getLayers(), this.layerIndex);
        if ((layer != null ? layer.getPostProcessor() : null) != null) {
            Layer layer2 = (Layer) kotlin.collections.i.H(this.coeData.getLayers(), this.layerIndex);
            if (layer2 == null || (postProcessor2 = layer2.getPostProcessor()) == null || postProcessor2.length != 0) {
                getNativeRenderer().o(new PostProcessor(getEngine()));
                Layer layer3 = (Layer) kotlin.collections.i.H(this.coeData.getLayers(), this.layerIndex);
                if (layer3 == null || (postProcessor = layer3.getPostProcessor()) == null) {
                    return;
                }
                for (PostProcessorData postProcessorData : postProcessor) {
                    int iIntValue = 0;
                    int iIntValue2 = 0;
                    for (Map.Entry<String, Uniform> entry : postProcessorData.getProperties().entrySet()) {
                        String key = entry.getKey();
                        Uniform value = entry.getValue();
                        updateUniformValue(value, 0);
                        if (r.a(key, "batchEnabled")) {
                            Object value2 = value.getValue();
                            r.c(value2, "null cannot be cast to non-null type kotlin.Int");
                            iIntValue = ((Integer) value2).intValue();
                        }
                        if (r.a(key, "standalone")) {
                            Object value3 = value.getValue();
                            r.c(value3, "null cannot be cast to non-null type kotlin.Int");
                            iIntValue2 = ((Integer) value3).intValue();
                        }
                    }
                    PostProcessor postProcessorF = getNativeRenderer().f();
                    if (postProcessorF != null) {
                        postProcessorF.b(iIntValue != 0);
                    }
                    PostProcessor postProcessorF2 = getNativeRenderer().f();
                    if (postProcessorF2 != null) {
                        postProcessorF2.c(iIntValue2 != 0);
                    }
                    PostProcessor postProcessorF3 = getNativeRenderer().f();
                    if (postProcessorF3 != null) {
                        postProcessorF3.a(postProcessorData.getId(), getMaterial());
                    }
                }
            }
        }
    }

    private final void initRenderPass() {
        StatusData statusData;
        Trace.beginSection("loadGLResources");
        long jCurrentTimeMillis = System.currentTimeMillis();
        getNativeRenderer().k(getLayer().getEnable());
        RendPass[] render = getLayer().getRender();
        int length = render.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            RendPass rendPass = render[i10];
            int i12 = i11 + 1;
            Pass pass = new Pass(getEngine(), rendPass.getVs(), rendPass.getFs(), Boolean.TRUE, rendPass.getOrder());
            boolean z10 = true;
            if (i11 == getLayer().getRender().length - 1) {
                pass.d(getLayer().getEnableBlend());
                pass.setBlendSrcFactor(getLayer().getBlendSfactor());
                pass.setBlendDstFactor(getLayer().getBlendDfactor());
                pass.c(getLayer().getBlendSfactorAlpha());
                pass.b(getLayer().getBlendDfactorAlpha());
            }
            int iAddPass = addPass(pass);
            Set<String> setKeySet = rendPass.getUniforms().keySet();
            r.d(setKeySet, "<get-keys>(...)");
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                Uniform uniform = rendPass.getUniforms().get((String) it.next());
                if (uniform != null) {
                    r.b(uniform);
                    updateUniformValue(uniform, iAddPass);
                }
            }
            g gVar = new g(pass);
            StatusAnim[] status = rendPass.getStatus();
            if (status != null) {
                int length2 = status.length;
                int i13 = 0;
                while (i13 < length2) {
                    StatusAnim statusAnim = status[i13];
                    int length3 = statusAnim.getAnims().length;
                    StatusData[] statusDataArr = new StatusData[length3];
                    int i14 = 0;
                    while (i14 < length3) {
                        Anim anim = statusAnim.getAnims()[i14];
                        RendPass[] rendPassArr = render;
                        int i15 = length;
                        StatusAnim[] statusAnimArr = status;
                        int i16 = length2;
                        PathInterpolator pathInterpolator = new PathInterpolator(anim.getBezier()[0].floatValue(), anim.getBezier()[1].floatValue(), anim.getBezier()[2].floatValue(), anim.getBezier()[3].floatValue());
                        if (r.a(anim.getType(), "Int")) {
                            String uniformName = anim.getUniformName();
                            Object value = anim.getValue();
                            r.c(value, "null cannot be cast to non-null type kotlin.Int");
                            statusData = new StatusData(anim.getValue(), new e8.i(new e8.f(uniformName, (Integer) value, pathInterpolator, anim.getDuration(), 0L, null, 48, null), gVar));
                        } else {
                            String uniformName2 = anim.getUniformName();
                            Object value2 = anim.getValue();
                            r.c(value2, "null cannot be cast to non-null type kotlin.Float");
                            statusData = new StatusData(anim.getValue(), new e8.g(new e8.f(uniformName2, (Float) value2, pathInterpolator, anim.getDuration(), 0L, null, 48, null), gVar));
                        }
                        statusDataArr[i14] = statusData;
                        i14++;
                        z10 = true;
                        render = rendPassArr;
                        length = i15;
                        status = statusAnimArr;
                        length2 = i16;
                    }
                    this.statusAnim.put(statusAnim.getName(), statusDataArr);
                    i13++;
                    render = render;
                    length = length;
                }
            }
            i10++;
            i11 = i12;
            render = render;
            length = length;
        }
        f8.c cVarB = f8.e.f12039a.b(this.coeData.getName());
        if (cVarB != null) {
            cVarB.i(cVarB.b() + ((int) (System.currentTimeMillis() - jCurrentTimeMillis)));
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final void initTransform() {
        String str;
        String str2;
        String str3;
        String str4;
        TransformData transform = getLayer().getTransform();
        if (transform != null) {
            String[] layout_expr = transform.getLayout_expr();
            if (layout_expr == null || layout_expr.length == 0) {
                this.layout[0] = transform.getLayout()[0].floatValue();
                this.layout[1] = transform.getLayout()[1].floatValue();
                this.layout[2] = transform.getLayout()[2].floatValue();
                this.layout[3] = transform.getLayout()[3].floatValue();
            } else {
                float[] fArr = this.layout;
                String[] layout_expr2 = transform.getLayout_expr();
                String str5 = "";
                if (layout_expr2 == null || (str = (String) kotlin.collections.i.H(layout_expr2, 0)) == null) {
                    str = "";
                }
                fArr[0] = layoutExpr(str, transform.getLayout()[0].floatValue());
                float[] fArr2 = this.layout;
                String[] layout_expr3 = transform.getLayout_expr();
                if (layout_expr3 == null || (str2 = (String) kotlin.collections.i.H(layout_expr3, 1)) == null) {
                    str2 = "";
                }
                fArr2[1] = layoutExpr(str2, transform.getLayout()[1].floatValue());
                float[] fArr3 = this.layout;
                String[] layout_expr4 = transform.getLayout_expr();
                if (layout_expr4 == null || (str3 = (String) kotlin.collections.i.H(layout_expr4, 2)) == null) {
                    str3 = "";
                }
                fArr3[2] = layoutExpr(str3, transform.getLayout()[2].floatValue());
                float[] fArr4 = this.layout;
                String[] layout_expr5 = transform.getLayout_expr();
                if (layout_expr5 != null && (str4 = (String) kotlin.collections.i.H(layout_expr5, 3)) != null) {
                    str5 = str4;
                }
                fArr4[3] = layoutExpr(str5, transform.getLayout()[3].floatValue());
            }
            this.scale[0] = transform.getScale()[0].floatValue();
            this.scale[1] = transform.getScale()[1].floatValue();
            this.scale[2] = transform.getScale()[2].floatValue();
            this.rotation[0] = transform.getRotate()[0].floatValue();
            this.rotation[1] = transform.getRotate()[1].floatValue();
            this.rotation[2] = transform.getRotate()[2].floatValue();
            com.oplus.vfxsdk.common.a animator = getAnimator();
            r.c(animator, "null cannot be cast to non-null type com.oplus.vfxsdk.common.AnimatorNative");
            for (Map.Entry entry : ((com.oplus.vfxsdk.common.f) animator).Q().entrySet()) {
                String str6 = (String) entry.getKey();
                o oVar = (o) entry.getValue();
                switch (str6.hashCode()) {
                    case -192516410:
                        if (str6.equals("builtin_layout")) {
                            float[] fArr5 = this.layout;
                            oVar.n(new float[]{fArr5[2], fArr5[3]});
                        }
                        break;
                    case -7974665:
                        if (str6.equals("builtin_rotate")) {
                            float[] fArr6 = this.rotation;
                            oVar.n(new float[]{fArr6[0], fArr6[1]});
                        }
                        break;
                    case 554480174:
                        if (str6.equals("builtin_scale")) {
                            float[] fArr7 = this.scale;
                            oVar.n(new float[]{fArr7[0], fArr7[1]});
                        }
                        break;
                    case 952338482:
                        if (str6.equals("builtin_translate")) {
                            float[] fArr8 = this.layout;
                            oVar.n(new float[]{fArr8[0], fArr8[1]});
                        }
                        break;
                }
            }
        }
        updateTransform();
    }

    private final float layoutExpr(String str, float f10) {
        return str.length() > 0 ? this.coeData.getExpressions().a(str, f10, f10).floatValue() : f10;
    }

    public static final void onAnimEnd$lambda$10(COERenderer this$0, String key) {
        r.e(this$0, "this$0");
        r.e(key, "$key");
        this$0.getClass();
    }

    public static final void onAnimStart$lambda$6(COERenderer this$0, String key) {
        r.e(this$0, "this$0");
        r.e(key, "$key");
        this$0.getClass();
    }

    public static final void onAnimUpdate$lambda$7(COERenderer this$0, String key, double d10, float[] values) {
        r.e(this$0, "this$0");
        r.e(key, "$key");
        r.e(values, "$values");
        this$0.getClass();
    }

    public final void updateTransform() {
        float[] fArr = this.layout;
        float f10 = fArr[2];
        float[] fArr2 = this.scale;
        float f11 = fArr2[0] * f10;
        float f12 = this.layoutWidth;
        float f13 = f11 / f12;
        float f14 = fArr[3];
        float f15 = fArr2[1] * f14;
        float f16 = this.layoutHeight;
        float f17 = f15 / f16;
        float[] fArr3 = this.rotation;
        float f18 = fArr3[0];
        float f19 = fArr3[1];
        float f20 = fArr3[2];
        float f21 = (((fArr[0] + (f10 * 0.5f)) * 2.0f) / f12) - 1.0f;
        float f22 = ((((f16 - fArr[1]) - (f14 * 0.5f)) * 2.0f) / f16) - 1.0f;
        Transform transformG = getNativeRenderer().g();
        if (transformG != null) {
            transformG.c(f13, f17, 1.0f);
        }
        Transform transformG2 = getNativeRenderer().g();
        if (transformG2 != null) {
            transformG2.a(f18, f19, f20);
        }
        Transform transformG3 = getNativeRenderer().g();
        if (transformG3 != null) {
            transformG3.b(f21, f22, 0.0f);
        }
    }

    private final void updateUniformValue(Uniform uniform, int i10) {
        Texture textureCreateTexture;
        ArrayList arrayListC;
        ArrayList arrayListC2;
        Material material = getMaterial();
        if (material == null) {
            return;
        }
        if (r.a(uniform.getName(), "iResolution")) {
            material.h(i10, uniform.getName(), Float.valueOf(this.width), Float.valueOf(this.height));
            this.iResolution.add(new SystemUniform(i10, uniform));
            return;
        }
        if (uniform.getType() == u.UseFBO) {
            RenderTexture renderTexture = this.rt.get(uniform.getName());
            if (renderTexture != null) {
                material.h(i10, uniform.getName(), renderTexture);
                return;
            }
            return;
        }
        if (uniform.getType() == u.FBO) {
            RenderTexture renderTexture2 = new RenderTexture(getEngine(), uniform.getWidth(), uniform.getHeight());
            material.j(renderTexture2, i10);
            this.rt.put(uniform.getName(), renderTexture2);
            return;
        }
        if (uniform.getType() != u.Texture) {
            if (uniform.getType() == u.Color || uniform.getType() == u.Vec4) {
                material.h(i10, uniform.getName(), Float.valueOf(uniform.getX()), Float.valueOf(uniform.getY()), Float.valueOf(uniform.getZ()), Float.valueOf(uniform.getW()));
                return;
            }
            if (uniform.getType() == u.Vec3) {
                material.h(i10, uniform.getName(), Float.valueOf(uniform.getX()), Float.valueOf(uniform.getY()), Float.valueOf(uniform.getZ()));
                return;
            }
            if (uniform.getType() == u.Vec2) {
                material.h(i10, uniform.getName(), Float.valueOf(uniform.getX()), Float.valueOf(uniform.getY()));
                return;
            }
            if (uniform.getType() == u.Range) {
                material.h(i10, uniform.getName(), uniform.getValue());
                return;
            }
            if (uniform.getType() == u.Float) {
                material.h(i10, uniform.getName(), uniform.getValue());
                return;
            } else if (uniform.getType() == u.Int) {
                material.h(i10, uniform.getName(), uniform.getValue());
                return;
            } else {
                if (uniform.getType() == u.fv) {
                    material.h(i10, uniform.getName(), uniform.getValue());
                    return;
                }
                return;
            }
        }
        if (uniform.getValue() != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Integer wrapMode = uniform.getWrapMode();
            TexCreateInfo.WrapMode wrapMode2 = (wrapMode != null && wrapMode.intValue() == 10497) ? TexCreateInfo.WrapMode.REPEAT : (wrapMode != null && wrapMode.intValue() == 33648) ? TexCreateInfo.WrapMode.MIRROR : (wrapMode != null && wrapMode.intValue() == 33071) ? TexCreateInfo.WrapMode.CLAMP : (wrapMode != null && wrapMode.intValue() == 33069) ? TexCreateInfo.WrapMode.BORDER : TexCreateInfo.WrapMode.REPEAT;
            Integer filterMode = uniform.getFilterMode();
            TexCreateInfo.FilterMode filterMode2 = ((filterMode != null && filterMode.intValue() == 9728) || filterMode == null || filterMode.intValue() != 9729) ? TexCreateInfo.FilterMode.NEAREST : TexCreateInfo.FilterMode.LINEAR;
            TexCreateInfo.FilterMode filterMode3 = filterMode2;
            Integer colorMode = uniform.getColorMode();
            TexCreateInfo.PixelFormat pixelFormat = (colorMode != null && colorMode.intValue() == 32856) ? TexCreateInfo.PixelFormat.RGBA8Unorm : (colorMode != null && colorMode.intValue() == 34842) ? TexCreateInfo.PixelFormat.RGBA16SFloat : (colorMode != null && colorMode.intValue() == 34836) ? TexCreateInfo.PixelFormat.RGBA32SFloat : TexCreateInfo.PixelFormat.RGBA8Unorm;
            Log.i(this.TAG, "colorMode " + pixelFormat);
            if (uniform.getValue() instanceof String) {
                String name = uniform.getName();
                Object value = uniform.getValue();
                r.c(value, "null cannot be cast to non-null type kotlin.String");
                material.h(i10, name, createTexture((String) value, wrapMode2, uniform.getFlip(), filterMode3, pixelFormat));
                f8.c cVarB = f8.e.f12039a.b(this.coeData.getName());
                if (cVarB == null || (arrayListC2 = cVarB.c()) == null) {
                    return;
                }
                arrayListC2.add(new f8.d(uniform.getName(), -1, uniform.getMediaType(), (int) (System.currentTimeMillis() - jCurrentTimeMillis)));
                return;
            }
            if (!(uniform.getValue() instanceof ByteBuffer)) {
                Log.e(this.TAG, "texture parse error uniformName:" + uniform.getName());
                return;
            }
            if (this.coeData.getCV() == 1) {
                Object value2 = uniform.getValue();
                r.c(value2, "null cannot be cast to non-null type java.nio.ByteBuffer");
                byte[] bArrArray = ((ByteBuffer) value2).array();
                r.d(bArrArray, "array(...)");
                textureCreateTexture = createTexture(new String(bArrArray, kotlin.text.d.f13110a), wrapMode2, uniform.getFlip(), filterMode3, pixelFormat);
            } else {
                Object value3 = uniform.getValue();
                r.c(value3, "null cannot be cast to non-null type java.nio.ByteBuffer");
                textureCreateTexture = createTexture((ByteBuffer) value3, wrapMode2, uniform.getFlip(), uniform.getMediaType(), filterMode3, pixelFormat);
            }
            f8.c cVarB2 = f8.e.f12039a.b(this.coeData.getName());
            if (cVarB2 != null && (arrayListC = cVarB2.c()) != null) {
                String name2 = uniform.getName();
                Object value4 = uniform.getValue();
                r.c(value4, "null cannot be cast to non-null type java.nio.ByteBuffer");
                arrayListC.add(new f8.d(name2, ((ByteBuffer) value4).capacity(), uniform.getMediaType(), (int) (System.currentTimeMillis() - jCurrentTimeMillis)));
            }
            material.h(i10, uniform.getName(), textureCreateTexture);
        }
    }

    public final Texture createTexture(String base64, TexCreateInfo.WrapMode wrapMode, boolean z10, TexCreateInfo.FilterMode filterMode, TexCreateInfo.PixelFormat colorMode) {
        List listH;
        r.e(base64, "base64");
        r.e(wrapMode, "wrapMode");
        r.e(filterMode, "filterMode");
        r.e(colorMode, "colorMode");
        List<String> listSplit = new n(",").split(base64, 0);
        if (listSplit.isEmpty()) {
            listH = kotlin.collections.o.h();
        } else {
            ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
            while (listIterator.hasPrevious()) {
                if (listIterator.previous().length() != 0) {
                    listH = kotlin.collections.o.l0(listSplit, listIterator.nextIndex() + 1);
                    break;
                }
            }
            listH = kotlin.collections.o.h();
        }
        byte[] bArrDecode = Base64.decode(((String[]) listH.toArray(new String[0]))[1], 0);
        r.d(bArrDecode, "decode(...)");
        int length = bArrDecode.length;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPremultiplied = false;
        h0 h0Var = h0.INSTANCE;
        TexCreateInfo texCreateInfo = new TexCreateInfo(BitmapFactory.decodeByteArray(bArrDecode, 0, length, options));
        texCreateInfo.setWrapMode(wrapMode);
        texCreateInfo.setFilterMode(filterMode);
        texCreateInfo.setFlipY(z10);
        texCreateInfo.setPixelFormat(colorMode);
        return new Texture(getEngine(), texCreateInfo);
    }

    public final void forceReset(String stateKey) {
        HashMap<String, PassParams[]> params;
        PassParams[] passParamsArr;
        float fFloatValue;
        r.e(stateKey, "stateKey");
        com.oplus.vfxsdk.common.a animator = getAnimator();
        if ((animator != null ? animator.m() : null) == null || (params = getLayer().getParams()) == null || (passParamsArr = params.get(stateKey)) == null) {
            return;
        }
        for (e0 e0Var : kotlin.collections.i.a0(passParamsArr)) {
            int iA = e0Var.a();
            for (UniformValue uniformValue : ((PassParams) e0Var.b()).getUniformPrams()) {
                com.oplus.vfxsdk.common.a animator2 = getAnimator();
                ArrayList arrayListM = animator2 != null ? animator2.m() : null;
                r.b(arrayListM);
                e8.c cVar = (e8.c) ((Map) arrayListM.get(iA)).get(uniformValue.getName());
                if (cVar instanceof e8.g) {
                    Object obj = uniformValue.getValues()[0];
                    r.c(obj, "null cannot be cast to non-null type kotlin.Float");
                    ((e8.g) cVar).f((Float) obj);
                } else if (cVar instanceof e8.i) {
                    Object obj2 = uniformValue.getValues()[0];
                    r.c(obj2, "null cannot be cast to non-null type kotlin.Int");
                    ((e8.i) cVar).f((Integer) obj2);
                } else if (cVar instanceof e8.h) {
                    e8.h hVar = (e8.h) cVar;
                    Object[] values = uniformValue.getValues();
                    ArrayList arrayList = new ArrayList(values.length);
                    for (Object obj3 : values) {
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
        }
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer
    public List<String> getAllTrigerState() {
        Set<String> setKeySet;
        HashMap<String, PassParams[]> params = getLayer().getParams();
        if (params == null || (setKeySet = params.keySet()) == null) {
            return null;
        }
        return kotlin.collections.o.r0(setKeySet);
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer, com.oplus.vfxsdk.common.q
    public com.oplus.vfxsdk.common.a getAnimator() {
        return this.animator;
    }

    public final e8.e getBuiltinUpdate() {
        return this.builtinUpdate;
    }

    public final boolean getCacheData() {
        return this.cacheData;
    }

    public final COEData getCoeData() {
        return this.coeData;
    }

    public final float getHeight() {
        return this.height;
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer, com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public int getID() {
        return this.layerIndex;
    }

    public final ArrayList<SystemUniform> getIResolution() {
        return this.iResolution;
    }

    public final int getLayerIndex() {
        return this.layerIndex;
    }

    public final h8.a getRenderListener() {
        return this.renderListener;
    }

    public final HashMap<String, RenderTexture> getRt() {
        return this.rt;
    }

    public final HashMap<String, StatusData[]> getStatusAnim() {
        return this.statusAnim;
    }

    public final String getTAG() {
        return this.TAG;
    }

    public final float getWidth() {
        return this.width;
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer, com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public void onAnimEnd(final String key) {
        r.e(key, "key");
        c cVar = this.animTracker.get(key);
        if (cVar != null) {
            cVar.e(System.currentTimeMillis());
            cVar.d(cVar.b() - cVar.c());
            f8.c cVarB = f8.e.f12039a.b(this.coeData.getName());
            if (cVarB != null) {
                c cVar2 = this.animTracker.get(key);
                r.b(cVar2);
                long jC = cVar2.c();
                c cVar3 = this.animTracker.get(key);
                r.b(cVar3);
                long jB = cVar3.b();
                c cVar4 = this.animTracker.get(key);
                r.b(cVar4);
                cVarB.d().add(new f8.a(key, jC, jB, cVar4.a()));
            }
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.oplus.vfxsdk.naive.parse.e
            @Override // java.lang.Runnable
            public final void run() {
                COERenderer.onAnimEnd$lambda$10(this.f11385a, key);
            }
        });
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer, com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public void onAnimStart(final String key) {
        r.e(key, "key");
        HashMap<String, c> map = this.animTracker;
        c cVar = new c();
        cVar.f(System.currentTimeMillis());
        map.put(key, cVar);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.oplus.vfxsdk.naive.parse.c
            @Override // java.lang.Runnable
            public final void run() {
                COERenderer.onAnimStart$lambda$6(this.f11382a, key);
            }
        });
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer, com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public void onAnimUpdate(final String key, final double d10, final float... values) {
        r.e(key, "key");
        r.e(values, "values");
        super.onAnimUpdate(key, d10, Arrays.copyOf(values, values.length));
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.oplus.vfxsdk.naive.parse.f
            @Override // java.lang.Runnable
            public final void run() {
                COERenderer.onAnimUpdate$lambda$7(this.f11387a, key, d10, values);
            }
        });
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer
    public void onDestroy() {
        synchronized (this) {
            try {
                Log.d("COE_LOGGER", this.TAG + "=>coeRenderer onDestroy");
                super.onDestroy();
                com.oplus.vfxsdk.common.a animator = getAnimator();
                if (animator != null) {
                    animator.e();
                }
                if (!this.cacheData) {
                    HashMap<String, PassParams[]> params = getLayer().getParams();
                    if (params != null) {
                        params.clear();
                    }
                    getLayer().setParams(null);
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer
    public void onLayoutChange() {
        initTransform();
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public void onRenderQuit() {
        super.onRenderQuit();
        Log.d("COE_LOGGER", this.TAG + "=>onRenderQuit");
        h8.a aVar = this.renderListener;
        if (aVar != null) {
            aVar.onRenderQuit();
        }
        this.renderListener = null;
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public void onRenderStart() {
        super.onRenderStart();
        Log.d("COE_LOGGER", this.TAG + "=>onRenderStart");
        h8.a aVar = this.renderListener;
        if (aVar != null) {
            aVar.onRenderStart();
        }
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        for (SystemUniform systemUniform : this.iResolution) {
            Material material = getMaterial();
            if (material != null) {
                material.h(systemUniform.getPassIndex(), systemUniform.getUniform().getName(), Float.valueOf(i10), Float.valueOf(i11));
            }
        }
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer
    public void onSurfaceChange(float f10, float f11) {
        if (f10 <= 0.0f || f11 <= 0.0f) {
            return;
        }
        this.layoutWidth = f10;
        this.layoutHeight = f11;
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer
    public void onTriger(String stateKey, boolean z10, w8.a aVar) {
        PassParams[] passParamsArr;
        e8.c cVar;
        r.e(stateKey, "stateKey");
        synchronized (this) {
            try {
                HashMap<String, PassParams[]> params = getLayer().getParams();
                if (params != null && (passParamsArr = params.get(stateKey)) != null) {
                    a0 a0Var = new a0();
                    a0 a0Var2 = new a0();
                    r.b(passParamsArr);
                    for (e0 e0Var : kotlin.collections.i.a0(passParamsArr)) {
                        int iA = e0Var.a();
                        for (UniformValue uniformValue : ((PassParams) e0Var.b()).getUniformPrams()) {
                            com.oplus.vfxsdk.common.a animator = getAnimator();
                            ArrayList arrayListM = animator != null ? animator.m() : null;
                            r.b(arrayListM);
                            Map map = (Map) kotlin.collections.o.T(arrayListM, iA);
                            if (map != null && (cVar = (e8.c) map.get(uniformValue.getName())) != null) {
                                cVar.c(new h(a0Var, this, stateKey));
                                cVar.b(new i(a0Var2, this, stateKey));
                                if (aVar != null) {
                                    cVar.b(new j(a0Var2, this, aVar));
                                }
                            }
                        }
                    }
                }
                super.onTriger(stateKey, z10, aVar);
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setAnimListenedList(String[] list) {
        r.e(list, "list");
        this.animListenedList = list;
        getEngine().setAnimListenedList(list);
    }

    public final void setAnimListener(d dVar) {
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer
    public void setAnimator(com.oplus.vfxsdk.common.a aVar) {
        this.animator = aVar;
    }

    public final void setRenderListener(h8.a aVar) {
        this.renderListener = aVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COERenderer(NativeEngine engine, float f10, float f11, h8.a aVar, COEData coeData, int i10, boolean z10, d8.b linkProxy) {
        HashMap mapK;
        HashMap mapR;
        super(engine, i10);
        r.e(engine, "engine");
        r.e(coeData, "coeData");
        r.e(linkProxy, "linkProxy");
        this.width = f10;
        this.height = f11;
        this.renderListener = aVar;
        this.coeData = coeData;
        this.layerIndex = i10;
        this.cacheData = z10;
        this.TAG = "VFX:COERenderer";
        this.statusAnim = new HashMap<>();
        this.rt = new HashMap<>();
        this.iResolution = new ArrayList<>();
        this.layoutWidth = 1080.0f;
        this.layoutHeight = 2400.0f;
        this.layout = new float[]{0.0f, 0.0f, 1080.0f, 2400.0f};
        float[] fArr = new float[3];
        for (int i11 = 0; i11 < 3; i11++) {
            fArr[i11] = 1.0f;
        }
        this.scale = fArr;
        float[] fArr2 = new float[3];
        for (int i12 = 0; i12 < 3; i12++) {
            fArr2[i12] = 0.0f;
        }
        this.rotation = fArr2;
        this.animator = new com.oplus.vfxsdk.common.f(this.coeData, this.layerIndex);
        this.builtinUpdate = new e();
        setLayer(this.coeData.getLayers()[this.layerIndex]);
        initRenderPass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.oplus.vfxsdk.common.a animator = getAnimator();
        if (animator != null) {
            animator.x();
        }
        com.oplus.vfxsdk.common.a animator2 = getAnimator();
        if (animator2 != null && (mapR = animator2.r()) != null) {
            for (Map.Entry entry : mapR.entrySet()) {
                int iIntValue = ((Number) entry.getKey()).intValue();
                for (Map.Entry entry2 : ((HashMap) entry.getValue()).entrySet()) {
                    o oVar = (o) entry2.getValue();
                    oVar.l(new a(oVar, this, iIntValue));
                }
            }
        }
        f fVar = new f();
        com.oplus.vfxsdk.common.a animator3 = getAnimator();
        if (animator3 != null) {
            com.oplus.vfxsdk.common.a.w(animator3, fVar, null, 0L, 6, null);
        }
        com.oplus.vfxsdk.common.a animator4 = getAnimator();
        if (animator4 != null) {
            animator4.L(linkProxy);
        }
        com.oplus.vfxsdk.common.a animator5 = getAnimator();
        if (animator5 != null) {
            com.oplus.vfxsdk.common.a.u(animator5, null, null, 2, null);
        }
        com.oplus.vfxsdk.common.a animator6 = getAnimator();
        if (animator6 != null && (mapK = animator6.k()) != null) {
            final b bVar = new b(engine);
            mapK.forEach(new BiConsumer() { // from class: com.oplus.vfxsdk.naive.parse.d
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    COERenderer._init_$lambda$2(bVar, obj, obj2);
                }
            });
        }
        HashMap<String, AnimatorValue> animParams = getLayer().getAnimParams();
        if (animParams != null) {
            com.oplus.vfxsdk.common.a animator7 = getAnimator();
            r.c(animator7, "null cannot be cast to non-null type com.oplus.vfxsdk.common.AnimatorNative");
            ((com.oplus.vfxsdk.common.f) animator7).U(animParams, this.builtinUpdate);
        }
        initTransform();
        initParticle();
        initPostProcessor();
        Trace.endSection();
        Trace.beginSection("onStart");
        h8.a aVar2 = this.renderListener;
        if (aVar2 != null) {
            aVar2.onStart();
        }
        Trace.endSection();
        f8.c cVarB = f8.e.f12039a.b(this.coeData.getName());
        if (cVarB != null) {
            cVarB.g(cVarB.a() + ((int) (System.currentTimeMillis() - jCurrentTimeMillis)));
        }
        Log.i("COE_LOGGER", this.TAG + "=>onStart time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
        this.animTracker = new HashMap<>();
    }

    public static /* synthetic */ Texture createTexture$default(COERenderer cOERenderer, ByteBuffer byteBuffer, TexCreateInfo.WrapMode wrapMode, boolean z10, String str, TexCreateInfo.FilterMode filterMode, TexCreateInfo.PixelFormat pixelFormat, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        boolean z11 = z10;
        if ((i10 & 8) != 0) {
            str = "";
        }
        String str2 = str;
        if ((i10 & 16) != 0) {
            filterMode = TexCreateInfo.FilterMode.NEAREST;
        }
        TexCreateInfo.FilterMode filterMode2 = filterMode;
        if ((i10 & 32) != 0) {
            pixelFormat = TexCreateInfo.PixelFormat.RGBA8Unorm;
        }
        return cOERenderer.createTexture(byteBuffer, wrapMode, z11, str2, filterMode2, pixelFormat);
    }

    public final Texture createTexture(ByteBuffer bytes, TexCreateInfo.WrapMode wrapMode, boolean z10, String mediaType, TexCreateInfo.FilterMode filterMode, TexCreateInfo.PixelFormat colorMode) {
        TexCreateInfo texCreateInfo;
        r.e(bytes, "bytes");
        r.e(wrapMode, "wrapMode");
        r.e(mediaType, "mediaType");
        r.e(filterMode, "filterMode");
        r.e(colorMode, "colorMode");
        long jCurrentTimeMillis = System.currentTimeMillis();
        Log.i("COE_LOGGER", this.TAG + "=>createTexture mediaType:" + mediaType);
        if (kotlin.text.r.K(mediaType, "astc", false, 2, null)) {
            texCreateInfo = new TexCreateInfo(bytes);
            texCreateInfo.setPixelFormat(TexCreateInfo.PixelFormat.ASTC_6x6_LDR);
        } else {
            byte[] bArrArray = bytes.array();
            int iArrayOffset = bytes.arrayOffset();
            int iCapacity = bytes.capacity();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPremultiplied = false;
            h0 h0Var = h0.INSTANCE;
            texCreateInfo = new TexCreateInfo(BitmapFactory.decodeByteArray(bArrArray, iArrayOffset, iCapacity, options));
        }
        texCreateInfo.setWrapMode(wrapMode);
        texCreateInfo.setFilterMode(filterMode);
        texCreateInfo.setFlipY(z10);
        texCreateInfo.setPixelFormat(colorMode);
        Texture texture = new Texture(getEngine(), texCreateInfo);
        if (texCreateInfo.getRawBuffer() != null) {
            texCreateInfo.getRawBuffer().clear();
        }
        Log.d("COE_LOGGER", this.TAG + "=>createTexture mediaType:" + mediaType + " time:" + (System.currentTimeMillis() - jCurrentTimeMillis));
        return texture;
    }
}
