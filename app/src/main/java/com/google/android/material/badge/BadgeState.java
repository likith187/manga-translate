package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.material.R$dimen;
import com.google.android.material.R$plurals;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import i4.c;
import i4.d;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class BadgeState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final State f8893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final State f8894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final float f8895c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final float f8896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final float f8897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final float f8898f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final float f8899g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final float f8900h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final int f8901i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final int f8902j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f8903k;

    BadgeState(Context context, int i10, int i11, int i12, State state) {
        State state2 = new State();
        this.f8894b = state2;
        state = state == null ? new State() : state;
        if (i10 != 0) {
            state.f8904a = i10;
        }
        TypedArray typedArrayA = a(context, state.f8904a, i11, i12);
        Resources resources = context.getResources();
        this.f8895c = typedArrayA.getDimensionPixelSize(R$styleable.Badge_badgeRadius, -1);
        this.f8901i = context.getResources().getDimensionPixelSize(R$dimen.mtrl_badge_horizontal_edge_offset);
        this.f8902j = context.getResources().getDimensionPixelSize(R$dimen.mtrl_badge_text_horizontal_edge_offset);
        this.f8896d = typedArrayA.getDimensionPixelSize(R$styleable.Badge_badgeWithTextRadius, -1);
        this.f8897e = typedArrayA.getDimension(R$styleable.Badge_badgeWidth, resources.getDimension(R$dimen.m3_badge_size));
        this.f8899g = typedArrayA.getDimension(R$styleable.Badge_badgeWithTextWidth, resources.getDimension(R$dimen.m3_badge_with_text_size));
        this.f8898f = typedArrayA.getDimension(R$styleable.Badge_badgeHeight, resources.getDimension(R$dimen.m3_badge_size));
        this.f8900h = typedArrayA.getDimension(R$styleable.Badge_badgeWithTextHeight, resources.getDimension(R$dimen.m3_badge_with_text_size));
        boolean z10 = true;
        this.f8903k = typedArrayA.getInt(R$styleable.Badge_offsetAlignmentMode, 1);
        state2.f8912l = state.f8912l == -2 ? 255 : state.f8912l;
        if (state.f8914n != -2) {
            state2.f8914n = state.f8914n;
        } else if (typedArrayA.hasValue(R$styleable.Badge_number)) {
            state2.f8914n = typedArrayA.getInt(R$styleable.Badge_number, 0);
        } else {
            state2.f8914n = -1;
        }
        if (state.f8913m != null) {
            state2.f8913m = state.f8913m;
        } else if (typedArrayA.hasValue(R$styleable.Badge_badgeText)) {
            state2.f8913m = typedArrayA.getString(R$styleable.Badge_badgeText);
        }
        state2.f8918r = state.f8918r;
        state2.f8919s = state.f8919s == null ? context.getString(R$string.mtrl_badge_numberless_content_description) : state.f8919s;
        state2.f8920t = state.f8920t == 0 ? R$plurals.mtrl_badge_content_description : state.f8920t;
        state2.f8921u = state.f8921u == 0 ? R$string.mtrl_exceed_max_badge_number_content_description : state.f8921u;
        if (state.f8923w != null && !state.f8923w.booleanValue()) {
            z10 = false;
        }
        state2.f8923w = Boolean.valueOf(z10);
        state2.f8915o = state.f8915o == -2 ? typedArrayA.getInt(R$styleable.Badge_maxCharacterCount, -2) : state.f8915o;
        state2.f8916p = state.f8916p == -2 ? typedArrayA.getInt(R$styleable.Badge_maxNumber, -2) : state.f8916p;
        state2.f8908h = Integer.valueOf(state.f8908h == null ? typedArrayA.getResourceId(R$styleable.Badge_badgeShapeAppearance, R$style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : state.f8908h.intValue());
        state2.f8909i = Integer.valueOf(state.f8909i == null ? typedArrayA.getResourceId(R$styleable.Badge_badgeShapeAppearanceOverlay, 0) : state.f8909i.intValue());
        state2.f8910j = Integer.valueOf(state.f8910j == null ? typedArrayA.getResourceId(R$styleable.Badge_badgeWithTextShapeAppearance, R$style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : state.f8910j.intValue());
        state2.f8911k = Integer.valueOf(state.f8911k == null ? typedArrayA.getResourceId(R$styleable.Badge_badgeWithTextShapeAppearanceOverlay, 0) : state.f8911k.intValue());
        state2.f8905b = Integer.valueOf(state.f8905b == null ? H(context, typedArrayA, R$styleable.Badge_backgroundColor) : state.f8905b.intValue());
        state2.f8907f = Integer.valueOf(state.f8907f == null ? typedArrayA.getResourceId(R$styleable.Badge_badgeTextAppearance, R$style.TextAppearance_MaterialComponents_Badge) : state.f8907f.intValue());
        if (state.f8906c != null) {
            state2.f8906c = state.f8906c;
        } else if (typedArrayA.hasValue(R$styleable.Badge_badgeTextColor)) {
            state2.f8906c = Integer.valueOf(H(context, typedArrayA, R$styleable.Badge_badgeTextColor));
        } else {
            state2.f8906c = Integer.valueOf(new d(context, state2.f8907f.intValue()).i().getDefaultColor());
        }
        state2.f8922v = Integer.valueOf(state.f8922v == null ? typedArrayA.getInt(R$styleable.Badge_badgeGravity, 8388661) : state.f8922v.intValue());
        state2.f8924x = Integer.valueOf(state.f8924x == null ? typedArrayA.getDimensionPixelSize(R$styleable.Badge_badgeWidePadding, resources.getDimensionPixelSize(R$dimen.mtrl_badge_long_text_horizontal_padding)) : state.f8924x.intValue());
        state2.f8925y = Integer.valueOf(state.f8925y == null ? typedArrayA.getDimensionPixelSize(R$styleable.Badge_badgeVerticalPadding, resources.getDimensionPixelSize(R$dimen.m3_badge_with_text_vertical_padding)) : state.f8925y.intValue());
        state2.f8926z = Integer.valueOf(state.f8926z == null ? typedArrayA.getDimensionPixelOffset(R$styleable.Badge_horizontalOffset, 0) : state.f8926z.intValue());
        state2.A = Integer.valueOf(state.A == null ? typedArrayA.getDimensionPixelOffset(R$styleable.Badge_verticalOffset, 0) : state.A.intValue());
        state2.B = Integer.valueOf(state.B == null ? typedArrayA.getDimensionPixelOffset(R$styleable.Badge_horizontalOffsetWithText, state2.f8926z.intValue()) : state.B.intValue());
        state2.C = Integer.valueOf(state.C == null ? typedArrayA.getDimensionPixelOffset(R$styleable.Badge_verticalOffsetWithText, state2.A.intValue()) : state.C.intValue());
        state2.F = Integer.valueOf(state.F == null ? typedArrayA.getDimensionPixelOffset(R$styleable.Badge_largeFontVerticalOffsetAdjustment, 0) : state.F.intValue());
        state2.D = Integer.valueOf(state.D == null ? 0 : state.D.intValue());
        state2.E = Integer.valueOf(state.E == null ? 0 : state.E.intValue());
        state2.G = Boolean.valueOf(state.G == null ? typedArrayA.getBoolean(R$styleable.Badge_autoAdjustToWithinGrandparentBounds, false) : state.G.booleanValue());
        typedArrayA.recycle();
        if (state.f8917q == null) {
            state2.f8917q = Locale.getDefault(Locale.Category.FORMAT);
        } else {
            state2.f8917q = state.f8917q;
        }
        this.f8893a = state;
    }

    private static int H(Context context, TypedArray typedArray, int i10) {
        return c.a(context, typedArray, i10).getDefaultColor();
    }

    private TypedArray a(Context context, int i10, int i11, int i12) {
        AttributeSet attributeSetK;
        int styleAttribute;
        if (i10 != 0) {
            attributeSetK = com.google.android.material.drawable.a.k(context, i10, "badge");
            styleAttribute = attributeSetK.getStyleAttribute();
        } else {
            attributeSetK = null;
            styleAttribute = 0;
        }
        return ThemeEnforcement.obtainStyledAttributes(context, attributeSetK, R$styleable.Badge, i11, styleAttribute == 0 ? i12 : styleAttribute, new int[0]);
    }

    int A() {
        return this.f8894b.f8907f.intValue();
    }

    int B() {
        return this.f8894b.C.intValue();
    }

    int C() {
        return this.f8894b.A.intValue();
    }

    boolean D() {
        return this.f8894b.f8914n != -1;
    }

    boolean E() {
        return this.f8894b.f8913m != null;
    }

    boolean F() {
        return this.f8894b.G.booleanValue();
    }

    boolean G() {
        return this.f8894b.f8923w.booleanValue();
    }

    void I(int i10) {
        this.f8893a.f8912l = i10;
        this.f8894b.f8912l = i10;
    }

    int b() {
        return this.f8894b.D.intValue();
    }

    int c() {
        return this.f8894b.E.intValue();
    }

    int d() {
        return this.f8894b.f8912l;
    }

    int e() {
        return this.f8894b.f8905b.intValue();
    }

    int f() {
        return this.f8894b.f8922v.intValue();
    }

    int g() {
        return this.f8894b.f8924x.intValue();
    }

    int h() {
        return this.f8894b.f8909i.intValue();
    }

    int i() {
        return this.f8894b.f8908h.intValue();
    }

    int j() {
        return this.f8894b.f8906c.intValue();
    }

    int k() {
        return this.f8894b.f8925y.intValue();
    }

    int l() {
        return this.f8894b.f8911k.intValue();
    }

    int m() {
        return this.f8894b.f8910j.intValue();
    }

    int n() {
        return this.f8894b.f8921u;
    }

    CharSequence o() {
        return this.f8894b.f8918r;
    }

    CharSequence p() {
        return this.f8894b.f8919s;
    }

    int q() {
        return this.f8894b.f8920t;
    }

    int r() {
        return this.f8894b.B.intValue();
    }

    int s() {
        return this.f8894b.f8926z.intValue();
    }

    int t() {
        return this.f8894b.F.intValue();
    }

    int u() {
        return this.f8894b.f8915o;
    }

    int v() {
        return this.f8894b.f8916p;
    }

    int w() {
        return this.f8894b.f8914n;
    }

    Locale x() {
        return this.f8894b.f8917q;
    }

    State y() {
        return this.f8893a;
    }

    String z() {
        return this.f8894b.f8913m;
    }

    public static final class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new a();
        private Integer A;
        private Integer B;
        private Integer C;
        private Integer D;
        private Integer E;
        private Integer F;
        private Boolean G;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f8904a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f8905b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Integer f8906c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Integer f8907f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Integer f8908h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Integer f8909i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Integer f8910j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private Integer f8911k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f8912l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private String f8913m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f8914n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f8915o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f8916p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private Locale f8917q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private CharSequence f8918r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private CharSequence f8919s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private int f8920t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private int f8921u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private Integer f8922v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private Boolean f8923w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private Integer f8924x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private Integer f8925y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private Integer f8926z;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public State createFromParcel(Parcel parcel) {
                return new State(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public State[] newArray(int i10) {
                return new State[i10];
            }
        }

        public State() {
            this.f8912l = 255;
            this.f8914n = -2;
            this.f8915o = -2;
            this.f8916p = -2;
            this.f8923w = Boolean.TRUE;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f8904a);
            parcel.writeSerializable(this.f8905b);
            parcel.writeSerializable(this.f8906c);
            parcel.writeSerializable(this.f8907f);
            parcel.writeSerializable(this.f8908h);
            parcel.writeSerializable(this.f8909i);
            parcel.writeSerializable(this.f8910j);
            parcel.writeSerializable(this.f8911k);
            parcel.writeInt(this.f8912l);
            parcel.writeString(this.f8913m);
            parcel.writeInt(this.f8914n);
            parcel.writeInt(this.f8915o);
            parcel.writeInt(this.f8916p);
            CharSequence charSequence = this.f8918r;
            parcel.writeString(charSequence != null ? charSequence.toString() : null);
            CharSequence charSequence2 = this.f8919s;
            parcel.writeString(charSequence2 != null ? charSequence2.toString() : null);
            parcel.writeInt(this.f8920t);
            parcel.writeSerializable(this.f8922v);
            parcel.writeSerializable(this.f8924x);
            parcel.writeSerializable(this.f8925y);
            parcel.writeSerializable(this.f8926z);
            parcel.writeSerializable(this.A);
            parcel.writeSerializable(this.B);
            parcel.writeSerializable(this.C);
            parcel.writeSerializable(this.F);
            parcel.writeSerializable(this.D);
            parcel.writeSerializable(this.E);
            parcel.writeSerializable(this.f8923w);
            parcel.writeSerializable(this.f8917q);
            parcel.writeSerializable(this.G);
        }

        State(Parcel parcel) {
            this.f8912l = 255;
            this.f8914n = -2;
            this.f8915o = -2;
            this.f8916p = -2;
            this.f8923w = Boolean.TRUE;
            this.f8904a = parcel.readInt();
            this.f8905b = (Integer) parcel.readSerializable();
            this.f8906c = (Integer) parcel.readSerializable();
            this.f8907f = (Integer) parcel.readSerializable();
            this.f8908h = (Integer) parcel.readSerializable();
            this.f8909i = (Integer) parcel.readSerializable();
            this.f8910j = (Integer) parcel.readSerializable();
            this.f8911k = (Integer) parcel.readSerializable();
            this.f8912l = parcel.readInt();
            this.f8913m = parcel.readString();
            this.f8914n = parcel.readInt();
            this.f8915o = parcel.readInt();
            this.f8916p = parcel.readInt();
            this.f8918r = parcel.readString();
            this.f8919s = parcel.readString();
            this.f8920t = parcel.readInt();
            this.f8922v = (Integer) parcel.readSerializable();
            this.f8924x = (Integer) parcel.readSerializable();
            this.f8925y = (Integer) parcel.readSerializable();
            this.f8926z = (Integer) parcel.readSerializable();
            this.A = (Integer) parcel.readSerializable();
            this.B = (Integer) parcel.readSerializable();
            this.C = (Integer) parcel.readSerializable();
            this.F = (Integer) parcel.readSerializable();
            this.D = (Integer) parcel.readSerializable();
            this.E = (Integer) parcel.readSerializable();
            this.f8923w = (Boolean) parcel.readSerializable();
            this.f8917q = (Locale) parcel.readSerializable();
            this.G = (Boolean) parcel.readSerializable();
        }
    }
}
