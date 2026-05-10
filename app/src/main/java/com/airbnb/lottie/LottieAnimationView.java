package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public class LottieAnimationView extends AppCompatImageView {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f4513r = "LottieAnimationView";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final k0 f4514s = new k0() { // from class: com.airbnb.lottie.g
        @Override // com.airbnb.lottie.k0
        public final void a(Object obj) {
            LottieAnimationView.t((Throwable) obj);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k0 f4515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k0 f4516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private k0 f4517c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4518f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final i0 f4519h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f4520i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f4521j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f4522k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f4523l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f4524m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Set f4525n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Set f4526o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private p0 f4527p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private j f4528q;

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f4529a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f4530b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f4531c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f4532f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        String f4533h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f4534i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f4535j;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, i iVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f4529a);
            parcel.writeFloat(this.f4531c);
            parcel.writeInt(this.f4532f ? 1 : 0);
            parcel.writeString(this.f4533h);
            parcel.writeInt(this.f4534i);
            parcel.writeInt(this.f4535j);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f4529a = parcel.readString();
            this.f4531c = parcel.readFloat();
            this.f4532f = parcel.readInt() == 1;
            this.f4533h = parcel.readString();
            this.f4534i = parcel.readInt();
            this.f4535j = parcel.readInt();
        }
    }

    private enum a {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    private static class b implements k0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f4536a;

        public b(LottieAnimationView lottieAnimationView) {
            this.f4536a = new WeakReference(lottieAnimationView);
        }

        @Override // com.airbnb.lottie.k0
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Throwable th) {
            LottieAnimationView lottieAnimationView = (LottieAnimationView) this.f4536a.get();
            if (lottieAnimationView == null) {
                return;
            }
            if (lottieAnimationView.f4518f != 0) {
                lottieAnimationView.setImageResource(lottieAnimationView.f4518f);
            }
            (lottieAnimationView.f4517c == null ? LottieAnimationView.f4514s : lottieAnimationView.f4517c).a(th);
        }
    }

    private static class c implements k0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f4537a;

        public c(LottieAnimationView lottieAnimationView) {
            this.f4537a = new WeakReference(lottieAnimationView);
        }

        @Override // com.airbnb.lottie.k0
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(j jVar) {
            LottieAnimationView lottieAnimationView = (LottieAnimationView) this.f4537a.get();
            if (lottieAnimationView == null) {
                return;
            }
            lottieAnimationView.setComposition(jVar);
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.f4515a = new c(this);
        this.f4516b = new b(this);
        this.f4518f = 0;
        this.f4519h = new i0();
        this.f4522k = false;
        this.f4523l = false;
        this.f4524m = true;
        this.f4525n = new HashSet();
        this.f4526o = new HashSet();
        p(null, R$attr.lottieAnimationViewStyle);
    }

    private void A() {
        boolean zQ = q();
        setImageDrawable(null);
        setImageDrawable(this.f4519h);
        if (zQ) {
            this.f4519h.D0();
        }
    }

    private void C(float f10, boolean z10) {
        if (z10) {
            this.f4525n.add(a.SET_PROGRESS);
        }
        this.f4519h.c1(f10);
    }

    private void k() {
        p0 p0Var = this.f4527p;
        if (p0Var != null) {
            p0Var.k(this.f4515a);
            this.f4527p.j(this.f4516b);
        }
    }

    private void l() {
        this.f4528q = null;
        this.f4519h.w();
    }

    private p0 n(final String str) {
        return isInEditMode() ? new p0(new Callable() { // from class: com.airbnb.lottie.f
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f4556a.r(str);
            }
        }, true) : this.f4524m ? r.j(getContext(), str) : r.k(getContext(), str, null);
    }

    private p0 o(final int i10) {
        return isInEditMode() ? new p0(new Callable() { // from class: com.airbnb.lottie.h
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f4562a.s(i10);
            }
        }, true) : this.f4524m ? r.s(getContext(), i10) : r.t(getContext(), i10, null);
    }

    private void p(AttributeSet attributeSet, int i10) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.LottieAnimationView, i10, 0);
        this.f4524m = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_cacheComposition, true);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_rawRes);
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_fileName);
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_url);
        if (zHasValue && zHasValue2) {
            throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (zHasValue) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.LottieAnimationView_lottie_rawRes, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (zHasValue2) {
            String string2 = typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_fileName);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (zHasValue3 && (string = typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_url)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(typedArrayObtainStyledAttributes.getResourceId(R$styleable.LottieAnimationView_lottie_fallbackRes, 0));
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.f4523l = true;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_loop, false)) {
            this.f4519h.e1(-1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_repeatMode)) {
            setRepeatMode(typedArrayObtainStyledAttributes.getInt(R$styleable.LottieAnimationView_lottie_repeatMode, 1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_repeatCount)) {
            setRepeatCount(typedArrayObtainStyledAttributes.getInt(R$styleable.LottieAnimationView_lottie_repeatCount, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_speed)) {
            setSpeed(typedArrayObtainStyledAttributes.getFloat(R$styleable.LottieAnimationView_lottie_speed, 1.0f));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_clipToCompositionBounds)) {
            setClipToCompositionBounds(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_clipToCompositionBounds, true));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_clipTextToBoundingBox)) {
            setClipTextToBoundingBox(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_clipTextToBoundingBox, false));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_defaultFontFileExtension)) {
            setDefaultFontFileExtension(typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_defaultFontFileExtension));
        }
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_imageAssetsFolder));
        C(typedArrayObtainStyledAttributes.getFloat(R$styleable.LottieAnimationView_lottie_progress, 0.0f), typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_progress));
        m(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_colorFilter)) {
            i(new l1.e("**"), m0.K, new s1.c(new s0(e.a.a(getContext(), typedArrayObtainStyledAttributes.getResourceId(R$styleable.LottieAnimationView_lottie_colorFilter, -1)).getDefaultColor())));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_renderMode)) {
            int i11 = R$styleable.LottieAnimationView_lottie_renderMode;
            r0 r0Var = r0.AUTOMATIC;
            int iOrdinal = typedArrayObtainStyledAttributes.getInt(i11, r0Var.ordinal());
            if (iOrdinal >= r0.values().length) {
                iOrdinal = r0Var.ordinal();
            }
            setRenderMode(r0.values()[iOrdinal]);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_asyncUpdates)) {
            int i12 = R$styleable.LottieAnimationView_lottie_asyncUpdates;
            com.airbnb.lottie.a aVar = com.airbnb.lottie.a.AUTOMATIC;
            int iOrdinal2 = typedArrayObtainStyledAttributes.getInt(i12, aVar.ordinal());
            if (iOrdinal2 >= r0.values().length) {
                iOrdinal2 = aVar.ordinal();
            }
            setAsyncUpdates(com.airbnb.lottie.a.values()[iOrdinal2]);
        }
        setIgnoreDisabledSystemAnimations(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_ignoreDisabledSystemAnimations, false));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_useCompositionFrameRate)) {
            setUseCompositionFrameRate(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_useCompositionFrameRate, false));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f4519h.i1(Boolean.valueOf(r1.j.f(getContext()) != 0.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ n0 r(String str) {
        return this.f4524m ? r.l(getContext(), str) : r.m(getContext(), str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ n0 s(int i10) {
        return this.f4524m ? r.u(getContext(), i10) : r.v(getContext(), i10, null);
    }

    private void setCompositionTask(p0 p0Var) {
        n0 n0VarE = p0Var.e();
        if (n0VarE == null || n0VarE.b() != this.f4528q) {
            this.f4525n.add(a.SET_ANIMATION);
            l();
            k();
            this.f4527p = p0Var.d(this.f4515a).c(this.f4516b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void t(Throwable th) {
        if (!r1.j.k(th)) {
            throw new IllegalStateException("Unable to parse composition", th);
        }
        r1.d.d("Unable to load composition.", th);
    }

    public void B(int i10, int i11) {
        this.f4519h.V0(i10, i11);
    }

    public void g(Animator.AnimatorListener animatorListener) {
        this.f4519h.q(animatorListener);
    }

    public com.airbnb.lottie.a getAsyncUpdates() {
        return this.f4519h.G();
    }

    public boolean getAsyncUpdatesEnabled() {
        return this.f4519h.H();
    }

    public boolean getClipTextToBoundingBox() {
        return this.f4519h.J();
    }

    public boolean getClipToCompositionBounds() {
        return this.f4519h.K();
    }

    public j getComposition() {
        return this.f4528q;
    }

    public long getDuration() {
        j jVar = this.f4528q;
        if (jVar != null) {
            return (long) jVar.d();
        }
        return 0L;
    }

    public int getFrame() {
        return this.f4519h.O();
    }

    public String getImageAssetsFolder() {
        return this.f4519h.Q();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.f4519h.S();
    }

    public float getMaxFrame() {
        return this.f4519h.T();
    }

    public float getMinFrame() {
        return this.f4519h.U();
    }

    public q0 getPerformanceTracker() {
        return this.f4519h.V();
    }

    public float getProgress() {
        return this.f4519h.W();
    }

    public r0 getRenderMode() {
        return this.f4519h.X();
    }

    public int getRepeatCount() {
        return this.f4519h.Y();
    }

    public int getRepeatMode() {
        return this.f4519h.Z();
    }

    public float getSpeed() {
        return this.f4519h.a0();
    }

    public void h(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f4519h.r(animatorUpdateListener);
    }

    public void i(l1.e eVar, Object obj, s1.c cVar) {
        this.f4519h.s(eVar, obj, cVar);
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof i0) && ((i0) drawable).X() == r0.SOFTWARE) {
            this.f4519h.invalidateSelf();
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        i0 i0Var = this.f4519h;
        if (drawable2 == i0Var) {
            super.invalidateDrawable(i0Var);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public void j() {
        this.f4525n.add(a.PLAY_OPTION);
        this.f4519h.v();
    }

    public void m(boolean z10) {
        this.f4519h.B(z10);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.f4523l) {
            return;
        }
        this.f4519h.y0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        int i10;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f4520i = savedState.f4529a;
        Set set = this.f4525n;
        a aVar = a.SET_ANIMATION;
        if (!set.contains(aVar) && !TextUtils.isEmpty(this.f4520i)) {
            setAnimation(this.f4520i);
        }
        this.f4521j = savedState.f4530b;
        if (!this.f4525n.contains(aVar) && (i10 = this.f4521j) != 0) {
            setAnimation(i10);
        }
        if (!this.f4525n.contains(a.SET_PROGRESS)) {
            C(savedState.f4531c, false);
        }
        if (!this.f4525n.contains(a.PLAY_OPTION) && savedState.f4532f) {
            v();
        }
        if (!this.f4525n.contains(a.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(savedState.f4533h);
        }
        if (!this.f4525n.contains(a.SET_REPEAT_MODE)) {
            setRepeatMode(savedState.f4534i);
        }
        if (this.f4525n.contains(a.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(savedState.f4535j);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4529a = this.f4520i;
        savedState.f4530b = this.f4521j;
        savedState.f4531c = this.f4519h.W();
        savedState.f4532f = this.f4519h.f0();
        savedState.f4533h = this.f4519h.Q();
        savedState.f4534i = this.f4519h.Z();
        savedState.f4535j = this.f4519h.Y();
        return savedState;
    }

    public boolean q() {
        return this.f4519h.e0();
    }

    public void setAnimation(int i10) {
        this.f4521j = i10;
        this.f4520i = null;
        setCompositionTask(o(i10));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        z(str, null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.f4524m ? r.w(getContext(), str) : r.x(getContext(), str, null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.f4519h.F0(z10);
    }

    public void setAsyncUpdates(com.airbnb.lottie.a aVar) {
        this.f4519h.G0(aVar);
    }

    public void setCacheComposition(boolean z10) {
        this.f4524m = z10;
    }

    public void setClipTextToBoundingBox(boolean z10) {
        this.f4519h.H0(z10);
    }

    public void setClipToCompositionBounds(boolean z10) {
        this.f4519h.I0(z10);
    }

    public void setComposition(j jVar) {
        if (e.f4545a) {
            Log.v(f4513r, "Set Composition \n" + jVar);
        }
        this.f4519h.setCallback(this);
        this.f4528q = jVar;
        this.f4522k = true;
        boolean zJ0 = this.f4519h.J0(jVar);
        this.f4522k = false;
        if (getDrawable() != this.f4519h || zJ0) {
            if (!zJ0) {
                A();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator it = this.f4526o.iterator();
            if (it.hasNext()) {
                androidx.appcompat.app.t.a(it.next());
                throw null;
            }
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.f4519h.K0(str);
    }

    public void setFailureListener(k0 k0Var) {
        this.f4517c = k0Var;
    }

    public void setFallbackResource(int i10) {
        this.f4518f = i10;
    }

    public void setFontAssetDelegate(com.airbnb.lottie.b bVar) {
        this.f4519h.L0(bVar);
    }

    public void setFontMap(Map<String, Typeface> map) {
        this.f4519h.M0(map);
    }

    public void setFrame(int i10) {
        this.f4519h.N0(i10);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.f4519h.O0(z10);
    }

    public void setImageAssetDelegate(com.airbnb.lottie.c cVar) {
        this.f4519h.P0(cVar);
    }

    public void setImageAssetsFolder(String str) {
        this.f4519h.Q0(str);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        k();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        k();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i10) {
        k();
        super.setImageResource(i10);
    }

    public void setMaintainOriginalImageBounds(boolean z10) {
        this.f4519h.R0(z10);
    }

    public void setMaxFrame(int i10) {
        this.f4519h.S0(i10);
    }

    public void setMaxProgress(float f10) {
        this.f4519h.U0(f10);
    }

    public void setMinAndMaxFrame(String str) {
        this.f4519h.W0(str);
    }

    public void setMinFrame(int i10) {
        this.f4519h.X0(i10);
    }

    public void setMinProgress(float f10) {
        this.f4519h.Z0(f10);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        this.f4519h.a1(z10);
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        this.f4519h.b1(z10);
    }

    public void setProgress(float f10) {
        C(f10, true);
    }

    public void setRenderMode(r0 r0Var) {
        this.f4519h.d1(r0Var);
    }

    public void setRepeatCount(int i10) {
        this.f4525n.add(a.SET_REPEAT_COUNT);
        this.f4519h.e1(i10);
    }

    public void setRepeatMode(int i10) {
        this.f4525n.add(a.SET_REPEAT_MODE);
        this.f4519h.f1(i10);
    }

    public void setSafeMode(boolean z10) {
        this.f4519h.g1(z10);
    }

    public void setSpeed(float f10) {
        this.f4519h.h1(f10);
    }

    public void setTextDelegate(t0 t0Var) {
        this.f4519h.j1(t0Var);
    }

    public void setUseCompositionFrameRate(boolean z10) {
        this.f4519h.k1(z10);
    }

    public void u() {
        this.f4523l = false;
        this.f4519h.x0();
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        i0 i0Var;
        if (!this.f4522k && drawable == (i0Var = this.f4519h) && i0Var.e0()) {
            u();
        } else if (!this.f4522k && (drawable instanceof i0)) {
            i0 i0Var2 = (i0) drawable;
            if (i0Var2.e0()) {
                i0Var2.x0();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    public void v() {
        this.f4525n.add(a.PLAY_OPTION);
        this.f4519h.y0();
    }

    public void w() {
        this.f4519h.z0();
    }

    public void x() {
        this.f4519h.A0();
    }

    public void y(InputStream inputStream, String str) {
        setCompositionTask(r.n(inputStream, str));
    }

    public void z(String str, String str2) {
        y(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setMaxFrame(String str) {
        this.f4519h.T0(str);
    }

    public void setMinFrame(String str) {
        this.f4519h.Y0(str);
    }

    public void setAnimation(String str) {
        this.f4520i = str;
        this.f4521j = 0;
        setCompositionTask(n(str));
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4515a = new c(this);
        this.f4516b = new b(this);
        this.f4518f = 0;
        this.f4519h = new i0();
        this.f4522k = false;
        this.f4523l = false;
        this.f4524m = true;
        this.f4525n = new HashSet();
        this.f4526o = new HashSet();
        p(attributeSet, R$attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f4515a = new c(this);
        this.f4516b = new b(this);
        this.f4518f = 0;
        this.f4519h = new i0();
        this.f4522k = false;
        this.f4523l = false;
        this.f4524m = true;
        this.f4525n = new HashSet();
        this.f4526o = new HashSet();
        p(attributeSet, i10);
    }
}
