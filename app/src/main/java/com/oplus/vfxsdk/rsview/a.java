package com.oplus.vfxsdk.rsview;

import android.graphics.RuntimeShader;
import android.util.Log;
import com.oplus.vfxsdk.common.COEData;
import com.oplus.vfxsdk.common.Layer;
import com.oplus.vfxsdk.common.RendPass;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends o {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final C0130a f11408w = new C0130a(null);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private HashMap f11409s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private RuntimeShader f11410t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private a f11411u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final n8.j f11412v;

    /* JADX INFO: renamed from: com.oplus.vfxsdk.rsview.a$a, reason: collision with other inner class name */
    public static final class C0130a {
        public /* synthetic */ C0130a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0130a() {
        }
    }

    static final class b extends s implements w8.a {
        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final HashMap<String, com.oplus.vfxsdk.common.o> mo8invoke() {
            Object obj = a.this.r().get(0);
            r.b(obj);
            return (HashMap) obj;
        }
    }

    public /* synthetic */ a(COEData cOEData, int i10, p pVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(cOEData, (i11 & 2) != 0 ? 0 : i10, pVar);
    }

    private final HashMap h0() {
        return (HashMap) this.f11412v.getValue();
    }

    private final void i0() {
        this.f11409s = e0(h0());
    }

    @Override // com.oplus.vfxsdk.rsview.o
    public void Y() {
        Layer layer;
        RendPass[] render;
        Layer layer2;
        RendPass[] render2;
        Log.i("COE_LOGGER", X() + "=>load start");
        COEData cOEDataL = l();
        r.b(cOEDataL);
        Layer[] layers = cOEDataL.getLayers();
        Integer numValueOf = (layers == null || (layer2 = (Layer) kotlin.collections.i.H(layers, 0)) == null || (render2 = layer2.getRender()) == null) ? null : Integer.valueOf(render2.length);
        if (numValueOf != null) {
            numValueOf.intValue();
        }
        COEData cOEDataL2 = l();
        r.b(cOEDataL2);
        Layer[] layers2 = cOEDataL2.getLayers();
        if (layers2 == null || (layer = (Layer) kotlin.collections.i.H(layers2, 0)) == null || (render = layer.getRender()) == null) {
            return;
        }
        for (RendPass rendPass : render) {
            Log.i("COE_LOGGER", X() + "=>translate start");
            Log.d(X(), "haitest options:" + T());
            this.f11410t = P(rendPass, T());
        }
    }

    public final HashMap e0(HashMap map) {
        r.e(map, "<this>");
        HashMap map2 = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            com.oplus.vfxsdk.common.o oVarB = ((com.oplus.vfxsdk.common.o) entry.getValue()).b();
            r.c(oVarB, "null cannot be cast to non-null type V of com.oplus.vfxsdk.rsview.AnimatorEffectShader.deepCopy$lambda$2$lambda$1");
            map2.put(key, oVarB);
        }
        return map2;
    }

    @Override // com.oplus.vfxsdk.common.q
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public a getAnimator() {
        return this.f11411u;
    }

    public final RuntimeShader g0() {
        return this.f11410t;
    }

    public void j0() {
        d0(g0(), h0());
    }

    @Override // com.oplus.vfxsdk.common.a
    public com.oplus.vfxsdk.common.o q(String uniformName) {
        r.e(uniformName, "uniformName");
        return (com.oplus.vfxsdk.common.o) h0().get(uniformName);
    }

    @Override // com.oplus.vfxsdk.common.a
    public void y(String stateKey, boolean z10, w8.a aVar) {
        r.e(stateKey, "stateKey");
        super.y(stateKey, z10, aVar);
        if (j() == com.oplus.vfxsdk.common.g.Animator) {
            i0();
        }
        K(com.oplus.vfxsdk.common.g.Slot);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(COEData coeData, int i10, p options) {
        super(coeData, i10, options);
        r.e(coeData, "coeData");
        r.e(options, "options");
        this.f11409s = new HashMap();
        this.f11411u = this;
        this.f11412v = n8.k.b(new b());
        Q();
    }
}
