package com.oplus.vfxsdk.naive;

import android.content.Context;
import android.util.Log;
import android.view.Surface;
import com.oplus.vfxsdk.common.Animator;
import com.oplus.vfxsdk.common.AnimatorValue;
import com.oplus.vfxsdk.common.COEData;
import com.oplus.vfxsdk.common.RendPass;
import com.oplus.vfxsdk.common.Uniform;
import com.oplus.vfxsdk.common.k;
import com.oplus.vfxsdk.common.l;
import com.oplus.vfxsdk.common.n;
import com.oplus.vfxsdk.common.t;
import com.oplus.vfxsdk.naive.coe.engine.BaseRenderer;
import com.oplus.vfxsdk.naive.coe.engine.NativeEngine;
import com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo;
import com.oplus.vfxsdk.naive.coe.engine.Texture;
import com.oplus.vfxsdk.naive.parse.COERenderer;
import com.oplus.vfxsdk.naive.parse.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public class a extends l implements d8.a {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final C0126a f11323v = new C0126a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f11324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i8.a f11325d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected NativeEngine f11326e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CopyOnWriteArrayList f11327f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f11328g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f11329h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private h8.a f11330i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f11331j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Surface f11332k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private k f11333l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final HashMap f11334m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final HashMap f11335n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ConcurrentHashMap f11336o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Object f11337p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final com.oplus.vfxsdk.naive.parse.a f11338q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Map f11339r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ArrayList f11340s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private h8.a f11341t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final t f11342u;

    /* JADX INFO: renamed from: com.oplus.vfxsdk.naive.a$a, reason: collision with other inner class name */
    public static final class C0126a {
        public /* synthetic */ C0126a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0126a() {
        }
    }

    public static final class b implements h8.a {
        b() {
        }

        @Override // h8.a
        public void a() {
            h8.a aVarJ = a.this.j();
            if (aVarJ != null) {
                aVarJ.a();
            }
            Iterator it = a.this.f11340s.iterator();
            while (it.hasNext()) {
                ((h8.a) it.next()).a();
            }
        }

        @Override // h8.a
        public void b() {
            h8.a aVarJ = a.this.j();
            if (aVarJ != null) {
                aVarJ.b();
            }
            Iterator it = a.this.f11340s.iterator();
            while (it.hasNext()) {
                ((h8.a) it.next()).b();
            }
        }

        @Override // h8.a
        public void c() {
            h8.a aVarJ = a.this.j();
            if (aVarJ != null) {
                aVarJ.c();
            }
            Iterator it = a.this.f11340s.iterator();
            while (it.hasNext()) {
                ((h8.a) it.next()).c();
            }
            a.this.f11340s.clear();
            a.this.f11339r.clear();
        }

        @Override // h8.a
        public void d() {
            h8.a aVarJ = a.this.j();
            if (aVarJ != null) {
                aVarJ.d();
            }
            Iterator it = a.this.f11340s.iterator();
            while (it.hasNext()) {
                ((h8.a) it.next()).d();
            }
        }

        @Override // h8.a
        public void onRenderQuit() {
            h8.a aVarJ = a.this.j();
            if (aVarJ != null) {
                aVarJ.onRenderQuit();
            }
            Iterator it = a.this.f11340s.iterator();
            while (it.hasNext()) {
                ((h8.a) it.next()).onRenderQuit();
            }
        }

        @Override // h8.a
        public void onRenderStart() {
            h8.a aVarJ = a.this.j();
            if (aVarJ != null) {
                aVarJ.onRenderStart();
            }
            Iterator it = a.this.f11340s.iterator();
            while (it.hasNext()) {
                ((h8.a) it.next()).onRenderStart();
            }
        }

        @Override // h8.a
        public void onStart() {
            h8.a aVarJ = a.this.j();
            if (aVarJ != null) {
                aVarJ.onStart();
            }
            Iterator it = a.this.f11340s.iterator();
            while (it.hasNext()) {
                ((h8.a) it.next()).onStart();
            }
        }
    }

    public static final class c implements h8.b {
        c() {
        }

        @Override // h8.b
        public void onUpdate(double d10) {
            a.this.o().f(d10);
        }
    }

    static final class d extends s implements w8.a {
        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            Iterator it = a.this.n().iterator();
            while (it.hasNext()) {
                ((BaseRenderer) it.next()).flush();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, i8.a options) {
        super(context);
        r.e(context, "context");
        r.e(options, "options");
        this.f11324c = context;
        this.f11325d = options;
        this.f11327f = new CopyOnWriteArrayList();
        this.f11334m = new HashMap();
        this.f11335n = new HashMap();
        this.f11336o = new ConcurrentHashMap();
        this.f11337p = new Object();
        this.f11338q = new com.oplus.vfxsdk.naive.parse.a();
        this.f11339r = new LinkedHashMap();
        this.f11340s = new ArrayList();
        this.f11341t = new b();
        this.f11342u = new t(new d());
        r();
    }

    private final void g() {
        A();
        Iterator it = this.f11327f.iterator();
        while (it.hasNext()) {
            ((BaseRenderer) it.next()).onDestroy();
        }
        this.f11327f.clear();
        this.f11341t.c();
    }

    private final void s(int i10) {
        C(new NativeEngine(i10));
        String strB = this.f11325d.b();
        if (strB != null) {
            l().setRenderThreadName(strB);
        }
        l().attachAssetManager(this.f11324c.getAssets());
        l().attachClassLoader(this.f11324c.getClassLoader());
        String[] strArrM = m();
        if (strArrM != null) {
            l().initEngine(strArrM);
        } else {
            l().initEngine();
        }
        t();
        this.f11341t.a();
    }

    public void A() {
        Log.i("VFX:COEEngine", "resetScene");
        l().resetScene();
    }

    public void B(String key, Animator.a mode) {
        r.e(key, "key");
        r.e(mode, "mode");
        Animator animatorI = i(key);
        if (animatorI == null) {
            return;
        }
        animatorI.setMAnimMode(mode);
    }

    protected final void C(NativeEngine nativeEngine) {
        r.e(nativeEngine, "<set-?>");
        this.f11326e = nativeEngine;
    }

    public void D(int i10) {
        l().setFPS(i10);
    }

    public void E() {
        l().startEngine();
        this.f11331j = true;
    }

    public void F() {
        l().stopEngine();
        this.f11331j = false;
    }

    public void G(String key) {
        r.e(key, "key");
        Animator animatorI = i(key);
        if (animatorI != null) {
            this.f11342u.h(animatorI);
            animatorI.stop();
        }
    }

    @Override // com.oplus.vfxsdk.common.l
    protected void c(COEData coeData, boolean z10, boolean z11) {
        r.e(coeData, "coeData");
        g();
        l().bindScene();
        int length = coeData.getLayers().length;
        for (int i10 = 0; i10 < length; i10++) {
            COERenderer cOERenderer = new COERenderer(l(), this.f11328g, this.f11329h, this.f11341t, coeData, i10, z11, new i(this.f11327f, this.f11335n, this.f11339r));
            this.f11327f.add(cOERenderer);
            l().addCallback(cOERenderer);
            for (RendPass rendPass : coeData.getLayers()[i10].getRender()) {
                Iterator<Map.Entry<String, Uniform>> it = rendPass.getUniforms().entrySet().iterator();
                while (it.hasNext()) {
                    n.f11283a.a(this.f11324c, this, cOERenderer, it.next().getValue());
                }
            }
            this.f11333l = coeData.getExpressions();
            if (coeData.getAnimParams() != null) {
                com.oplus.vfxsdk.naive.parse.a aVar = this.f11338q;
                CopyOnWriteArrayList copyOnWriteArrayList = this.f11327f;
                HashMap<String, AnimatorValue> animParams = coeData.getAnimParams();
                r.b(animParams);
                k kVar = this.f11333l;
                if (kVar == null) {
                    r.r("expression");
                    kVar = null;
                }
                aVar.b(copyOnWriteArrayList, animParams, kVar, new i(this.f11327f, this.f11335n, this.f11339r));
            }
            HashMap<String, Animator> animators = cOERenderer.getAnimators();
            if (animators != null) {
                for (Map.Entry<String, Animator> entry : animators.entrySet()) {
                    this.f11338q.c(cOERenderer.getLayer().getName() + "/" + ((Object) entry.getKey()), entry.getValue());
                }
            }
            cOERenderer.getLayer();
        }
        if (z10) {
            E();
        }
        this.f11341t.d();
        l().unbindScene();
        f(new c());
    }

    public void f(h8.b updateListener) {
        r.e(updateListener, "updateListener");
        BaseRenderer baseRendererP = p();
        if (baseRendererP != null) {
            baseRendererP.addUpdateListener(updateListener);
        }
    }

    public Texture h(TexCreateInfo createInfo) {
        Texture texture;
        r.e(createInfo, "createInfo");
        synchronized (this) {
            texture = new Texture(l(), createInfo);
        }
        return texture;
    }

    public Animator i(String name) {
        r.e(name, "name");
        Animator animatorA = this.f11338q.a(name);
        if (animatorA != null) {
            return animatorA;
        }
        for (BaseRenderer baseRenderer : this.f11327f) {
            HashMap<String, Animator> animators = baseRenderer.getAnimators();
            if (animators != null && animators.containsKey(name)) {
                HashMap<String, Animator> animators2 = baseRenderer.getAnimators();
                r.b(animators2);
                Animator animator = animators2.get(name);
                if (animator != null) {
                    return animator;
                }
            }
        }
        return null;
    }

    protected final h8.a j() {
        return this.f11330i;
    }

    public final Context k() {
        return this.f11324c;
    }

    protected final NativeEngine l() {
        NativeEngine nativeEngine = this.f11326e;
        if (nativeEngine != null) {
            return nativeEngine;
        }
        r.r("engine");
        return null;
    }

    public String[] m() {
        return null;
    }

    protected final CopyOnWriteArrayList n() {
        return this.f11327f;
    }

    public final t o() {
        return this.f11342u;
    }

    public BaseRenderer p() {
        return q(0);
    }

    public BaseRenderer q(int i10) {
        return (BaseRenderer) o.T(this.f11327f, i10);
    }

    public void r() {
        s(this.f11325d.a());
    }

    public final void t() {
    }

    public void u() {
        this.f11336o.clear();
        Iterator it = this.f11327f.iterator();
        while (it.hasNext()) {
            ((BaseRenderer) it.next()).onDestroy();
        }
        this.f11327f.clear();
        l().destroyEngine();
        this.f11341t.c();
        Log.d("VFX:COEEngine", "engine destroyed");
    }

    public void v(Surface surface, int i10, int i11) {
        r.e(surface, "surface");
        Log.d("VFX:COEEngine", "onSurfaceTextureAvailable");
        this.f11332k = surface;
        l().setSurface(surface);
        Iterator it = this.f11327f.iterator();
        while (it.hasNext()) {
            ((BaseRenderer) it.next()).onSizeChanged(i10, i11, this.f11328g, this.f11329h);
        }
        this.f11328g = i10;
        this.f11329h = i11;
    }

    public boolean w(Surface surface) {
        Log.d("VFX:COEEngine", "onSurfaceTextureDestroyed");
        this.f11332k = null;
        l().setSurface(null);
        return true;
    }

    public void x(Surface surface, int i10, int i11) {
        r.e(surface, "surface");
        Log.d("VFX:COEEngine", "onSurfaceTextureSizeChanged");
        if (this.f11328g == i10 && this.f11329h == i11) {
            return;
        }
        this.f11332k = surface;
        l().setSurface(surface);
        this.f11341t.b();
        Iterator it = this.f11327f.iterator();
        while (it.hasNext()) {
            ((BaseRenderer) it.next()).onSizeChanged(i10, i11, this.f11328g, this.f11329h);
        }
        this.f11328g = i10;
        this.f11329h = i11;
    }

    public void y(String key) {
        r.e(key, "key");
        Animator animatorI = i(key);
        if (animatorI != null) {
            animatorI.play(false);
            this.f11342u.c(animatorI);
        }
    }

    public void z(Texture texture) {
        r.e(texture, "texture");
        synchronized (this) {
            l().releaseObject(texture.getNativeHandle());
            h0 h0Var = h0.INSTANCE;
        }
    }

    public /* synthetic */ a(Context context, i8.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? new i8.a(0, null, 3, null) : aVar);
    }
}
