package com.coui.appcompat.tintimageview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import androidx.collection.h;
import com.coui.appcompat.theme.COUIThemeUtils;
import com.support.appcompat.R$attr;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import r.a;

/* JADX INFO: loaded from: classes.dex */
public final class COUITintManager {
    private static final boolean DEBUG = false;
    private static final String TAG = "TintManager";
    private final WeakReference<Context> mContextRef;
    private ColorStateList mDefaultColorStateList;
    private SparseArray<ColorStateList> mTintLists;
    public static final boolean SHOULD_BE_USED = false;
    private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    private static final WeakHashMap<Context, COUITintManager> INSTANCE_CACHE = new WeakHashMap<>();
    private static final ColorFilterLruCache COLOR_FILTER_CACHE = new ColorFilterLruCache(6);

    private static class ColorFilterLruCache extends h {
        public ColorFilterLruCache(int i10) {
            super(i10);
        }

        private static int generateCacheKey(int i10, PorterDuff.Mode mode) {
            return ((i10 + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter get(int i10, PorterDuff.Mode mode) {
            return (PorterDuffColorFilter) get(Integer.valueOf(generateCacheKey(i10, mode)));
        }

        PorterDuffColorFilter put(int i10, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return (PorterDuffColorFilter) put(Integer.valueOf(generateCacheKey(i10, mode)), porterDuffColorFilter);
        }
    }

    private COUITintManager(Context context) {
        this.mContextRef = new WeakReference<>(context);
    }

    private ColorStateList createCOUIDefaultColorStateList(Context context) {
        return new ColorStateList(new int[][]{COUIThemeUtils.DISABLED_STATE_SET, COUIThemeUtils.PRESSED_STATE_SET, COUIThemeUtils.NOT_PRESSED_OR_FOCUSED_STATE_SET}, new int[]{COUIThemeUtils.getDisabledThemeAttrColor(context, R$attr.couiColorDisabledNeutral), COUIThemeUtils.getThemeAttrColor(context, R$attr.couiColorPressBackground), COUIThemeUtils.getThemeAttrColor(context, R$attr.couiColorPrimary)});
    }

    public static COUITintManager get(Context context) {
        WeakHashMap<Context, COUITintManager> weakHashMap = INSTANCE_CACHE;
        COUITintManager cOUITintManager = weakHashMap.get(context);
        if (cOUITintManager != null) {
            return cOUITintManager;
        }
        COUITintManager cOUITintManager2 = new COUITintManager(context);
        weakHashMap.put(context, cOUITintManager2);
        return cOUITintManager2;
    }

    public static Drawable getDrawable(Context context, int i10) {
        return a.e(context, i10);
    }

    private static void setPorterDuffColorFilter(Drawable drawable, int i10, PorterDuff.Mode mode) {
        if (mode == null) {
            mode = DEFAULT_MODE;
        }
        ColorFilterLruCache colorFilterLruCache = COLOR_FILTER_CACHE;
        PorterDuffColorFilter porterDuffColorFilter = colorFilterLruCache.get(i10, mode);
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i10, mode);
            colorFilterLruCache.put(i10, mode, porterDuffColorFilter);
        }
        drawable.setColorFilter(porterDuffColorFilter);
    }

    public static void tintViewBackground(View view, COUITintInfo cOUITintInfo) {
        Drawable background = view.getBackground();
        if (cOUITintInfo.mHasTintList) {
            setPorterDuffColorFilter(background, cOUITintInfo.mTintList.getColorForState(view.getDrawableState(), cOUITintInfo.mTintList.getDefaultColor()), cOUITintInfo.mHasTintMode ? cOUITintInfo.mTintMode : null);
        } else {
            background.clearColorFilter();
        }
    }

    public final ColorStateList getTintList(int i10) {
        if (this.mContextRef.get() == null) {
            return null;
        }
        SparseArray<ColorStateList> sparseArray = this.mTintLists;
        ColorStateList colorStateList = sparseArray != null ? sparseArray.get(i10) : null;
        if (colorStateList != null) {
            if (this.mTintLists == null) {
                this.mTintLists = new SparseArray<>();
            }
            this.mTintLists.append(i10, colorStateList);
        }
        return colorStateList;
    }

    final PorterDuff.Mode getTintMode(int i10) {
        return null;
    }

    public final boolean tintDrawableUsingColorFilter(int i10, Drawable drawable) {
        this.mContextRef.get();
        return false;
    }

    public Drawable getDrawable(int i10) {
        return getDrawable(i10, false);
    }

    public Drawable getDrawable(int i10, boolean z10) {
        Context context = this.mContextRef.get();
        if (context == null) {
            return null;
        }
        Drawable drawableE = a.e(context, i10);
        if (drawableE != null) {
            drawableE = drawableE.mutate();
            ColorStateList tintList = getTintList(i10);
            if (tintList != null) {
                Drawable drawableR = v.a.r(drawableE);
                v.a.o(drawableR, tintList);
                PorterDuff.Mode tintMode = getTintMode(i10);
                if (tintMode == null) {
                    return drawableR;
                }
                v.a.p(drawableR, tintMode);
                return drawableR;
            }
            if (!tintDrawableUsingColorFilter(i10, drawableE) && z10) {
                return null;
            }
        }
        return drawableE;
    }
}
