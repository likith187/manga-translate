package com.oplus.vfxsdk.cuieffect;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.TextureView;
import com.oplus.vfxsdk.naive.coe.BaseTextureView;
import com.oplus.vfxsdk.naive.coe.engine.BaseRenderer;
import com.oplus.vfxsdk.naive.coe.engine.NativeEngine;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public class PaintTextureView extends BaseTextureView implements TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f11312a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaintTextureView(Context context) {
        super(context);
        r.e(context, "context");
    }

    @Override // com.oplus.vfxsdk.naive.coe.BaseTextureView
    public String[] getFeatures() {
        return new String[]{"PaintSystem"};
    }

    @Override // com.oplus.vfxsdk.naive.coe.BaseTextureView
    public void initRenderer() {
        NativeEngine engine = getEngine();
        r.b(engine);
        setRenderer(new BaseRenderer(engine, 0));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        r.e(event, "event");
        NativeEngine engine = getEngine();
        if (engine == null) {
            return true;
        }
        engine.touchEvent(event.getAction(), event.getX(), event.getY());
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaintTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaintTextureView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        r.e(context, "context");
    }
}
