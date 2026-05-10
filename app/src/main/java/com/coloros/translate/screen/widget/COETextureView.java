package com.coloros.translate.screen.widget;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class COETextureView extends TextureView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f5732b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.oplus.vfxsdk.naive.a f5733a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements TextureView.SurfaceTextureListener {
        b() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surface, int i10, int i11) {
            kotlin.jvm.internal.r.e(surface, "surface");
            COETextureView.this.getEngine().v(new Surface(surface), i10, i11);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
            kotlin.jvm.internal.r.e(surface, "surface");
            COETextureView.this.getEngine().w(new Surface(surface));
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int i10, int i11) {
            kotlin.jvm.internal.r.e(surface, "surface");
            COETextureView.this.getEngine().x(new Surface(surface), i10, i11);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surface) {
            kotlin.jvm.internal.r.e(surface, "surface");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COETextureView(Context context) {
        super(context);
        kotlin.jvm.internal.r.e(context, "context");
        a();
    }

    public final void a() {
        setSurfaceTextureListener(new b());
    }

    public final com.oplus.vfxsdk.naive.a getEngine() {
        if (this.f5733a == null) {
            Context applicationContext = getContext().getApplicationContext();
            kotlin.jvm.internal.r.d(applicationContext, "getApplicationContext(...)");
            this.f5733a = new com.oplus.vfxsdk.naive.a(applicationContext, null, 2, null);
        }
        com.oplus.vfxsdk.naive.a aVar = this.f5733a;
        kotlin.jvm.internal.r.b(aVar);
        return aVar;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.oplus.vfxsdk.naive.a aVar = this.f5733a;
        if (aVar != null) {
            aVar.u();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COETextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        kotlin.jvm.internal.r.e(context, "context");
        a();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COETextureView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        kotlin.jvm.internal.r.e(context, "context");
        a();
    }
}
