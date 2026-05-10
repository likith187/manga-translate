package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$color;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$drawable;
import androidx.appcompat.widget.z;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: b */
    private static final PorterDuff.Mode f882b = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c */
    private static g f883c;

    /* JADX INFO: renamed from: a */
    private z f884a;

    class a implements z.c {

        /* JADX INFO: renamed from: a */
        private final int[] f885a = {R$drawable.abc_textfield_search_default_mtrl_alpha, R$drawable.abc_textfield_default_mtrl_alpha, R$drawable.abc_ab_share_pack_mtrl_alpha};

        /* JADX INFO: renamed from: b */
        private final int[] f886b = {R$drawable.abc_ic_commit_search_api_mtrl_alpha, R$drawable.abc_seekbar_tick_mark_material, R$drawable.abc_ic_menu_share_mtrl_alpha, R$drawable.abc_ic_menu_copy_mtrl_am_alpha, R$drawable.abc_ic_menu_cut_mtrl_alpha, R$drawable.abc_ic_menu_selectall_mtrl_alpha, R$drawable.abc_ic_menu_paste_mtrl_am_alpha};

        /* JADX INFO: renamed from: c */
        private final int[] f887c = {R$drawable.abc_textfield_activated_mtrl_alpha, R$drawable.abc_textfield_search_activated_mtrl_alpha, R$drawable.abc_cab_background_top_mtrl_alpha, R$drawable.abc_text_cursor_material, R$drawable.abc_text_select_handle_left_mtrl, R$drawable.abc_text_select_handle_middle_mtrl, R$drawable.abc_text_select_handle_right_mtrl};

        /* JADX INFO: renamed from: d */
        private final int[] f888d = {R$drawable.abc_popup_background_mtrl_mult, R$drawable.abc_cab_background_internal_bg, R$drawable.abc_menu_hardkey_panel_mtrl_mult};

        /* JADX INFO: renamed from: e */
        private final int[] f889e = {R$drawable.abc_tab_indicator_material, R$drawable.abc_textfield_search_material};

        /* JADX INFO: renamed from: f */
        private final int[] f890f = {R$drawable.abc_btn_check_material, R$drawable.abc_btn_radio_material, R$drawable.abc_btn_check_material_anim, R$drawable.abc_btn_radio_material_anim};

        a() {
        }

        private boolean f(int[] iArr, int i10) {
            for (int i11 : iArr) {
                if (i11 == i10) {
                    return true;
                }
            }
            return false;
        }

        private ColorStateList g(Context context) {
            return h(context, 0);
        }

        private ColorStateList h(Context context, int i10) {
            int iC = d0.c(context, R$attr.colorControlHighlight);
            return new ColorStateList(new int[][]{d0.f853b, d0.f856e, d0.f854c, d0.f860i}, new int[]{d0.b(context, R$attr.colorButtonNormal), u.d.o(iC, i10), u.d.o(iC, i10), i10});
        }

        private ColorStateList i(Context context) {
            return h(context, d0.c(context, R$attr.colorAccent));
        }

        private ColorStateList j(Context context) {
            return h(context, d0.c(context, R$attr.colorButtonNormal));
        }

        private ColorStateList k(Context context) {
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            ColorStateList colorStateListE = d0.e(context, R$attr.colorSwitchThumbNormal);
            if (colorStateListE == null || !colorStateListE.isStateful()) {
                iArr[0] = d0.f853b;
                iArr2[0] = d0.b(context, R$attr.colorSwitchThumbNormal);
                iArr[1] = d0.f857f;
                iArr2[1] = d0.c(context, R$attr.colorControlActivated);
                iArr[2] = d0.f860i;
                iArr2[2] = d0.c(context, R$attr.colorSwitchThumbNormal);
            } else {
                int[] iArr3 = d0.f853b;
                iArr[0] = iArr3;
                iArr2[0] = colorStateListE.getColorForState(iArr3, 0);
                iArr[1] = d0.f857f;
                iArr2[1] = d0.c(context, R$attr.colorControlActivated);
                iArr[2] = d0.f860i;
                iArr2[2] = colorStateListE.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }

        private LayerDrawable l(z zVar, Context context, int i10) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i10);
            Drawable drawableI = zVar.i(context, R$drawable.abc_star_black_48dp);
            Drawable drawableI2 = zVar.i(context, R$drawable.abc_star_half_black_48dp);
            if ((drawableI instanceof BitmapDrawable) && drawableI.getIntrinsicWidth() == dimensionPixelSize && drawableI.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) drawableI;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawableI.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableI.draw(canvas);
                bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((drawableI2 instanceof BitmapDrawable) && drawableI2.getIntrinsicWidth() == dimensionPixelSize && drawableI2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) drawableI2;
            } else {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                drawableI2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableI2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, R.id.background);
            layerDrawable.setId(1, R.id.secondaryProgress);
            layerDrawable.setId(2, R.id.progress);
            return layerDrawable;
        }

        private void m(Drawable drawable, int i10, PorterDuff.Mode mode) {
            Drawable drawableMutate = drawable.mutate();
            if (mode == null) {
                mode = g.f882b;
            }
            drawableMutate.setColorFilter(g.e(i10, mode));
        }

        /* JADX WARN: Removed duplicated region for block: B:49:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0060 A[RETURN] */
        @Override // androidx.appcompat.widget.z.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean a(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
            /*
                r6 = this;
                android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.g.a()
                int[] r1 = r6.f885a
                boolean r1 = r6.f(r1, r8)
                r2 = 1
                r3 = 0
                r4 = -1
                if (r1 == 0) goto L14
                int r6 = androidx.appcompat.R$attr.colorControlNormal
            L11:
                r1 = r2
            L12:
                r8 = r4
                goto L49
            L14:
                int[] r1 = r6.f887c
                boolean r1 = r6.f(r1, r8)
                if (r1 == 0) goto L1f
                int r6 = androidx.appcompat.R$attr.colorControlActivated
                goto L11
            L1f:
                int[] r1 = r6.f888d
                boolean r6 = r6.f(r1, r8)
                r1 = 16842801(0x1010031, float:2.3693695E-38)
                if (r6 == 0) goto L2e
                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
            L2c:
                r6 = r1
                goto L11
            L2e:
                int r6 = androidx.appcompat.R$drawable.abc_list_divider_mtrl_alpha
                if (r8 != r6) goto L41
                r6 = 1109603123(0x42233333, float:40.8)
                int r6 = java.lang.Math.round(r6)
                r8 = 16842800(0x1010030, float:2.3693693E-38)
                r1 = r2
                r5 = r8
                r8 = r6
                r6 = r5
                goto L49
            L41:
                int r6 = androidx.appcompat.R$drawable.abc_dialog_material_background
                if (r8 != r6) goto L46
                goto L2c
            L46:
                r6 = r3
                r1 = r6
                goto L12
            L49:
                if (r1 == 0) goto L60
                android.graphics.drawable.Drawable r9 = r9.mutate()
                int r6 = androidx.appcompat.widget.d0.c(r7, r6)
                android.graphics.PorterDuffColorFilter r6 = androidx.appcompat.widget.g.e(r6, r0)
                r9.setColorFilter(r6)
                if (r8 == r4) goto L5f
                r9.setAlpha(r8)
            L5f:
                return r2
            L60:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.g.a.a(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
        }

        @Override // androidx.appcompat.widget.z.c
        public PorterDuff.Mode b(int i10) {
            if (i10 == R$drawable.abc_switch_thumb_material) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }

        @Override // androidx.appcompat.widget.z.c
        public Drawable c(z zVar, Context context, int i10) {
            if (i10 == R$drawable.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{zVar.i(context, R$drawable.abc_cab_background_internal_bg), zVar.i(context, R$drawable.abc_cab_background_top_mtrl_alpha)});
            }
            if (i10 == R$drawable.abc_ratingbar_material) {
                return l(zVar, context, R$dimen.abc_star_big);
            }
            if (i10 == R$drawable.abc_ratingbar_indicator_material) {
                return l(zVar, context, R$dimen.abc_star_medium);
            }
            if (i10 == R$drawable.abc_ratingbar_small_material) {
                return l(zVar, context, R$dimen.abc_star_small);
            }
            return null;
        }

        @Override // androidx.appcompat.widget.z.c
        public ColorStateList d(Context context, int i10) {
            if (i10 == R$drawable.abc_edit_text_material) {
                return e.a.a(context, R$color.abc_tint_edittext);
            }
            if (i10 == R$drawable.abc_switch_track_mtrl_alpha) {
                return e.a.a(context, R$color.abc_tint_switch_track);
            }
            if (i10 == R$drawable.abc_switch_thumb_material) {
                return k(context);
            }
            if (i10 == R$drawable.abc_btn_default_mtrl_shape) {
                return j(context);
            }
            if (i10 == R$drawable.abc_btn_borderless_material) {
                return g(context);
            }
            if (i10 == R$drawable.abc_btn_colored_material) {
                return i(context);
            }
            if (i10 == R$drawable.abc_spinner_mtrl_am_alpha || i10 == R$drawable.abc_spinner_textfield_background_material) {
                return e.a.a(context, R$color.abc_tint_spinner);
            }
            if (f(this.f886b, i10)) {
                return d0.e(context, R$attr.colorControlNormal);
            }
            if (f(this.f889e, i10)) {
                return e.a.a(context, R$color.abc_tint_default);
            }
            if (f(this.f890f, i10)) {
                return e.a.a(context, R$color.abc_tint_btn_checkable);
            }
            if (i10 == R$drawable.abc_seekbar_thumb_material) {
                return e.a.a(context, R$color.abc_tint_seek_thumb);
            }
            return null;
        }

        @Override // androidx.appcompat.widget.z.c
        public boolean e(Context context, int i10, Drawable drawable) {
            if (i10 == R$drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                m(layerDrawable.findDrawableByLayerId(R.id.background), d0.c(context, R$attr.colorControlNormal), g.f882b);
                m(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), d0.c(context, R$attr.colorControlNormal), g.f882b);
                m(layerDrawable.findDrawableByLayerId(R.id.progress), d0.c(context, R$attr.colorControlActivated), g.f882b);
                return true;
            }
            if (i10 != R$drawable.abc_ratingbar_material && i10 != R$drawable.abc_ratingbar_indicator_material && i10 != R$drawable.abc_ratingbar_small_material) {
                return false;
            }
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            m(layerDrawable2.findDrawableByLayerId(R.id.background), d0.b(context, R$attr.colorControlNormal), g.f882b);
            m(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), d0.c(context, R$attr.colorControlActivated), g.f882b);
            m(layerDrawable2.findDrawableByLayerId(R.id.progress), d0.c(context, R$attr.colorControlActivated), g.f882b);
            return true;
        }
    }

    public static synchronized g b() {
        try {
            if (f883c == null) {
                h();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f883c;
    }

    public static synchronized PorterDuffColorFilter e(int i10, PorterDuff.Mode mode) {
        return z.k(i10, mode);
    }

    public static synchronized void h() {
        if (f883c == null) {
            g gVar = new g();
            f883c = gVar;
            gVar.f884a = z.g();
            f883c.f884a.t(new a());
        }
    }

    static void i(Drawable drawable, f0 f0Var, int[] iArr) {
        z.v(drawable, f0Var, iArr);
    }

    public synchronized Drawable c(Context context, int i10) {
        return this.f884a.i(context, i10);
    }

    synchronized Drawable d(Context context, int i10, boolean z10) {
        return this.f884a.j(context, i10, z10);
    }

    synchronized ColorStateList f(Context context, int i10) {
        return this.f884a.l(context, i10);
    }

    public synchronized void g(Context context) {
        this.f884a.r(context);
    }
}
