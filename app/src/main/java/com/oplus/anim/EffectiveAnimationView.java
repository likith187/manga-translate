package com.oplus.anim;

import android.animation.Animator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public class EffectiveAnimationView extends AppCompatImageView {

    /* JADX INFO: renamed from: a */
    private final p f10959a;

    /* JADX INFO: renamed from: b */
    private final p f10960b;

    /* JADX INFO: renamed from: c */
    private final p f10961c;

    /* JADX INFO: renamed from: f */
    private p f10962f;

    /* JADX INFO: renamed from: h */
    private int f10963h;

    /* JADX INFO: renamed from: i */
    private final o f10964i;

    /* JADX INFO: renamed from: j */
    private String f10965j;

    /* JADX INFO: renamed from: k */
    private int f10966k;

    /* JADX INFO: renamed from: l */
    private boolean f10967l;

    /* JADX INFO: renamed from: m */
    private boolean f10968m;

    /* JADX INFO: renamed from: n */
    private boolean f10969n;

    /* JADX INFO: renamed from: o */
    private final Set f10970o;

    /* JADX INFO: renamed from: p */
    private final Set f10971p;

    /* JADX INFO: renamed from: q */
    private t f10972q;

    /* JADX INFO: renamed from: r */
    private com.oplus.anim.a f10973r;

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        String f10974a;

        /* JADX INFO: renamed from: b */
        int f10975b;

        /* JADX INFO: renamed from: c */
        float f10976c;

        /* JADX INFO: renamed from: f */
        boolean f10977f;

        /* JADX INFO: renamed from: h */
        String f10978h;

        /* JADX INFO: renamed from: i */
        int f10979i;

        /* JADX INFO: renamed from: j */
        int f10980j;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f10974a);
            parcel.writeFloat(this.f10976c);
            parcel.writeInt(this.f10977f ? 1 : 0);
            parcel.writeString(this.f10978h);
            parcel.writeInt(this.f10979i);
            parcel.writeInt(this.f10980j);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f10974a = parcel.readString();
            this.f10976c = parcel.readFloat();
            this.f10977f = parcel.readInt() == 1;
            this.f10978h = parcel.readString();
            this.f10979i = parcel.readInt();
            this.f10980j = parcel.readInt();
        }
    }

    class a implements p {
        a() {
        }

        @Override // com.oplus.anim.p
        /* JADX INFO: renamed from: b */
        public void a(Throwable th) {
            if (EffectiveAnimationView.this.f10963h != 0) {
                EffectiveAnimationView effectiveAnimationView = EffectiveAnimationView.this;
                effectiveAnimationView.setImageResource(effectiveAnimationView.f10963h);
            }
            p pVar = EffectiveAnimationView.this.f10962f;
            EffectiveAnimationView effectiveAnimationView2 = EffectiveAnimationView.this;
            (pVar == null ? effectiveAnimationView2.f10959a : effectiveAnimationView2.f10962f).a(th);
        }
    }

    private enum b {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    public EffectiveAnimationView(Context context) {
        super(context);
        this.f10959a = new p() { // from class: com.oplus.anim.u
            @Override // com.oplus.anim.p
            public final void a(Object obj) {
                EffectiveAnimationView.s((Throwable) obj);
            }
        };
        this.f10960b = new p() { // from class: com.oplus.anim.v
            @Override // com.oplus.anim.p
            public final void a(Object obj) {
                this.f11141a.setComposition((a) obj);
            }
        };
        this.f10961c = new a();
        this.f10963h = 0;
        this.f10964i = new o();
        this.f10967l = false;
        this.f10968m = false;
        this.f10969n = true;
        this.f10970o = new HashSet();
        this.f10971p = new HashSet();
        o(null, R$attr.effectiveAnimationViewStyle);
    }

    private void A(float f10, boolean z10) {
        if (z10) {
            this.f10970o.add(b.SET_PROGRESS);
        }
        this.f10964i.Q0(f10);
    }

    private void j() {
        t tVar = this.f10972q;
        if (tVar != null) {
            tVar.j(this.f10960b);
            this.f10972q.i(this.f10961c);
        }
    }

    private void k() {
        this.f10973r = null;
        this.f10964i.u();
    }

    private t m(final String str) {
        return isInEditMode() ? new t(new Callable() { // from class: com.oplus.anim.w
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f11142a.q(str);
            }
        }, true) : this.f10969n ? f0.j(getContext(), str) : f0.k(getContext(), str, null);
    }

    private t n(final int i10) {
        return isInEditMode() ? new t(new Callable() { // from class: com.oplus.anim.x
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f11144a.r(i10);
            }
        }, true) : this.f10969n ? f0.s(getContext(), i10) : f0.t(getContext(), i10, null);
    }

    private void o(AttributeSet attributeSet, int i10) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.EffectiveAnimationView, i10, 0);
        this.f10969n = typedArrayObtainStyledAttributes.getBoolean(R$styleable.EffectiveAnimationView_anim_cacheComposition, true);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.EffectiveAnimationView_anim_rawRes);
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(R$styleable.EffectiveAnimationView_anim_fileName);
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(R$styleable.EffectiveAnimationView_anim_url);
        if (zHasValue && zHasValue2) {
            throw new IllegalArgumentException("anim_rawRes and anim_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (zHasValue) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.EffectiveAnimationView_anim_rawRes, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (zHasValue2) {
            String string2 = typedArrayObtainStyledAttributes.getString(R$styleable.EffectiveAnimationView_anim_fileName);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (zHasValue3 && (string = typedArrayObtainStyledAttributes.getString(R$styleable.EffectiveAnimationView_anim_url)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(typedArrayObtainStyledAttributes.getResourceId(R$styleable.EffectiveAnimationView_anim_fallbackRes, 0));
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.EffectiveAnimationView_anim_autoPlay, false)) {
            this.f10968m = true;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.EffectiveAnimationView_anim_loop, false)) {
            this.f10964i.S0(-1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.EffectiveAnimationView_anim_repeatMode)) {
            setRepeatMode(typedArrayObtainStyledAttributes.getInt(R$styleable.EffectiveAnimationView_anim_repeatMode, 1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.EffectiveAnimationView_anim_repeatCount)) {
            setRepeatCount(typedArrayObtainStyledAttributes.getInt(R$styleable.EffectiveAnimationView_anim_repeatCount, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.EffectiveAnimationView_anim_speed)) {
            setSpeed(typedArrayObtainStyledAttributes.getFloat(R$styleable.EffectiveAnimationView_anim_speed, 1.0f));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.EffectiveAnimationView_anim_clipToCompositionBounds)) {
            setClipToCompositionBounds(typedArrayObtainStyledAttributes.getBoolean(R$styleable.EffectiveAnimationView_anim_clipToCompositionBounds, true));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.EffectiveAnimationView_anim_defaultFontFileExtension)) {
            setDefaultFontFileExtension(typedArrayObtainStyledAttributes.getString(R$styleable.EffectiveAnimationView_anim_defaultFontFileExtension));
        }
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(R$styleable.EffectiveAnimationView_anim_imageAssetsFolder));
        A(typedArrayObtainStyledAttributes.getFloat(R$styleable.EffectiveAnimationView_anim_progress, 0.0f), typedArrayObtainStyledAttributes.hasValue(R$styleable.EffectiveAnimationView_anim_progress));
        l(typedArrayObtainStyledAttributes.getBoolean(R$styleable.EffectiveAnimationView_anim_enableMergePathsForKitKatAndAbove, false));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.EffectiveAnimationView_anim_colorFilter)) {
            h(new f6.f("**"), q.K, new m6.b(new n0(e.a.a(getContext(), typedArrayObtainStyledAttributes.getResourceId(R$styleable.EffectiveAnimationView_anim_colorFilter, -1)).getDefaultColor())));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.EffectiveAnimationView_anim_renderMode)) {
            int i11 = R$styleable.EffectiveAnimationView_anim_renderMode;
            m0 m0Var = m0.AUTOMATIC;
            int iOrdinal = typedArrayObtainStyledAttributes.getInt(i11, m0Var.ordinal());
            if (iOrdinal >= m0.values().length) {
                iOrdinal = m0Var.ordinal();
            }
            setRenderMode(m0.values()[iOrdinal]);
        }
        setIgnoreDisabledSystemAnimations(typedArrayObtainStyledAttributes.getBoolean(R$styleable.EffectiveAnimationView_anim_ignoreDisabledSystemAnimations, false));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.EffectiveAnimationView_anim_useCompositionFrameRate)) {
            setUseCompositionFrameRate(typedArrayObtainStyledAttributes.getBoolean(R$styleable.EffectiveAnimationView_anim_useCompositionFrameRate, false));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f10964i.W0(Boolean.valueOf(l6.h.f(getContext()) != 0.0f));
    }

    public /* synthetic */ r q(String str) {
        return this.f10969n ? f0.l(getContext(), str) : f0.m(getContext(), str, null);
    }

    public /* synthetic */ r r(int i10) {
        return this.f10969n ? f0.u(getContext(), i10) : f0.v(getContext(), i10, null);
    }

    public static /* synthetic */ void s(Throwable th) {
        if (!l6.h.k(th)) {
            throw new IllegalStateException("Unable to parse composition", th);
        }
        l6.e.d("Unable to load composition.", th);
    }

    private void setCompositionTask(t tVar) {
        this.f10970o.add(b.SET_ANIMATION);
        k();
        j();
        this.f10972q = tVar.d(this.f10960b).c(this.f10961c);
    }

    private void z() {
        boolean zP = p();
        setImageDrawable(null);
        setImageDrawable(this.f10964i);
        if (zP) {
            this.f10964i.t0();
        }
    }

    public void g(Animator.AnimatorListener animatorListener) {
        this.f10964i.p(animatorListener);
    }

    public boolean getClipToCompositionBounds() {
        return this.f10964i.F();
    }

    public com.oplus.anim.a getComposition() {
        return this.f10973r;
    }

    public long getDuration() {
        com.oplus.anim.a aVar = this.f10973r;
        if (aVar != null) {
            return (long) aVar.d();
        }
        return 0L;
    }

    public int getFrame() {
        return this.f10964i.J();
    }

    public String getImageAssetsFolder() {
        return this.f10964i.L();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.f10964i.N();
    }

    public float getMaxFrame() {
        return this.f10964i.O();
    }

    public float getMinFrame() {
        return this.f10964i.P();
    }

    public l0 getPerformanceTracker() {
        return this.f10964i.Q();
    }

    public float getProgress() {
        return this.f10964i.R();
    }

    public m0 getRenderMode() {
        return this.f10964i.S();
    }

    public int getRepeatCount() {
        return this.f10964i.T();
    }

    public int getRepeatMode() {
        return this.f10964i.U();
    }

    public float getSpeed() {
        return this.f10964i.V();
    }

    public void h(f6.f fVar, Object obj, m6.b bVar) {
        this.f10964i.q(fVar, obj, bVar);
    }

    public void i() {
        this.f10970o.add(b.PLAY_OPTION);
        this.f10964i.t();
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof o) && ((o) drawable).S() == m0.SOFTWARE) {
            this.f10964i.invalidateSelf();
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        o oVar = this.f10964i;
        if (drawable2 == oVar) {
            super.invalidateDrawable(oVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public void l(boolean z10) {
        this.f10964i.z(z10);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.f10968m) {
            return;
        }
        this.f10964i.q0();
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
        this.f10965j = savedState.f10974a;
        Set set = this.f10970o;
        b bVar = b.SET_ANIMATION;
        if (!set.contains(bVar) && !TextUtils.isEmpty(this.f10965j)) {
            setAnimation(this.f10965j);
        }
        this.f10966k = savedState.f10975b;
        if (!this.f10970o.contains(bVar) && (i10 = this.f10966k) != 0) {
            setAnimation(i10);
        }
        if (!this.f10970o.contains(b.SET_PROGRESS)) {
            A(savedState.f10976c, false);
        }
        if (!this.f10970o.contains(b.PLAY_OPTION) && savedState.f10977f) {
            v();
        }
        if (!this.f10970o.contains(b.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(savedState.f10978h);
        }
        if (!this.f10970o.contains(b.SET_REPEAT_MODE)) {
            setRepeatMode(savedState.f10979i);
        }
        if (this.f10970o.contains(b.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(savedState.f10980j);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f10974a = this.f10965j;
        savedState.f10975b = this.f10966k;
        savedState.f10976c = this.f10964i.R();
        savedState.f10977f = this.f10964i.a0();
        savedState.f10978h = this.f10964i.L();
        savedState.f10979i = this.f10964i.U();
        savedState.f10980j = this.f10964i.T();
        return savedState;
    }

    public boolean p() {
        return this.f10964i.Z();
    }

    public void setAnimation(int i10) {
        this.f10966k = i10;
        this.f10965j = null;
        setCompositionTask(n(i10));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        y(str, null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.f10969n ? f0.w(getContext(), str) : f0.x(getContext(), str, null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.f10964i.v0(z10);
    }

    public void setCacheComposition(boolean z10) {
        this.f10969n = z10;
    }

    public void setClipToCompositionBounds(boolean z10) {
        this.f10964i.w0(z10);
    }

    public void setComposition(com.oplus.anim.a aVar) {
        this.f10964i.setCallback(this);
        this.f10973r = aVar;
        this.f10967l = true;
        boolean zX0 = this.f10964i.x0(aVar);
        this.f10967l = false;
        if (getDrawable() != this.f10964i || zX0) {
            if (!zX0) {
                z();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator it = this.f10971p.iterator();
            if (it.hasNext()) {
                androidx.appcompat.app.t.a(it.next());
                throw null;
            }
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.f10964i.y0(str);
    }

    public void setFailureListener(p pVar) {
        this.f10962f = pVar;
    }

    public void setFallbackResource(int i10) {
        this.f10963h = i10;
    }

    public void setFontAssetDelegate(i0 i0Var) {
        this.f10964i.z0(i0Var);
    }

    public void setFontMap(Map<String, Typeface> map) {
        this.f10964i.A0(map);
    }

    public void setFrame(int i10) {
        this.f10964i.B0(i10);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.f10964i.C0(z10);
    }

    public void setImageAssetDelegate(j0 j0Var) {
        this.f10964i.D0(j0Var);
    }

    public void setImageAssetsFolder(String str) {
        this.f10964i.E0(str);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        j();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        j();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i10) {
        j();
        super.setImageResource(i10);
    }

    public void setMaintainOriginalImageBounds(boolean z10) {
        this.f10964i.F0(z10);
    }

    public void setMaxFrame(int i10) {
        this.f10964i.G0(i10);
    }

    public void setMaxProgress(float f10) {
        this.f10964i.I0(f10);
    }

    public void setMinAndMaxFrame(String str) {
        this.f10964i.K0(str);
    }

    public void setMinFrame(int i10) {
        this.f10964i.L0(i10);
    }

    public void setMinProgress(float f10) {
        this.f10964i.N0(f10);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        this.f10964i.O0(z10);
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        this.f10964i.P0(z10);
    }

    public void setProgress(float f10) {
        A(f10, true);
    }

    public void setRenderMode(m0 m0Var) {
        this.f10964i.R0(m0Var);
    }

    public void setRepeatCount(int i10) {
        this.f10970o.add(b.SET_REPEAT_COUNT);
        this.f10964i.S0(i10);
    }

    public void setRepeatMode(int i10) {
        this.f10970o.add(b.SET_REPEAT_MODE);
        this.f10964i.T0(i10);
    }

    public void setSafeMode(boolean z10) {
        this.f10964i.U0(z10);
    }

    public void setSpeed(float f10) {
        this.f10964i.V0(f10);
    }

    public void setTextDelegate(o0 o0Var) {
        this.f10964i.X0(o0Var);
    }

    public void setUseCompositionFrameRate(boolean z10) {
        this.f10964i.Y0(z10);
    }

    public void t(boolean z10) {
        this.f10964i.S0(z10 ? -1 : 0);
    }

    public void u() {
        this.f10968m = false;
        this.f10964i.p0();
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        o oVar;
        if (!this.f10967l && drawable == (oVar = this.f10964i) && oVar.Z()) {
            u();
        } else if (!this.f10967l && (drawable instanceof o)) {
            o oVar2 = (o) drawable;
            if (oVar2.Z()) {
                oVar2.p0();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    public void v() {
        this.f10970o.add(b.PLAY_OPTION);
        this.f10964i.q0();
    }

    public void w() {
        this.f10970o.add(b.PLAY_OPTION);
        this.f10964i.t0();
    }

    public void x(InputStream inputStream, String str) {
        setCompositionTask(f0.n(inputStream, str));
    }

    public void y(String str, String str2) {
        x(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setMaxFrame(String str) {
        this.f10964i.H0(str);
    }

    public void setMinFrame(String str) {
        this.f10964i.M0(str);
    }

    public void setAnimation(String str) {
        this.f10965j = str;
        this.f10966k = 0;
        setCompositionTask(m(str));
    }

    public EffectiveAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10959a = new p() { // from class: com.oplus.anim.u
            @Override // com.oplus.anim.p
            public final void a(Object obj) {
                EffectiveAnimationView.s((Throwable) obj);
            }
        };
        this.f10960b = new p() { // from class: com.oplus.anim.v
            @Override // com.oplus.anim.p
            public final void a(Object obj) {
                this.f11141a.setComposition((a) obj);
            }
        };
        this.f10961c = new a();
        this.f10963h = 0;
        this.f10964i = new o();
        this.f10967l = false;
        this.f10968m = false;
        this.f10969n = true;
        this.f10970o = new HashSet();
        this.f10971p = new HashSet();
        o(attributeSet, R$attr.effectiveAnimationViewStyle);
    }

    public EffectiveAnimationView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10959a = new p() { // from class: com.oplus.anim.u
            @Override // com.oplus.anim.p
            public final void a(Object obj) {
                EffectiveAnimationView.s((Throwable) obj);
            }
        };
        this.f10960b = new p() { // from class: com.oplus.anim.v
            @Override // com.oplus.anim.p
            public final void a(Object obj) {
                this.f11141a.setComposition((a) obj);
            }
        };
        this.f10961c = new a();
        this.f10963h = 0;
        this.f10964i = new o();
        this.f10967l = false;
        this.f10968m = false;
        this.f10969n = true;
        this.f10970o = new HashSet();
        this.f10971p = new HashSet();
        o(attributeSet, i10);
    }
}
