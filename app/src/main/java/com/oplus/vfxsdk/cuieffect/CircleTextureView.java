package com.oplus.vfxsdk.cuieffect;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.view.animation.PathInterpolator;
import com.oplus.vfxsdk.common.h;
import com.oplus.vfxsdk.common.o;
import com.oplus.vfxsdk.cuieffect.CircleTextureView;
import com.oplus.vfxsdk.naive.coe.BaseTextureView;
import com.oplus.vfxsdk.naive.coe.engine.BaseRenderer;
import com.oplus.vfxsdk.naive.coe.engine.Mesh;
import com.oplus.vfxsdk.naive.coe.engine.NativeEngine;
import com.oplus.vfxsdk.naive.coe.engine.Pass;
import com.oplus.vfxsdk.naive.coe.engine.TexCreateInfo;
import com.oplus.vfxsdk.naive.coe.engine.Texture;
import e8.e;
import e8.f;
import e8.g;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ViewConstructor"})
public class CircleTextureView extends BaseTextureView implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f11310a;

    public final class a extends BaseRenderer {
        /* JADX WARN: Illegal instructions before constructor call */
        public a() {
            NativeEngine engine = CircleTextureView.this.getEngine();
            r.b(engine);
            super(engine, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(a this$0, CircleTextureView this$1) {
            r.e(this$0, "this$0");
            r.e(this$1, "this$1");
            Trace.beginSection("circleTextureOnStart");
            super.onStart();
            Log.d(BaseRenderer.TAG, "onStart");
            this$0.getNativeRenderer().m(new Mesh(this$0.getEngine(), Mesh.f11350a));
            Pass pass = new Pass(this$0.getEngine(), "circle/shaders/pass0.vs", "circle/shaders/pass0.fs", Boolean.FALSE, 0);
            BaseRenderer renderer = this$1.getRenderer();
            if (renderer != null) {
                renderer.addPass(pass);
            }
            NativeEngine engine = this$0.getEngine();
            TexCreateInfo texCreateInfo = new TexCreateInfo();
            texCreateInfo.setPixelFormat(TexCreateInfo.PixelFormat.ASTC_6x6_LDR);
            h.a aVar = h.f11274a;
            Context context = this$1.getContext();
            r.d(context, "getContext(...)");
            texCreateInfo.setRawBuffer(aVar.b(context, "colorful8x8.astc"));
            pass.setParameter("iChannel0", new Texture(engine, texCreateInfo));
            pass.setParameter("rect_margin", Float.valueOf(200.0f));
            pass.setParameter("rect_padding", Float.valueOf(1.0f));
            pass.setParameter("rect_base_scale", Float.valueOf(0.65f));
            pass.setParameter("rect_padding_alpha", Float.valueOf(0.6f));
            pass.setParameter("rect_corner", Float.valueOf(20.0f), Float.valueOf(80.0f));
            pass.setParameter("rect_size", Float.valueOf(384.0f), Float.valueOf(96.0f));
            pass.setParameter("rect_center", Float.valueOf(0.5f), Float.valueOf(0.5f));
            pass.setParameter("rect_progress", Float.valueOf(0.0f));
            pass.setParameter("rect_padding_zoom_in", Float.valueOf(0.3f), Float.valueOf(0.0f), Float.valueOf(0.1f), Float.valueOf(1.0f));
            pass.setParameter("rect_padding_zoom_out", Float.valueOf(0.3f), Float.valueOf(0.0f), Float.valueOf(0.1f), Float.valueOf(1.0f));
            pass.setParameter("rect_zoom_in_speed", Float.valueOf(1.0f));
            pass.setParameter("rect_zoom_out_speed", Float.valueOf(1.0f));
            pass.setParameter("color_speed", Float.valueOf(0.7f), Float.valueOf(0.9f), Float.valueOf(0.6f), Float.valueOf(-0.7f));
            pass.setParameter("color_shake_speed", Float.valueOf(1.5f), Float.valueOf(1.3f), Float.valueOf(1.8f), Float.valueOf(-1.0f));
            pass.setParameter("color_scale", Float.valueOf(1.2f));
            pass.setParameter("color_alpha", Float.valueOf(0.25f));
            pass.setParameter("color_shake_displacement", Float.valueOf(0.03f), Float.valueOf(0.02f));
            pass.setParameter("selected", 0);
            pass.setParameter("u_resolution", Float.valueOf(this$1.getWidth()), Float.valueOf(this$1.getHeight()));
            pass.setParameter("u_surfScreenRatio", Float.valueOf(1.0f));
            pass.setParameter("fadeInOutProgress", Float.valueOf(1.0f));
            pass.setParameter("fadeInOutMargin", Float.valueOf(1.8f));
            h8.a coeEngineListener = this$1.getCoeEngineListener();
            if (coeEngineListener != null) {
                coeEngineListener.onStart();
            }
            Trace.endSection();
        }

        @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer
        public void onSizeChanged(int i10, int i11, int i12, int i13) {
            super.onSizeChanged(i10, i11, i12, i13);
            Pass pass = getPass(0);
            if (pass != null) {
                pass.setParameter("u_surfScreenRatio", Float.valueOf((i10 * 1.0f) / CircleTextureView.this.getWidth()));
            }
        }

        @Override // com.oplus.vfxsdk.naive.coe.engine.BaseRenderer, com.oplus.vfxsdk.naive.coe.engine.NativeCallback
        public void onStart() {
            Handler handler = new Handler(Looper.getMainLooper());
            final CircleTextureView circleTextureView = CircleTextureView.this;
            handler.post(new Runnable() { // from class: g8.a
                @Override // java.lang.Runnable
                public final void run() {
                    CircleTextureView.a.b(this.f12118a, circleTextureView);
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleTextureView(Context context) {
        super(context);
        r.e(context, "context");
        this.f11310a = new g(new f("rect_progress", Float.valueOf(0.0f), new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f), 333L, 0L, null, 48, null), this);
    }

    @Override // e8.e
    public void a(o oVar, String str, Object obj, int i10) {
        e.a.a(this, oVar, str, obj, i10);
    }

    @Override // e8.e
    public void b(String key, Object value) {
        BaseRenderer renderer;
        Pass pass;
        r.e(key, "key");
        r.e(value, "value");
        if (getEngine() == null || (renderer = getRenderer()) == null || (pass = renderer.getPass(0)) == null) {
            return;
        }
        pass.setParameter(key, value);
    }

    public final g getProcessParameter() {
        return this.f11310a;
    }

    @Override // com.oplus.vfxsdk.naive.coe.BaseTextureView
    public void initRenderer() {
        setRenderer(new a());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
        this.f11310a = new g(new f("rect_progress", Float.valueOf(0.0f), new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f), 333L, 0L, null, 48, null), this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleTextureView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        r.e(context, "context");
        this.f11310a = new g(new f("rect_progress", Float.valueOf(0.0f), new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f), 333L, 0L, null, 48, null), this);
    }
}
