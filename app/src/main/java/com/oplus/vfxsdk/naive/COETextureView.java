package com.oplus.vfxsdk.naive;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public class COETextureView extends TextureView implements TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f11320c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.oplus.vfxsdk.naive.a f11321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Surface f11322b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COETextureView(Context context) {
        super(context);
        r.e(context, "context");
        a();
    }

    public final void a() {
        setSurfaceTextureListener(this);
        setOpaque(false);
        Context applicationContext = getContext().getApplicationContext();
        r.d(applicationContext, "getApplicationContext(...)");
        this.f11321a = new com.oplus.vfxsdk.naive.a(applicationContext, null, 2, 0 == true ? 1 : 0);
    }

    public final com.oplus.vfxsdk.naive.a getEngine() {
        com.oplus.vfxsdk.naive.a aVar = this.f11321a;
        r.b(aVar);
        return aVar;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.oplus.vfxsdk.naive.a aVar = this.f11321a;
        if (aVar != null) {
            aVar.u();
        }
        this.f11321a = null;
        Surface surface = this.f11322b;
        if (surface != null) {
            surface.release();
        }
        this.f11322b = null;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture p02, int i10, int i11) {
        r.e(p02, "p0");
        Surface surface = this.f11322b;
        if (surface != null) {
            surface.release();
        }
        Surface surface2 = new Surface(p02);
        this.f11322b = surface2;
        com.oplus.vfxsdk.naive.a aVar = this.f11321a;
        if (aVar != null) {
            r.b(surface2);
            aVar.v(surface2, i10, i11);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture p02) {
        r.e(p02, "p0");
        com.oplus.vfxsdk.naive.a aVar = this.f11321a;
        if (aVar != null) {
            Surface surface = this.f11322b;
            r.b(surface);
            aVar.w(surface);
        }
        Surface surface2 = this.f11322b;
        if (surface2 != null) {
            surface2.release();
        }
        this.f11322b = null;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture p02, int i10, int i11) {
        r.e(p02, "p0");
        Surface surface = this.f11322b;
        if (surface != null) {
            surface.release();
        }
        Surface surface2 = new Surface(p02);
        this.f11322b = surface2;
        com.oplus.vfxsdk.naive.a aVar = this.f11321a;
        if (aVar != null) {
            r.b(surface2);
            aVar.x(surface2, i10, i11);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture p02) {
        r.e(p02, "p0");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COETextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
        a();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COETextureView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        r.e(context, "context");
        a();
    }
}
