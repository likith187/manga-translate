package com.oplus.vfxsdk.naive.coe.engine;

import androidx.annotation.Keep;
import com.oplus.vfxsdk.common.Animator;
import com.oplus.vfxsdk.common.Layer;
import com.oplus.vfxsdk.common.PassParams;
import com.oplus.vfxsdk.common.o;
import com.oplus.vfxsdk.common.q;
import com.oplus.vfxsdk.naive.coe.engine.Event.Event;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class BaseRenderer implements NativeCallback, q {
    public static final a Companion = new a(null);
    public static final String TAG = "BaseRenderer";
    private com.oplus.vfxsdk.common.a animator;
    private int blendDstFactor;
    private boolean blendEnable;
    private int blendSrcFactor;
    private boolean enable;
    private final NativeEngine engine;
    public Layer layer;
    private int layerOrder;
    private NativeRenderer nativeRenderer;
    private ArrayList<RenderPass> passList;
    private int sortingOrder;
    private final ArrayList<h8.b> updateListenerArray;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public BaseRenderer(NativeEngine engine, int i10) {
        r.e(engine, "engine");
        this.engine = engine;
        this.sortingOrder = i10;
        this.updateListenerArray = new ArrayList<>();
        this.nativeRenderer = new NativeRenderer(engine, this.sortingOrder);
        this.passList = new ArrayList<>();
        this.enable = true;
        this.blendSrcFactor = 770;
        this.blendDstFactor = 771;
    }

    private final o getChannelData(int i10, String str) {
        o oVarP;
        com.oplus.vfxsdk.common.a animator = getAnimator();
        if (animator == null || (oVarP = animator.p(i10, str)) == null) {
            return null;
        }
        return oVarP;
    }

    protected static /* synthetic */ void getPassList$annotations() {
    }

    public final void addComponent(NativeObject component) {
        r.e(component, "component");
        this.nativeRenderer.a(component);
    }

    public final int addPass(Pass pass) {
        r.e(pass, "pass");
        if (this.nativeRenderer.d() == null) {
            return 0;
        }
        return this.nativeRenderer.d().d(pass);
    }

    public final void addUpdateListener(h8.b updateListener) {
        r.e(updateListener, "updateListener");
        if (this.updateListenerArray.contains(updateListener)) {
            return;
        }
        this.updateListenerArray.add(updateListener);
    }

    public final void flush() {
        this.nativeRenderer.d().e();
    }

    public List<String> getAllTrigerState() {
        return null;
    }

    public HashMap<String, PassParams[]> getAllTrigers() {
        return q.a.a(this);
    }

    @Override // com.oplus.vfxsdk.common.q
    public com.oplus.vfxsdk.common.a getAnimator() {
        return this.animator;
    }

    public HashMap<String, Animator> getAnimators() {
        return q.a.b(this);
    }

    public final int getBlendDstFactor() {
        return this.blendDstFactor;
    }

    public final boolean getBlendEnable() {
        return this.blendEnable;
    }

    public final int getBlendSrcFactor() {
        return this.blendSrcFactor;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    public final NativeEngine getEngine() {
        return this.engine;
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public int getID() {
        return 0;
    }

    public final Layer getLayer() {
        Layer layer = this.layer;
        if (layer != null) {
            return layer;
        }
        r.r("layer");
        return null;
    }

    public final int getLayerOrder() {
        return this.layerOrder;
    }

    public final Material getMaterial() {
        return this.nativeRenderer.d();
    }

    public final Mesh getMesh() {
        return this.nativeRenderer.e();
    }

    public final NativeRenderer getNativeRenderer() {
        return this.nativeRenderer;
    }

    public Pass getPass(int i10) {
        if (this.nativeRenderer.d() == null) {
            return null;
        }
        return this.nativeRenderer.d().f(i10);
    }

    protected final ArrayList<RenderPass> getPassList() {
        return this.passList;
    }

    public final PostProcessor getPostProcessor() {
        return this.nativeRenderer.f();
    }

    public final int getSortingOrder() {
        return this.sortingOrder;
    }

    public final Transform getTransform() {
        return this.nativeRenderer.g();
    }

    public PassParams[] getTriger(String str) {
        return q.a.c(this, str);
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public void onAnimEnd(String key) {
        r.e(key, "key");
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public void onAnimStart(String key) {
        r.e(key, "key");
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public void onAnimUpdate(String key, double d10, float... values) {
        r.e(key, "key");
        r.e(values, "values");
    }

    public void onDestroy() {
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public void onEvent(Event event) {
    }

    public void onLayoutChange() {
    }

    public void onSizeChanged(int i10, int i11, int i12, int i13) {
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public void onStart() {
    }

    public void onSurfaceChange(float f10, float f11) {
    }

    public void onTriger(String str, boolean z10, w8.a aVar) {
        q.a.d(this, str, z10, aVar);
    }

    @Override // com.oplus.vfxsdk.naive.coe.engine.NativeCallback
    public void onUpdate(double d10) {
        Iterator<h8.b> it = this.updateListenerArray.iterator();
        while (it.hasNext()) {
            it.next().onUpdate(d10);
        }
    }

    public void pauseAnim(String str) {
        q.a.e(this, str);
    }

    public void playAnim(String str) {
        q.a.f(this, str);
    }

    public void playAnimTo(String str, float f10) {
        q.a.g(this, str, f10);
    }

    public final void removeComponent(NativeObject component) {
        r.e(component, "component");
        this.nativeRenderer.h(component);
    }

    public final void removeUpdateListener(h8.b updateListener) {
        r.e(updateListener, "updateListener");
        if (this.updateListenerArray.contains(updateListener)) {
            this.updateListenerArray.remove(updateListener);
        }
    }

    public void restartAnim(String str) {
        q.a.h(this, str);
    }

    public void seekAnimNext(String str) {
        q.a.i(this, str);
    }

    public void seekAnimTo(String str, float f10) {
        q.a.j(this, str, f10);
    }

    public void setAnimEndListener(String str, w8.a aVar) {
        q.a.k(this, str, aVar);
    }

    public void setAnimMode(String str, Animator.a aVar) {
        q.a.l(this, str, aVar);
    }

    public void setAnimUpdateListener(String str, l lVar) {
        q.a.m(this, str, lVar);
    }

    public void setAnimator(com.oplus.vfxsdk.common.a aVar) {
        this.animator = aVar;
    }

    public final void setBlendDstFactor(int i10) {
        this.blendDstFactor = i10;
        this.nativeRenderer.setBlendDstFactor(i10);
    }

    public final void setBlendEnable(boolean z10) {
        this.blendEnable = z10;
        this.nativeRenderer.enableBlend(z10);
    }

    public final void setBlendSrcFactor(int i10) {
        this.blendSrcFactor = i10;
        this.nativeRenderer.setBlendSrcFactor(i10);
    }

    public final void setEnable(boolean z10) {
        this.enable = z10;
        this.nativeRenderer.k(z10);
    }

    public final void setLayer(Layer layer) {
        r.e(layer, "<set-?>");
        this.layer = layer;
    }

    public final void setLayerOrder(int i10) {
        this.layerOrder = i10;
        this.nativeRenderer.setSortingOrder(i10);
    }

    public final void setMaterial(Material material) {
        r.e(material, "material");
        this.nativeRenderer.l(material);
    }

    public final void setMesh(Mesh mesh) {
        r.e(mesh, "mesh");
        this.nativeRenderer.m(mesh);
    }

    public final void setNativeRenderer(NativeRenderer nativeRenderer) {
        r.e(nativeRenderer, "<set-?>");
        this.nativeRenderer = nativeRenderer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> void setParameter(int i10, String paraName, boolean z10, T... values) {
        r.e(paraName, "paraName");
        r.e(values, "values");
        synchronized (this) {
            try {
                if (this.nativeRenderer.d() == null) {
                    return;
                }
                this.nativeRenderer.d().h(i10, paraName, Arrays.copyOf(values, values.length));
                o channelData = getChannelData(i10, paraName);
                if (channelData != null) {
                    int i11 = 0;
                    if (values.length == 1) {
                        Object[] objArr = values[0];
                        r.c(objArr, "null cannot be cast to non-null type kotlin.Any");
                        channelData.n(objArr);
                    } else {
                        Object[] objArr2 = values[0];
                        if (objArr2 instanceof Integer) {
                            int[] iArr = new int[values.length];
                            int length = values.length;
                            while (i11 < length) {
                                Object[] objArr3 = values[i11];
                                r.c(objArr3, "null cannot be cast to non-null type kotlin.Int");
                                iArr[i11] = ((Integer) objArr3).intValue();
                                i11++;
                            }
                            channelData.n(iArr);
                        } else if (objArr2 instanceof Float) {
                            float[] fArr = new float[values.length];
                            int length2 = values.length;
                            while (i11 < length2) {
                                Object[] objArr4 = values[i11];
                                r.c(objArr4, "null cannot be cast to non-null type kotlin.Float");
                                fArr[i11] = ((Float) objArr4).floatValue();
                                i11++;
                            }
                            channelData.n(fArr);
                        }
                    }
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <T> void setParameterCache(int i10, String paraName, boolean z10, T... values) {
        r.e(paraName, "paraName");
        r.e(values, "values");
        synchronized (this) {
            this.nativeRenderer.d().i(i10, paraName, Arrays.copyOf(values, values.length));
            h0 h0Var = h0.INSTANCE;
        }
    }

    protected final void setPassList(ArrayList<RenderPass> arrayList) {
        r.e(arrayList, "<set-?>");
        this.passList = arrayList;
    }

    public final void setPostProcessor(PostProcessor postProcessor) {
        r.e(postProcessor, "postProcessor");
        this.nativeRenderer.o(postProcessor);
    }

    public final void setSortingOrder(int i10) {
        this.sortingOrder = i10;
    }

    public final void setTransform(Transform transform) {
        r.e(transform, "transform");
        this.nativeRenderer.p(transform);
    }

    public final void updateMesh(ByteBuffer obj) {
        r.e(obj, "obj");
        synchronized (this) {
            if (this.nativeRenderer.e() == null) {
                return;
            }
            this.nativeRenderer.e().updateMesh(obj);
            h0 h0Var = h0.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> void setParameter(int i10, String paraName, T... values) {
        r.e(paraName, "paraName");
        r.e(values, "values");
        synchronized (this) {
            setParameter(i10, paraName, false, Arrays.copyOf(values, values.length));
            h0 h0Var = h0.INSTANCE;
        }
    }
}
