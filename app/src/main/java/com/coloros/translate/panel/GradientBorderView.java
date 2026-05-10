package com.coloros.translate.panel;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.view.View;
import com.coloros.translate.base.R$dimen;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class GradientBorderView extends View {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f5345k = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f5346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f5347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f5348c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Matrix f5349f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f5350h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int[] f5351i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float[] f5352j;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public GradientBorderView(Context context) {
        super(context);
        this.f5346a = new Paint(1);
        this.f5347b = new Path();
        this.f5348c = new RectF();
        this.f5349f = new Matrix();
        this.f5350h = getContext().getResources().getDimension(R$dimen.common_dp_24);
        this.f5351i = new int[]{Color.parseColor("#10BFF7"), Color.parseColor("#4A86FF"), Color.parseColor("#C25DFF"), Color.parseColor("#FF6536"), Color.parseColor("#FFC219"), Color.parseColor("#29E549"), Color.parseColor("#10BFF7")};
        this.f5352j = new float[]{0.125f, 0.25f, 0.375f, 0.48f, 0.7f, 0.9f, 1.0f};
        a();
    }

    private final void a() {
        this.f5346a.setStyle(Paint.Style.STROKE);
        this.f5346a.setStrokeWidth(getResources().getDimension(R$dimen.common_dp_1));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        r.e(canvas, "canvas");
        super.onDraw(canvas);
        float width = getWidth();
        float f10 = width / 2.0f;
        float height = getHeight();
        float f11 = height / 2.0f;
        this.f5349f.reset();
        this.f5349f.preRotate(0.0f, f10, f11);
        SweepGradient sweepGradient = new SweepGradient(f10, f11, this.f5351i, this.f5352j);
        sweepGradient.setLocalMatrix(this.f5349f);
        this.f5346a.setShader(sweepGradient);
        float strokeWidth = this.f5346a.getStrokeWidth() / 2;
        this.f5348c.set(strokeWidth, strokeWidth, width - strokeWidth, height - strokeWidth);
        this.f5347b.reset();
        Path path = this.f5347b;
        RectF rectF = this.f5348c;
        float f12 = this.f5350h;
        path.addRoundRect(rectF, f12, f12, Path.Direction.CW);
        canvas.drawPath(this.f5347b, this.f5346a);
    }

    public GradientBorderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5346a = new Paint(1);
        this.f5347b = new Path();
        this.f5348c = new RectF();
        this.f5349f = new Matrix();
        this.f5350h = getContext().getResources().getDimension(R$dimen.common_dp_24);
        this.f5351i = new int[]{Color.parseColor("#10BFF7"), Color.parseColor("#4A86FF"), Color.parseColor("#C25DFF"), Color.parseColor("#FF6536"), Color.parseColor("#FFC219"), Color.parseColor("#29E549"), Color.parseColor("#10BFF7")};
        this.f5352j = new float[]{0.125f, 0.25f, 0.375f, 0.48f, 0.7f, 0.9f, 1.0f};
        a();
    }
}
