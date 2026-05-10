package com.coui.appcompat.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;
import androidx.preference.l;
import com.coui.appcompat.progressbar.COUICompProgressIndicator;
import com.support.preference.R$id;
import com.support.preference.R$layout;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUILoadingPreferenceCategory extends COUIPreferenceCategory {
    private static final String TAG = "LoadingCategory";
    private String mLoadingText;
    private TextView mLoadingTextView;
    private LoadingType mLoadingType;
    private COUICompProgressIndicator mLoadingView;
    private int mWidgetLayoutAfterLoading;
    private int mWidgetLayoutBeforeLoading;

    /* JADX INFO: renamed from: com.coui.appcompat.preference.COUILoadingPreferenceCategory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$coui$appcompat$preference$COUILoadingPreferenceCategory$LoadingType;

        static {
            int[] iArr = new int[LoadingType.values().length];
            $SwitchMap$com$coui$appcompat$preference$COUILoadingPreferenceCategory$LoadingType = iArr;
            try {
                iArr[LoadingType.BEFORE_LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$coui$appcompat$preference$COUILoadingPreferenceCategory$LoadingType[LoadingType.LOADING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$coui$appcompat$preference$COUILoadingPreferenceCategory$LoadingType[LoadingType.PAUSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$coui$appcompat$preference$COUILoadingPreferenceCategory$LoadingType[LoadingType.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$coui$appcompat$preference$COUILoadingPreferenceCategory$LoadingType[LoadingType.AFTER_LOADING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum LoadingType {
        LOADING,
        PAUSE,
        INVISIBLE,
        AFTER_LOADING,
        BEFORE_LOADING
    }

    public COUILoadingPreferenceCategory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLoadingType = LoadingType.LOADING;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUILoadingPreferenceCategory, 0, 0);
        this.mWidgetLayoutAfterLoading = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUILoadingPreferenceCategory_coui_loading_after_layout, 0);
        this.mWidgetLayoutBeforeLoading = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUILoadingPreferenceCategory_coui_loading_before_layout, 0);
        this.mLoadingText = typedArrayObtainStyledAttributes.getString(R$styleable.COUILoadingPreferenceCategory_text_in_loading);
        typedArrayObtainStyledAttributes.recycle();
        if (this.mWidgetLayoutBeforeLoading != 0) {
            this.mLoadingType = LoadingType.BEFORE_LOADING;
        }
    }

    public LoadingType getLoadingType() {
        return this.mLoadingType;
    }

    public void hideLoading() {
        LoadingType loadingType = this.mLoadingType;
        if (loadingType == LoadingType.AFTER_LOADING) {
            Log.e(TAG, "It is no longer loading state");
            return;
        }
        LoadingType loadingType2 = LoadingType.INVISIBLE;
        if (loadingType != loadingType2) {
            this.mLoadingType = loadingType2;
            notifyChanged();
        }
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceCategory, androidx.preference.PreferenceCategory, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        int i10 = AnonymousClass1.$SwitchMap$com$coui$appcompat$preference$COUILoadingPreferenceCategory$LoadingType[this.mLoadingType.ordinal()];
        if (i10 == 1) {
            setWidgetLayoutRes(this.mWidgetLayoutBeforeLoading);
            super.onBindViewHolder(lVar);
            return;
        }
        if (i10 == 2) {
            setWidgetLayoutRes(R$layout.coui_preference_category_widget_layout_loading);
            super.onBindViewHolder(lVar);
            this.mLoadingView = (COUICompProgressIndicator) getWidgetLayout().findViewById(R$id.catagory_loading);
            this.mLoadingTextView = (TextView) getWidgetLayout().findViewById(R$id.text_in_loading);
            this.mLoadingView.setVisibility(0);
            if (this.mLoadingView.getAnimationView() != null) {
                this.mLoadingView.getAnimationView().v();
            }
            if (TextUtils.isEmpty(this.mLoadingText)) {
                this.mLoadingTextView.setVisibility(8);
                return;
            } else {
                this.mLoadingTextView.setText(this.mLoadingText);
                this.mLoadingTextView.setVisibility(0);
                return;
            }
        }
        if (i10 == 3) {
            COUICompProgressIndicator cOUICompProgressIndicator = this.mLoadingView;
            if (cOUICompProgressIndicator != null) {
                cOUICompProgressIndicator.setVisibility(0);
                this.mLoadingView.getAnimationView().u();
                return;
            }
            return;
        }
        if (i10 != 4) {
            if (i10 != 5) {
                return;
            }
            setWidgetLayoutRes(this.mWidgetLayoutAfterLoading);
            super.onBindViewHolder(lVar);
            return;
        }
        COUICompProgressIndicator cOUICompProgressIndicator2 = this.mLoadingView;
        if (cOUICompProgressIndicator2 != null) {
            cOUICompProgressIndicator2.setVisibility(8);
        }
    }

    public void pauseLoading() {
        LoadingType loadingType = this.mLoadingType;
        if (loadingType == LoadingType.AFTER_LOADING) {
            Log.e(TAG, "It is no longer loading state");
            return;
        }
        LoadingType loadingType2 = LoadingType.PAUSE;
        if (loadingType != loadingType2) {
            this.mLoadingType = loadingType2;
            notifyChanged();
        }
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceCategory
    protected boolean rightTextfixSecondaryColor() {
        return true;
    }

    public void setLoadingText(String str) {
        if (TextUtils.equals(this.mLoadingText, str)) {
            return;
        }
        this.mLoadingText = str;
        notifyChanged();
    }

    public void setShowAfterView() {
        setShowAfterView(this.mWidgetLayoutAfterLoading);
    }

    public void startLoading() {
        LoadingType loadingType = this.mLoadingType;
        LoadingType loadingType2 = LoadingType.LOADING;
        if (loadingType != loadingType2) {
            this.mLoadingType = loadingType2;
            notifyChanged();
        }
    }

    public void setShowAfterView(int i10) {
        this.mWidgetLayoutAfterLoading = i10;
        this.mLoadingType = LoadingType.AFTER_LOADING;
        notifyChanged();
    }
}
