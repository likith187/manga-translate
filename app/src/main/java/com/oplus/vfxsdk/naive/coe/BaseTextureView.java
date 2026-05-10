package com.oplus.vfxsdk.naive.coe;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import com.oplus.vfxsdk.naive.R$attr;
import com.oplus.vfxsdk.naive.coe.engine.BaseRenderer;
import com.oplus.vfxsdk.naive.coe.engine.NativeEngine;
import com.oplus.vfxsdk.naive.coe.engine.RenderPass;
import com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo;
import com.oplus.vfxsdk.naive.coe.engine.Texture;
import com.oplus.vfxsdk.naive.coe.engine.a;
import f8.b;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseTextureView extends TextureView implements TextureView.SurfaceTextureListener, Application.ActivityLifecycleCallbacks {
    public static final a Companion = new a(null);
    public static final String TAG = "VFX:BaseTextureView";
    private boolean _autoGC;
    private boolean _autoStopWhenLock;
    private int _caps;
    private BaseRenderer _renderer;
    private h8.a coeEngineListener;
    private NativeEngine engine;
    private boolean isPlaying;
    private CopyOnWriteArrayList<BaseRenderer> layers;
    private final Handler mainHandler;
    private PowerManager powerManager;
    private BroadcastReceiver screenStateReceiver;
    private Surface surface;
    private int surfaceHeight;
    private int surfaceHeightLimit;
    private double surfaceSizeRadio;
    private SurfaceTexture surfaceTex;
    private int surfaceWidth;
    private int surfaceWidthLimit;
    private long textureViewInitTime;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseTextureView(Context context) {
        super(context);
        r.e(context, "context");
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.layers = new CopyOnWriteArrayList<>();
        this.surfaceSizeRadio = 1.0d;
        this._autoGC = true;
        this._autoStopWhenLock = true;
        d(context);
    }

    public static /* synthetic */ RenderPass createRenderPass$default(BaseTextureView baseTextureView, String str, String str2, int i10, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createRenderPass");
        }
        if ((i11 & 8) != 0) {
            z10 = false;
        }
        return baseTextureView.createRenderPass(str, str2, i10, z10);
    }

    public static /* synthetic */ Texture createTexture$default(BaseTextureView baseTextureView, String str, boolean z10, TexCreateInfo.WrapMode wrapMode, TexCreateInfo.FilterMode filterMode, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createTexture");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            wrapMode = TexCreateInfo.WrapMode.REPEAT;
        }
        if ((i10 & 8) != 0) {
            filterMode = TexCreateInfo.FilterMode.NEAREST;
        }
        return baseTextureView.createTexture(str, z10, wrapMode, filterMode);
    }

    private final void d(Context context) {
        this.textureViewInitTime = System.currentTimeMillis();
        Trace.beginSection("init");
        Log.d("COE_LOGGER", "VFX:BaseTextureView=>init");
        setSurfaceTextureListener(this);
        setOpaque(false);
        initEngine();
        this.powerManager = (PowerManager) context.getSystemService("power");
        this.screenStateReceiver = new BroadcastReceiver() { // from class: com.oplus.vfxsdk.naive.coe.BaseTextureView$init$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent != null ? intent.getAction() : null;
                if (action != null) {
                    int iHashCode = action.hashCode();
                    if (iHashCode == -2128145023) {
                        if (action.equals("android.intent.action.SCREEN_OFF")) {
                            Log.d("COE_LOGGER", "VFX:BaseTextureView=>screen is off");
                            if (this.f11345a.getAutoStopWhenLock()) {
                                Log.d("COE_LOGGER", "VFX:BaseTextureView=> auto stop");
                                this.f11345a.stop();
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (iHashCode != -1454123155) {
                        if (iHashCode != 823795052 || !action.equals("android.intent.action.USER_PRESENT")) {
                            return;
                        }
                    } else if (!action.equals("android.intent.action.SCREEN_ON")) {
                        return;
                    }
                    Log.d("COE_LOGGER", "VFX:BaseTextureView=>screen is on");
                    if (this.f11345a.getAutoStopWhenLock()) {
                        Log.d("COE_LOGGER", "VFX:BaseTextureView=> auto restart");
                        this.f11345a.start();
                        this.f11345a.refreshSurface();
                    }
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        context.registerReceiver(this.screenStateReceiver, intentFilter);
        if (context instanceof Activity) {
            Log.d("COE_LOGGER", "VFX:BaseTextureView=>registerActivityLifecycleCallbacks");
            ((Activity) context).registerActivityLifecycleCallbacks(this);
        }
        Trace.endSection();
        a.C0127a c0127a = com.oplus.vfxsdk.naive.coe.engine.a.f11363a;
        NativeEngine nativeEngine = this.engine;
        r.b(nativeEngine);
        b bVarA = c0127a.a(nativeEngine.getNativeHandle());
        if (bVarA != null) {
            bVarA.d((int) (System.currentTimeMillis() - this.textureViewInitTime));
            bVarA.h(this.textureViewInitTime);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(BaseTextureView this$0) {
        r.e(this$0, "this$0");
        this$0.refreshSurface();
    }

    private final void setAttrsValues(AttributeSet attributeSet) {
        if (attributeSet == null) {
            Log.d(TAG, "Don't set custom attribute");
            return;
        }
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            if (attributeSet.getAttributeNameResource(i10) == R$attr.caps) {
                setCaps(attributeSet.getAttributeIntValue(i10, 0));
            }
        }
        Log.d(TAG, "config: caps: " + getCaps());
    }

    public final RenderPass createRenderPass(String vertexFilePath, String fragmentFilePath, int i10, boolean z10) {
        r.e(vertexFilePath, "vertexFilePath");
        r.e(fragmentFilePath, "fragmentFilePath");
        NativeEngine nativeEngine = this.engine;
        if (nativeEngine != null) {
            return new RenderPass(nativeEngine.getNativeHandle(), vertexFilePath, fragmentFilePath, i10, z10);
        }
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.oplus.vfxsdk.naive.coe.engine.Texture createTexture(java.lang.String r8, boolean r9, com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo.WrapMode r10, com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo.FilterMode r11) {
        /*
            r7 = this;
            java.lang.String r0 = "fileName"
            kotlin.jvm.internal.r.e(r8, r0)
            java.lang.String r0 = "wrapMode"
            kotlin.jvm.internal.r.e(r10, r0)
            java.lang.String r0 = "filterMode"
            kotlin.jvm.internal.r.e(r11, r0)
            com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo r0 = new com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo
            r0.<init>()
            r0.setTexturePath(r8)
            r0.setFlipY(r9)
            r0.setWrapMode(r10)
            r0.setFilterMode(r11)
            r5 = 6
            r6 = 0
            java.lang.String r2 = "."
            r3 = 0
            r4 = 0
            r1 = r8
            int r9 = kotlin.text.r.c0(r1, r2, r3, r4, r5, r6)
            java.lang.String r9 = r8.substring(r9)
            java.lang.String r10 = "this as java.lang.String).substring(startIndex)"
            kotlin.jvm.internal.r.d(r9, r10)
            int r10 = r9.hashCode()
            java.lang.String r11 = "getContext(...)"
            switch(r10) {
                case 1475827: goto L6f;
                case 1481531: goto L66;
                case 45485903: goto L47;
                case 46127306: goto L3e;
                default: goto L3d;
            }
        L3d:
            goto L88
        L3e:
            java.lang.String r10 = ".webp"
            boolean r9 = r9.equals(r10)
            if (r9 != 0) goto L78
            goto L88
        L47:
            java.lang.String r10 = ".astc"
            boolean r9 = r9.equals(r10)
            if (r9 != 0) goto L50
            goto L88
        L50:
            com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo$PixelFormat r9 = com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo.PixelFormat.ASTC_6x6_LDR
            r0.setPixelFormat(r9)
            com.oplus.vfxsdk.common.h$a r9 = com.oplus.vfxsdk.common.h.f11274a
            android.content.Context r10 = r7.getContext()
            kotlin.jvm.internal.r.d(r10, r11)
            java.nio.ByteBuffer r8 = r9.b(r10, r8)
            r0.setRawBuffer(r8)
            goto L88
        L66:
            java.lang.String r10 = ".png"
            boolean r9 = r9.equals(r10)
            if (r9 == 0) goto L88
            goto L78
        L6f:
            java.lang.String r10 = ".jpg"
            boolean r9 = r9.equals(r10)
            if (r9 != 0) goto L78
            goto L88
        L78:
            com.oplus.vfxsdk.common.h$a r9 = com.oplus.vfxsdk.common.h.f11274a
            android.content.Context r10 = r7.getContext()
            kotlin.jvm.internal.r.d(r10, r11)
            android.graphics.Bitmap r8 = r9.a(r10, r8)
            r0.setBitmap(r8)
        L88:
            com.oplus.vfxsdk.naive.coe.engine.Texture r7 = r7.createTexture(r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.vfxsdk.naive.coe.BaseTextureView.createTexture(java.lang.String, boolean, com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo$WrapMode, com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo$FilterMode):com.oplus.vfxsdk.naive.coe.engine.Texture");
    }

    public final boolean getAutoGC() {
        return this._autoGC;
    }

    public final boolean getAutoStopWhenLock() {
        return this._autoStopWhenLock;
    }

    public final int getCaps() {
        return this._caps;
    }

    protected final h8.a getCoeEngineListener() {
        return this.coeEngineListener;
    }

    protected final NativeEngine getEngine() {
        return this.engine;
    }

    public String[] getFeatures() {
        return null;
    }

    protected final CopyOnWriteArrayList<BaseRenderer> getLayers() {
        return this.layers;
    }

    protected final Handler getMainHandler() {
        return this.mainHandler;
    }

    protected final BaseRenderer getRenderer() {
        return this._renderer;
    }

    protected final int getSurfaceHeight() {
        return this.surfaceHeight;
    }

    protected final int getSurfaceHeightLimit() {
        return this.surfaceHeightLimit;
    }

    protected final double getSurfaceSizeRadio() {
        return this.surfaceSizeRadio;
    }

    protected final int getSurfaceWidth() {
        return this.surfaceWidth;
    }

    protected final int getSurfaceWidthLimit() {
        return this.surfaceWidthLimit;
    }

    public void initEngine() {
        synchronized (this) {
            try {
                if (this.engine == null) {
                    Trace.beginSection("initEngine");
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    NativeEngine nativeEngine = new NativeEngine(getCaps());
                    this.engine = nativeEngine;
                    nativeEngine.attachAssetManager(getContext().getAssets());
                    NativeEngine nativeEngine2 = this.engine;
                    if (nativeEngine2 != null) {
                        nativeEngine2.attachClassLoader(getContext().getClassLoader());
                    }
                    String[] features = getFeatures();
                    if (features != null) {
                        NativeEngine nativeEngine3 = this.engine;
                        if (nativeEngine3 != null) {
                            nativeEngine3.initEngine(features);
                        }
                    } else {
                        NativeEngine nativeEngine4 = this.engine;
                        if (nativeEngine4 != null) {
                            nativeEngine4.initEngine();
                        }
                    }
                    initRenderer();
                    h8.a aVar = this.coeEngineListener;
                    if (aVar != null) {
                        aVar.a();
                    }
                    Log.d("COE_LOGGER", "VFX:BaseTextureView=>engine init");
                    if (this.surface != null) {
                        NativeEngine nativeEngine5 = this.engine;
                        if (nativeEngine5 != null) {
                            nativeEngine5.setViewport(this.surfaceWidth, this.surfaceHeight);
                        }
                        NativeEngine nativeEngine6 = this.engine;
                        if (nativeEngine6 != null) {
                            nativeEngine6.setSurface(this.surface);
                        }
                        Iterator<T> it = this.layers.iterator();
                        while (it.hasNext()) {
                            ((BaseRenderer) it.next()).onSizeChanged(this.surfaceWidth, this.surfaceHeight, getWidth(), getHeight());
                        }
                    }
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    a.C0127a c0127a = com.oplus.vfxsdk.naive.coe.engine.a.f11363a;
                    NativeEngine nativeEngine7 = this.engine;
                    r.b(nativeEngine7);
                    b bVarA = c0127a.a(nativeEngine7.getNativeHandle());
                    if (bVarA != null) {
                        NativeEngine nativeEngine8 = this.engine;
                        r.b(nativeEngine8);
                        bVarA.b(nativeEngine8.getNativeHandle());
                        bVarA.c((int) (jCurrentTimeMillis2 - jCurrentTimeMillis));
                    }
                    Trace.endSection();
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void initRenderer();

    public final boolean isPlaying() {
        return this.engine != null && this.isPlaying;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        r.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        r.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        r.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        r.e(activity, "activity");
        this.mainHandler.postDelayed(new Runnable() { // from class: com.oplus.vfxsdk.naive.coe.a
            @Override // java.lang.Runnable
            public final void run() {
                BaseTextureView.e(this.f11346a);
            }
        }, 16L);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        r.e(activity, "activity");
        r.e(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        r.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        r.e(activity, "activity");
    }

    public void onDestroy() {
        releaseEngine();
        try {
            getContext().unregisterReceiver(this.screenStateReceiver);
        } catch (Exception e10) {
            Log.d("COE_LOGGER", "VFX:BaseTextureView=>unregisterReceiver error: " + e10);
        }
        try {
            if (getContext() instanceof Activity) {
                Log.d("COE_LOGGER", "VFX:BaseTextureView=>unregisterActivityLifecycleCallbacks");
                Context context = getContext();
                Activity activity = context instanceof Activity ? (Activity) context : null;
                if (activity != null) {
                    activity.unregisterActivityLifecycleCallbacks(this);
                }
            }
        } catch (Exception e11) {
            Log.d("COE_LOGGER", "VFX:BaseTextureView=>unregisterActivityLifecycleCallbacks error: " + e11);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        Log.d("COE_LOGGER", "VFX:BaseTextureView=>onDetachedFromWindow");
        super.onDetachedFromWindow();
        if (getAutoGC()) {
            Log.d("COE_LOGGER", "VFX:BaseTextureView=>onDetachedFromWindow, do auto destroy");
            onDestroy();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        r.e(surfaceTexture, "surfaceTexture");
        Log.d("COE_LOGGER", "VFX:BaseTextureView=>onSurfaceTextureAvailable");
        this.surfaceWidthLimit = i10;
        this.surfaceHeightLimit = i11;
        this.surfaceTex = surfaceTexture;
        double d10 = this.surfaceSizeRadio;
        int i12 = (int) (((double) i10) * d10);
        this.surfaceWidth = i12;
        int i13 = (int) (((double) i11) * d10);
        this.surfaceHeight = i13;
        surfaceTexture.setDefaultBufferSize(i12, i13);
        this.surface = new Surface(surfaceTexture);
        NativeEngine nativeEngine = this.engine;
        if (nativeEngine != null) {
            nativeEngine.setViewport(this.surfaceWidth, this.surfaceHeight);
        }
        NativeEngine nativeEngine2 = this.engine;
        if (nativeEngine2 != null) {
            nativeEngine2.setSurface(this.surface);
        }
        NativeEngine nativeEngine3 = this.engine;
        if (nativeEngine3 != null) {
            nativeEngine3.setScreenSize(i10, i11);
        }
        a.C0127a c0127a = com.oplus.vfxsdk.naive.coe.engine.a.f11363a;
        NativeEngine nativeEngine4 = this.engine;
        r.b(nativeEngine4);
        b bVarA = c0127a.a(nativeEngine4.getNativeHandle());
        if (bVarA != null) {
            bVarA.g((int) (System.currentTimeMillis() - this.textureViewInitTime));
        }
        Iterator<T> it = this.layers.iterator();
        while (it.hasNext()) {
            ((BaseRenderer) it.next()).onSizeChanged(this.surfaceWidth, this.surfaceHeight, getWidth(), getHeight());
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
        r.e(surface, "surface");
        Log.d("COE_LOGGER", "VFX:BaseTextureView=>onSurfaceTextureDestroyed");
        NativeEngine nativeEngine = this.engine;
        if (nativeEngine != null) {
            nativeEngine.setSurface(null);
        }
        Surface surface2 = this.surface;
        if (surface2 != null) {
            surface2.release();
        }
        this.surface = null;
        SurfaceTexture surfaceTexture = this.surfaceTex;
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        this.surfaceTex = null;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        r.e(surfaceTexture, "surfaceTexture");
        Log.d("COE_LOGGER", "VFX:BaseTextureView=>onSurfaceTextureSizeChanged");
        if (this.surfaceWidthLimit == i10 && this.surfaceHeightLimit == i11) {
            return;
        }
        this.surfaceWidthLimit = i10;
        this.surfaceHeightLimit = i11;
        double d10 = this.surfaceSizeRadio;
        int i12 = (int) (((double) i10) * d10);
        this.surfaceWidth = i12;
        int i13 = (int) (((double) i11) * d10);
        this.surfaceHeight = i13;
        surfaceTexture.setDefaultBufferSize(i12, i13);
        this.surface = new Surface(surfaceTexture);
        NativeEngine nativeEngine = this.engine;
        if (nativeEngine != null) {
            nativeEngine.setViewport(this.surfaceWidth, this.surfaceHeight);
        }
        NativeEngine nativeEngine2 = this.engine;
        if (nativeEngine2 != null) {
            nativeEngine2.setSurface(this.surface);
        }
        NativeEngine nativeEngine3 = this.engine;
        if (nativeEngine3 != null) {
            nativeEngine3.setScreenSize(i10, i11);
        }
        h8.a aVar = this.coeEngineListener;
        if (aVar != null) {
            aVar.b();
        }
        Iterator<T> it = this.layers.iterator();
        while (it.hasNext()) {
            ((BaseRenderer) it.next()).onSizeChanged(this.surfaceWidth, this.surfaceHeight, getWidth(), getHeight());
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surface) {
        r.e(surface, "surface");
    }

    public final void refreshSurface() {
        SurfaceTexture surfaceTexture = this.surfaceTex;
        if (surfaceTexture == null || surfaceTexture == null) {
            return;
        }
        surfaceTexture.setDefaultBufferSize(this.surfaceWidth, this.surfaceHeight);
    }

    public Integer releaseEngine() {
        Integer numValueOf;
        synchronized (this) {
            try {
                numValueOf = null;
                if (this.engine != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    Iterator<T> it = this.layers.iterator();
                    while (it.hasNext()) {
                        ((BaseRenderer) it.next()).onDestroy();
                    }
                    this.layers.clear();
                    NativeEngine nativeEngine = this.engine;
                    if (nativeEngine != null) {
                        nativeEngine.destroyEngine();
                    }
                    a.C0127a c0127a = com.oplus.vfxsdk.naive.coe.engine.a.f11363a;
                    NativeEngine nativeEngine2 = this.engine;
                    r.b(nativeEngine2);
                    b bVarA = c0127a.a(nativeEngine2.getNativeHandle());
                    if (bVarA != null) {
                        bVarA.a((int) (System.currentTimeMillis() - jCurrentTimeMillis));
                    }
                    this.engine = null;
                    h8.a aVar = this.coeEngineListener;
                    if (aVar != null) {
                        aVar.c();
                    }
                    this.coeEngineListener = null;
                    numValueOf = Integer.valueOf(Log.d("COE_LOGGER", "VFX:BaseTextureView=>engine destroyed"));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return numValueOf;
    }

    public final void setAutoGC(boolean z10) {
        this._autoGC = z10;
    }

    public final void setAutoStopWhenLock(boolean z10) {
        this._autoStopWhenLock = z10;
    }

    public final void setCaps(int i10) {
        this._caps = i10;
    }

    protected final void setCoeEngineListener(h8.a aVar) {
        this.coeEngineListener = aVar;
    }

    protected final void setEngine(NativeEngine nativeEngine) {
        this.engine = nativeEngine;
    }

    public final void setEngineListener(h8.a aVar) {
        this.coeEngineListener = aVar;
        if (this.engine == null || aVar == null) {
            return;
        }
        aVar.a();
    }

    public final h0 setFPS(int i10) {
        h0 h0Var;
        synchronized (this) {
            NativeEngine nativeEngine = this.engine;
            if (nativeEngine != null) {
                nativeEngine.setFPS(i10);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
        }
        return h0Var;
    }

    protected final void setLayers(CopyOnWriteArrayList<BaseRenderer> copyOnWriteArrayList) {
        r.e(copyOnWriteArrayList, "<set-?>");
        this.layers = copyOnWriteArrayList;
    }

    protected final void setRenderer(BaseRenderer baseRenderer) {
        NativeEngine nativeEngine;
        this._renderer = baseRenderer;
        if (baseRenderer == null || (nativeEngine = this.engine) == null) {
            return;
        }
        nativeEngine.addCallback(baseRenderer);
    }

    protected final void setSurfaceHeight(int i10) {
        this.surfaceHeight = i10;
    }

    protected final void setSurfaceHeightLimit(int i10) {
        this.surfaceHeightLimit = i10;
    }

    public final void setSurfaceRatio(double d10) {
        this.surfaceSizeRadio = d10;
        SurfaceTexture surfaceTexture = this.surfaceTex;
        if (surfaceTexture != null) {
            int i10 = (int) (((double) this.surfaceWidthLimit) * d10);
            this.surfaceWidth = i10;
            int i11 = (int) (((double) this.surfaceHeightLimit) * d10);
            this.surfaceHeight = i11;
            if (surfaceTexture != null) {
                surfaceTexture.setDefaultBufferSize(i10, i11);
            }
            this.surface = new Surface(this.surfaceTex);
            NativeEngine nativeEngine = this.engine;
            if (nativeEngine != null) {
                nativeEngine.setViewport(this.surfaceWidth, this.surfaceHeight);
            }
            NativeEngine nativeEngine2 = this.engine;
            if (nativeEngine2 != null) {
                nativeEngine2.setSurface(this.surface);
            }
            Iterator<T> it = this.layers.iterator();
            while (it.hasNext()) {
                ((BaseRenderer) it.next()).onSizeChanged(this.surfaceWidth, this.surfaceHeight, getWidth(), getHeight());
            }
        }
    }

    protected final void setSurfaceSizeRadio(double d10) {
        this.surfaceSizeRadio = d10;
    }

    protected final void setSurfaceWidth(int i10) {
        this.surfaceWidth = i10;
    }

    protected final void setSurfaceWidthLimit(int i10) {
        this.surfaceWidthLimit = i10;
    }

    public final h0 start() {
        h0 h0Var;
        synchronized (this) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            NativeEngine nativeEngine = this.engine;
            h0Var = null;
            if (nativeEngine != null) {
                nativeEngine.startEngine();
                this.isPlaying = true;
                b bVarA = com.oplus.vfxsdk.naive.coe.engine.a.f11363a.a(nativeEngine.getNativeHandle());
                if (bVarA != null) {
                    bVarA.e((int) (System.currentTimeMillis() - jCurrentTimeMillis));
                    h0Var = h0.INSTANCE;
                }
            }
        }
        return h0Var;
    }

    public final h0 stop() {
        h0 h0Var;
        synchronized (this) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            NativeEngine nativeEngine = this.engine;
            h0Var = null;
            if (nativeEngine != null) {
                nativeEngine.stopEngine();
                this.isPlaying = false;
                b bVarA = com.oplus.vfxsdk.naive.coe.engine.a.f11363a.a(nativeEngine.getNativeHandle());
                if (bVarA != null) {
                    bVarA.f((int) (System.currentTimeMillis() - jCurrentTimeMillis));
                    h0Var = h0.INSTANCE;
                }
            }
        }
        return h0Var;
    }

    public static /* synthetic */ RenderPass createRenderPass$default(BaseTextureView baseTextureView, String str, String str2, ByteBuffer byteBuffer, int i10, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createRenderPass");
        }
        if ((i11 & 16) != 0) {
            z10 = false;
        }
        return baseTextureView.createRenderPass(str, str2, byteBuffer, i10, z10);
    }

    public final RenderPass createRenderPass(String vertexFilePath, String fragmentFilePath, ByteBuffer mesh, int i10, boolean z10) {
        r.e(vertexFilePath, "vertexFilePath");
        r.e(fragmentFilePath, "fragmentFilePath");
        r.e(mesh, "mesh");
        NativeEngine nativeEngine = this.engine;
        if (nativeEngine != null) {
            return new RenderPass(nativeEngine.getNativeHandle(), vertexFilePath, fragmentFilePath, i10, z10, mesh);
        }
        return null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseTextureView(Context context, int i10) {
        super(context);
        r.e(context, "context");
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.layers = new CopyOnWriteArrayList<>();
        this.surfaceSizeRadio = 1.0d;
        this._autoGC = true;
        this._autoStopWhenLock = true;
        setCaps(i10);
        d(context);
    }

    public final Texture createTexture(TexCreateInfo createInfo) {
        r.e(createInfo, "createInfo");
        synchronized (this) {
            NativeEngine nativeEngine = this.engine;
            if (nativeEngine == null) {
                return null;
            }
            return new Texture(nativeEngine, createInfo);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.layers = new CopyOnWriteArrayList<>();
        this.surfaceSizeRadio = 1.0d;
        this._autoGC = true;
        this._autoStopWhenLock = true;
        setAttrsValues(attributeSet);
        d(context);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseTextureView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        r.e(context, "context");
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.layers = new CopyOnWriteArrayList<>();
        this.surfaceSizeRadio = 1.0d;
        this._autoGC = true;
        this._autoStopWhenLock = true;
        setAttrsValues(attributeSet);
        d(context);
    }
}
