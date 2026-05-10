package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import t.h;
import t.k;

/* JADX INFO: loaded from: classes.dex */
public class c extends f implements Animatable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private C0047c f3756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f3757c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArgbEvaluator f3758f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    d f3759h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Animator.AnimatorListener f3760i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    ArrayList f3761j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final Drawable.Callback f3762k;

    class a implements Drawable.Callback {
        a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            c.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
            c.this.scheduleSelf(runnable, j10);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            c.this.unscheduleSelf(runnable);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ArrayList arrayList = new ArrayList(c.this.f3761j);
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((androidx.vectordrawable.graphics.drawable.b) arrayList.get(i10)).b(c.this);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ArrayList arrayList = new ArrayList(c.this.f3761j);
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((androidx.vectordrawable.graphics.drawable.b) arrayList.get(i10)).c(c.this);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.vectordrawable.graphics.drawable.c$c, reason: collision with other inner class name */
    private static class C0047c extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3765a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g f3766b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        AnimatorSet f3767c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList f3768d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        androidx.collection.a f3769e;

        public C0047c(Context context, C0047c c0047c, Drawable.Callback callback, Resources resources) {
            if (c0047c != null) {
                this.f3765a = c0047c.f3765a;
                g gVar = c0047c.f3766b;
                if (gVar != null) {
                    Drawable.ConstantState constantState = gVar.getConstantState();
                    if (resources != null) {
                        this.f3766b = (g) constantState.newDrawable(resources);
                    } else {
                        this.f3766b = (g) constantState.newDrawable();
                    }
                    g gVar2 = (g) this.f3766b.mutate();
                    this.f3766b = gVar2;
                    gVar2.setCallback(callback);
                    this.f3766b.setBounds(c0047c.f3766b.getBounds());
                    this.f3766b.g(false);
                }
                ArrayList arrayList = c0047c.f3768d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f3768d = new ArrayList(size);
                    this.f3769e = new androidx.collection.a(size);
                    for (int i10 = 0; i10 < size; i10++) {
                        Animator animator = (Animator) c0047c.f3768d.get(i10);
                        Animator animatorClone = animator.clone();
                        String str = (String) c0047c.f3769e.get(animator);
                        animatorClone.setTarget(this.f3766b.c(str));
                        this.f3768d.add(animatorClone);
                        this.f3769e.put(animatorClone, str);
                    }
                    a();
                }
            }
        }

        public void a() {
            if (this.f3767c == null) {
                this.f3767c = new AnimatorSet();
            }
            this.f3767c.playTogether(this.f3768d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f3765a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    c() {
        this(null, null, null);
    }

    public static c a(Context context, int i10) {
        c cVar = new c(context);
        Drawable drawableF = h.f(context.getResources(), i10, context.getTheme());
        cVar.f3771a = drawableF;
        drawableF.setCallback(cVar.f3762k);
        cVar.f3759h = new d(cVar.f3771a.getConstantState());
        return cVar;
    }

    private static void c(AnimatedVectorDrawable animatedVectorDrawable, androidx.vectordrawable.graphics.drawable.b bVar) {
        animatedVectorDrawable.registerAnimationCallback(bVar.a());
    }

    private void d() {
        Animator.AnimatorListener animatorListener = this.f3760i;
        if (animatorListener != null) {
            this.f3756b.f3767c.removeListener(animatorListener);
            this.f3760i = null;
        }
    }

    private void e(String str, Animator animator) {
        animator.setTarget(this.f3756b.f3766b.c(str));
        C0047c c0047c = this.f3756b;
        if (c0047c.f3768d == null) {
            c0047c.f3768d = new ArrayList();
            this.f3756b.f3769e = new androidx.collection.a();
        }
        this.f3756b.f3768d.add(animator);
        this.f3756b.f3769e.put(animator, str);
    }

    private static boolean g(AnimatedVectorDrawable animatedVectorDrawable, androidx.vectordrawable.graphics.drawable.b bVar) {
        return animatedVectorDrawable.unregisterAnimationCallback(bVar.a());
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            v.a.a(drawable, theme);
        }
    }

    public void b(androidx.vectordrawable.graphics.drawable.b bVar) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            c((AnimatedVectorDrawable) drawable, bVar);
            return;
        }
        if (bVar == null) {
            return;
        }
        if (this.f3761j == null) {
            this.f3761j = new ArrayList();
        }
        if (this.f3761j.contains(bVar)) {
            return;
        }
        this.f3761j.add(bVar);
        if (this.f3760i == null) {
            this.f3760i = new b();
        }
        this.f3756b.f3767c.addListener(this.f3760i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            return v.a.b(drawable);
        }
        return false;
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f3756b.f3766b.draw(canvas);
        if (this.f3756b.f3767c.isStarted()) {
            invalidateSelf();
        }
    }

    public boolean f(androidx.vectordrawable.graphics.drawable.b bVar) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            g((AnimatedVectorDrawable) drawable, bVar);
        }
        ArrayList arrayList = this.f3761j;
        if (arrayList == null || bVar == null) {
            return false;
        }
        boolean zRemove = arrayList.remove(bVar);
        if (this.f3761j.size() == 0) {
            d();
        }
        return zRemove;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f3771a;
        return drawable != null ? v.a.d(drawable) : this.f3756b.f3766b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return this.f3756b.f3765a | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f3771a;
        return drawable != null ? v.a.e(drawable) : this.f3756b.f3766b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f3771a != null) {
            return new d(this.f3771a.getConstantState());
        }
        return null;
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f3771a;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f3756b.f3766b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f3771a;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f3756b.f3766b.getIntrinsicWidth();
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f3771a;
        return drawable != null ? drawable.getOpacity() : this.f3756b.f3766b.getOpacity();
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            v.a.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray typedArrayQ = k.q(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f3746e);
                    int resourceId = typedArrayQ.getResourceId(0, 0);
                    if (resourceId != 0) {
                        g gVarB = g.b(resources, resourceId, theme);
                        gVarB.g(false);
                        gVarB.setCallback(this.f3762k);
                        g gVar = this.f3756b.f3766b;
                        if (gVar != null) {
                            gVar.setCallback(null);
                        }
                        this.f3756b.f3766b = gVarB;
                    }
                    typedArrayQ.recycle();
                } else if ("target".equals(name)) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.vectordrawable.graphics.drawable.a.f3747f);
                    String string = typedArrayObtainAttributes.getString(0);
                    int resourceId2 = typedArrayObtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f3757c;
                        if (context == null) {
                            typedArrayObtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        e(string, e.a(context, resourceId2));
                    }
                    typedArrayObtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f3756b.a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f3771a;
        return drawable != null ? v.a.h(drawable) : this.f3756b.f3766b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f3771a;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f3756b.f3767c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f3771a;
        return drawable != null ? drawable.isStateful() : this.f3756b.f3766b.isStateful();
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f3756b.f3766b.setBounds(rect);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        Drawable drawable = this.f3771a;
        return drawable != null ? drawable.setLevel(i10) : this.f3756b.f3766b.setLevel(i10);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f3771a;
        return drawable != null ? drawable.setState(iArr) : this.f3756b.f3766b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.setAlpha(i10);
        } else {
            this.f3756b.f3766b.setAlpha(i10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z10) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            v.a.j(drawable, z10);
        } else {
            this.f3756b.f3766b.setAutoMirrored(z10);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i10) {
        super.setChangingConfigurations(i10);
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i10, PorterDuff.Mode mode) {
        super.setColorFilter(i10, mode);
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z10) {
        super.setFilterBitmap(z10);
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f10, float f11) {
        super.setHotspot(f10, f11);
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i10, int i11, int i12, int i13) {
        super.setHotspotBounds(i10, i11, i12, i13);
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i10) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            v.a.n(drawable, i10);
        } else {
            this.f3756b.f3766b.setTint(i10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            v.a.o(drawable, colorStateList);
        } else {
            this.f3756b.f3766b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            v.a.p(drawable, mode);
        } else {
            this.f3756b.f3766b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            return drawable.setVisible(z10, z11);
        }
        this.f3756b.f3766b.setVisible(z10, z11);
        return super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else {
            if (this.f3756b.f3767c.isStarted()) {
                return;
            }
            this.f3756b.f3767c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f3756b.f3767c.end();
        }
    }

    private c(Context context) {
        this(context, null, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f3756b.f3766b.setColorFilter(colorFilter);
        }
    }

    private static class d extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f3770a;

        public d(Drawable.ConstantState constantState) {
            this.f3770a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f3770a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f3770a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            c cVar = new c();
            Drawable drawableNewDrawable = this.f3770a.newDrawable();
            cVar.f3771a = drawableNewDrawable;
            drawableNewDrawable.setCallback(cVar.f3762k);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            c cVar = new c();
            Drawable drawableNewDrawable = this.f3770a.newDrawable(resources);
            cVar.f3771a = drawableNewDrawable;
            drawableNewDrawable.setCallback(cVar.f3762k);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            c cVar = new c();
            Drawable drawableNewDrawable = this.f3770a.newDrawable(resources, theme);
            cVar.f3771a = drawableNewDrawable;
            drawableNewDrawable.setCallback(cVar.f3762k);
            return cVar;
        }
    }

    private c(Context context, C0047c c0047c, Resources resources) {
        this.f3758f = null;
        this.f3760i = null;
        this.f3761j = null;
        a aVar = new a();
        this.f3762k = aVar;
        this.f3757c = context;
        if (c0047c != null) {
            this.f3756b = c0047c;
        } else {
            this.f3756b = new C0047c(context, c0047c, aVar, resources);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
