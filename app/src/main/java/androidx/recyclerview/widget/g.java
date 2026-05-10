package androidx.recyclerview.widget;

import android.graphics.Color;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.preference.Preference;
import androidx.recyclerview.widget.COUIRecyclerView;
import androidx.recyclerview.widget.RecyclerView;
import com.coui.appcompat.animation.dynamicanimation.COUISpringAnimation;
import com.coui.appcompat.animation.dynamicanimation.COUISpringForce;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.support.appcompat.R$attr;

/* JADX INFO: loaded from: classes.dex */
class g {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static float f3301k = 0.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static float f3302l = 0.15f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f3303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RecyclerView f3304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3305c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3306d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3307e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3308f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3309g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private COUISpringAnimation f3310h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private androidx.dynamicanimation.animation.d f3311i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f3312j;

    class a extends androidx.dynamicanimation.animation.d {
        a(String str) {
            super(str);
        }

        @Override // androidx.dynamicanimation.animation.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(g gVar) {
            return gVar.g();
        }

        @Override // androidx.dynamicanimation.animation.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(g gVar, float f10) {
            gVar.l(f10);
        }
    }

    public g(RecyclerView recyclerView, int i10) {
        this.f3304b = recyclerView;
        this.f3306d = i10;
        h();
    }

    private void d() {
        if (this.f3310h != null) {
            return;
        }
        this.f3310h = new COUISpringAnimation(this, this.f3311i);
        COUISpringForce cOUISpringForce = new COUISpringForce();
        cOUISpringForce.setBounce(f3301k);
        cOUISpringForce.setResponse(f3302l);
        this.f3310h.setSpring(cOUISpringForce);
    }

    private void e(MotionEvent motionEvent) {
        if (j(motionEvent.getX(), motionEvent.getY())) {
            d();
            this.f3310h.setStartValue(this.f3307e);
            this.f3310h.animateToFinalPosition(0.0f);
        }
    }

    private void f(MotionEvent motionEvent) {
        this.f3309g = false;
        if (this.f3312j != null) {
            d();
            this.f3310h.setStartValue(this.f3307e);
            this.f3310h.animateToFinalPosition(this.f3308f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int g() {
        return this.f3307e;
    }

    private void h() {
        m(true);
    }

    private boolean j(float f10, float f11) {
        View viewFindChildViewUnder = this.f3304b.findChildViewUnder(f10, f11);
        this.f3312j = viewFindChildViewUnder;
        if (viewFindChildViewUnder == null || !(this.f3304b.getAdapter() instanceof androidx.preference.h)) {
            KeyEvent.Callback callback = this.f3312j;
            if (callback instanceof n) {
                return ((n) callback).getItemEnabled();
            }
            return true;
        }
        Preference preferenceI = ((androidx.preference.h) this.f3304b.getAdapter()).i(this.f3304b.getChildAdapterPosition(this.f3312j));
        if (preferenceI != null) {
            return preferenceI.isEnabled();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(float f10) {
        this.f3307e = (int) f10;
        n();
    }

    private void n() {
        if (this.f3312j != null) {
            for (int i10 = 0; i10 < this.f3304b.getItemDecorationCount(); i10++) {
                RecyclerView.o itemDecorationAt = this.f3304b.getItemDecorationAt(i10);
                if (itemDecorationAt instanceof COUIRecyclerView.a) {
                    COUIRecyclerView.a aVar = (COUIRecyclerView.a) itemDecorationAt;
                    aVar.setPressDividerPos(this.f3304b.indexOfChild(this.f3312j));
                    aVar.setPressDividerAlpha(this.f3307e);
                    this.f3304b.invalidate();
                }
            }
        }
    }

    protected void c(MotionEvent motionEvent) {
        if (this.f3303a) {
            if (motionEvent.getAction() == 0) {
                this.f3309g = true;
                this.f3305c = (int) (motionEvent.getY() + 0.5f);
                e(motionEvent);
            } else {
                if (motionEvent.getAction() == 1) {
                    f(motionEvent);
                    return;
                }
                if (motionEvent.getAction() == 3) {
                    f(motionEvent);
                } else if (motionEvent.getAction() == 2 && Math.abs(((int) (motionEvent.getY() + 0.5f)) - this.f3305c) > this.f3306d && this.f3309g) {
                    f(motionEvent);
                }
            }
        }
    }

    protected boolean i(View view, int i10) {
        if (this.f3303a) {
            this.f3304b.getChildAt(i10 + 1);
        }
        return true;
    }

    protected void k(MotionEvent motionEvent) {
        if (this.f3309g) {
            f(motionEvent);
        }
    }

    protected void m(boolean z10) {
        this.f3303a = z10;
        if (z10) {
            int iAlpha = Color.alpha(COUIContextUtil.getAttrColor(this.f3304b.getContext(), R$attr.couiColorDivider));
            this.f3308f = iAlpha;
            this.f3307e = iAlpha;
            if (this.f3311i == null) {
                this.f3311i = new a("dividerAlpha");
            }
            d();
        }
    }
}
