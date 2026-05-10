package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TypedValue f709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TypedValue f710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TypedValue f711c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TypedValue f712f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TypedValue f713h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TypedValue f714i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Rect f715j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private a f716k;

    public interface a {
        void a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public void a(int i10, int i11, int i12, int i13) {
        this.f715j.set(i10, i11, i12, i13);
        if (isLaidOut()) {
            requestLayout();
        }
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f713h == null) {
            this.f713h = new TypedValue();
        }
        return this.f713h;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f714i == null) {
            this.f714i = new TypedValue();
        }
        return this.f714i;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f711c == null) {
            this.f711c = new TypedValue();
        }
        return this.f711c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f712f == null) {
            this.f712f = new TypedValue();
        }
        return this.f712f;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f709a == null) {
            this.f709a = new TypedValue();
        }
        return this.f709a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f710b == null) {
            this.f710b = new TypedValue();
        }
        return this.f710b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a aVar = this.f716k;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.f716k;
        if (aVar != null) {
            aVar.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00db  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(a aVar) {
        this.f716k = aVar;
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f715j = new Rect();
    }
}
