package com.coui.appcompat.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.widget.AppCompatTextView;
import com.oplus.aiunit.sdk.translation.BuildConfig;
import com.support.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUITextView extends AppCompatTextView {
    private static final String TAG = "COUITextViewDebug";
    private final Context mContext;
    private boolean mDebug;

    public COUITextView(Context context) {
        this(context, null);
    }

    private void applyLineSpaceFromViewAppearance(Resources.Theme theme, int i10) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(i10, R$styleable.COUITextAppearance);
        float f10 = typedArrayObtainStyledAttributes.getFloat(R$styleable.COUITextAppearance_android_lineSpacingMultiplier, 1.0f);
        if (f10 >= 1.0f) {
            setLineSpacing(0.0f, f10);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private static int findViewAppearanceResourceId(Resources.Theme theme, AttributeSet attributeSet, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R$styleable.COUITextView, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUITextView_android_textAppearance, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    private static boolean viewAttrsHasAddLineSpace(Context context, Resources.Theme theme, AttributeSet attributeSet, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R$styleable.COUITextView, i10, i11);
        float f10 = typedArrayObtainStyledAttributes.getFloat(R$styleable.COUITextView_android_lineSpacingMultiplier, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        return f10 != 1.0f;
    }

    public void setDebug(Boolean bool) {
        this.mDebug = bool.booleanValue();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i10) {
        super.setTextAppearance(i10);
        applyLineSpaceFromViewAppearance(this.mContext.getTheme(), i10);
    }

    public COUITextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public COUITextView(Context context, AttributeSet attributeSet, int i10) {
        int iFindViewAppearanceResourceId;
        super(context, attributeSet, i10);
        this.mDebug = false;
        this.mContext = context;
        if (BuildConfig.BUILD_TYPE.equals((String) getTag())) {
            setDebug(Boolean.TRUE);
        }
        if (!viewAttrsHasAddLineSpace(context, context.getTheme(), attributeSet, i10, -1) && (iFindViewAppearanceResourceId = findViewAppearanceResourceId(context.getTheme(), attributeSet, i10, -1)) != -1) {
            applyLineSpaceFromViewAppearance(context.getTheme(), iFindViewAppearanceResourceId);
        }
        if (this.mDebug) {
            int fontMetricsInt = getPaint().getFontMetricsInt(null);
            Log.i(TAG, "textSize: " + getTextSize() + ", lineHeight: " + getLineHeight() + ", fontHeight: " + fontMetricsInt + ", Multiplier: " + getLineSpacingMultiplier());
        }
    }
}
