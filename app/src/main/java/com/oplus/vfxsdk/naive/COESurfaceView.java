package com.oplus.vfxsdk.naive;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public class COESurfaceView extends SurfaceView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f11317b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.oplus.vfxsdk.naive.a f11318a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements SurfaceHolder.Callback {
        b() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder holder, int i10, int i11, int i12) {
            r.e(holder, "holder");
            com.oplus.vfxsdk.naive.a engine = COESurfaceView.this.getEngine();
            Surface surface = holder.getSurface();
            r.d(surface, "getSurface(...)");
            engine.x(surface, i11, i12);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder holder) {
            r.e(holder, "holder");
            com.oplus.vfxsdk.naive.a engine = COESurfaceView.this.getEngine();
            Surface surface = holder.getSurface();
            r.d(surface, "getSurface(...)");
            engine.v(surface, holder.getSurfaceFrame().width(), holder.getSurfaceFrame().height());
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder holder) {
            r.e(holder, "holder");
            COESurfaceView.this.getEngine().w(holder.getSurface());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COESurfaceView(Context context) {
        super(context);
        r.e(context, "context");
        a();
    }

    public final void a() {
        getHolder().addCallback(new b());
    }

    public final com.oplus.vfxsdk.naive.a getEngine() {
        if (this.f11318a == null) {
            Context applicationContext = getContext().getApplicationContext();
            r.d(applicationContext, "getApplicationContext(...)");
            this.f11318a = new com.oplus.vfxsdk.naive.a(applicationContext, null, 2, 0 == true ? 1 : 0);
        }
        com.oplus.vfxsdk.naive.a aVar = this.f11318a;
        r.b(aVar);
        return aVar;
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.oplus.vfxsdk.naive.a aVar = this.f11318a;
        if (aVar != null) {
            aVar.u();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COESurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
        a();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COESurfaceView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        r.e(context, "context");
        a();
    }
}
