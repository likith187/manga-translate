package com.coui.appcompat.contextutil;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.coui.appcompat.log.COUILog;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$style;
import com.support.appcompat.R$styleable;
import u.d;

/* JADX INFO: loaded from: classes.dex */
public class COUIContextUtil {
    private static final String METADATA_STYLE_TITLE = "coui.appcompat.options";
    private static final String METADATA_STYLE_VALUE = "true";
    private static final String TAG = "COUIContextUtil";
    private Context mContext;

    public COUIContextUtil(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    public static int getAttrColor(Context context, int i10) {
        return (i10 == R$attr.couiColorFocus || i10 == R$attr.couiColorDisable) ? makeColorAlpha(getAttrColor(context, i10, 0), getAttrColor(context, R$attr.couiColorContainerTheme, 0)) : i10 == R$attr.couiColorFocusOutline ? makeColorAlpha(getAttrColor(context, i10, 0), getAttrColor(context, R$attr.couiColorLabelTheme, 0)) : getAttrColor(context, i10, 0);
    }

    public static int getAttrDimens(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i10});
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static float getAttrDimensFloat(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i10});
        float dimension = typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        return dimension;
    }

    public static float getAttrFloat(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i10});
        float f10 = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        return f10;
    }

    public static int getAttrId(Context context, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i10});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, i11);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    public static String getAttrString(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i10});
        String string = typedArrayObtainStyledAttributes.getString(0);
        typedArrayObtainStyledAttributes.recycle();
        return string;
    }

    public static Context getCOUIThemeContext(Context context) {
        return isCOUITheme(context) ? context : new ContextThemeWrapper(context, R$style.Theme_COUI);
    }

    public static int getColor(Context context, int i10) {
        return context.getColor(i10);
    }

    public static float getFloat(Context context, int i10) {
        TypedValue typedValue = new TypedValue();
        try {
            context.getResources().getValue(i10, typedValue, true);
            return typedValue.getFloat();
        } catch (Resources.NotFoundException | NumberFormatException e10) {
            Log.e(TAG, "getFloat: failed error=" + e10);
            return 0.0f;
        }
    }

    public static int getResId(Context context, int i10) {
        TypedValue typedValue = new TypedValue();
        context.getResources().getValue(i10, typedValue, true);
        return typedValue.resourceId;
    }

    public static boolean isCOUIDarkTheme(Context context) {
        if (context == null) {
            return false;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(R$styleable.COUITheme);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUITheme_isCOUIDarkTheme, false);
        typedArrayObtainStyledAttributes.recycle();
        return z10;
    }

    public static boolean isCOUIStyle(Context context) {
        Bundle bundle;
        try {
            if ((context instanceof Activity) && (bundle = context.getPackageManager().getActivityInfo(((Activity) context).getComponentName(), 128).metaData) != null) {
                if (METADATA_STYLE_VALUE.equals(bundle.getString(METADATA_STYLE_TITLE))) {
                    return true;
                }
            }
        } catch (Exception e10) {
            COUILog.e(TAG, e10.toString());
        }
        return isCOUITheme(context);
    }

    private static int makeColorAlpha(int i10, int i11) {
        return d.u(i11, Color.alpha(i10));
    }

    public boolean isCOUITheme() {
        return isCOUITheme(this.mContext);
    }

    public void setContext(Context context) {
        if (context != null) {
            this.mContext = context;
        }
    }

    public static boolean isCOUITheme(Context context) {
        if (context == null) {
            return false;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(R$styleable.COUITheme);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUITheme_isCOUITheme, false);
        typedArrayObtainStyledAttributes.recycle();
        return z10;
    }

    public static int getAttrColor(Context context, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i10});
        int color = typedArrayObtainStyledAttributes.getColor(0, i11);
        typedArrayObtainStyledAttributes.recycle();
        return color;
    }
}
