package com.coui.appcompat.preference;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import androidx.preference.Preference;
import androidx.preference.l;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.poplist.COUIClickSelectMenu;
import com.coui.appcompat.poplist.PopupListItem;
import com.coui.appcompat.poplist.PreciseClickHelper;
import com.coui.appcompat.uiutil.AnimLevel;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.preference.R$attr;
import com.support.preference.R$styleable;
import java.util.ArrayList;
import t.k;

/* JADX INFO: loaded from: classes.dex */
public class COUIMenuPreference extends COUIPreference {
    private static final String TAG = "COUIMenuPreference";
    private AnimLevel mBlurMinAnimLevel;
    private COUIClickSelectMenu mCouiClickSelectMenu;
    private boolean mEnableAddExtraWdith;
    private CharSequence[] mEntries;
    private CharSequence[] mEntryValues;
    private int[] mGroupIds;
    private boolean mHelperEnabled;
    private final AdapterView.OnItemClickListener mItemClickListener;
    private PreciseClickHelper.OnPreciseClickListener mListener;
    private int mMaxShowItemCount;
    private int mPopInputMethod;
    private ArrayList<PopupListItem> mPopupListItems;
    private ColorStateList mSelectItemColor;
    private String mSummary;
    private boolean mUseBackgroundBlur;
    private String mValue;
    private boolean mValueSet;

    public COUIMenuPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    private int getValueIndex() {
        return findIndexOfValue(this.mValue);
    }

    public int findIndexOfValue(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.mEntryValues) == null) {
            return 0;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (!TextUtils.isEmpty(this.mEntryValues[length]) && this.mEntryValues[length].equals(str)) {
                return length;
            }
        }
        return 0;
    }

    public CharSequence[] getEntries() {
        return this.mEntries;
    }

    public CharSequence[] getEntryValues() {
        return this.mEntryValues;
    }

    @Override // androidx.preference.Preference
    public CharSequence getSummary() {
        if (getSummaryProvider() != null) {
            return getSummaryProvider().a(this);
        }
        String value = getValue();
        CharSequence summary = super.getSummary();
        String str = this.mSummary;
        if (str == null) {
            return summary;
        }
        if (value == null) {
            value = "";
        }
        String str2 = String.format(str, value);
        if (TextUtils.equals(str2, summary)) {
            return summary;
        }
        Log.w(TAG, "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return str2;
    }

    public String getValue() {
        return this.mValue;
    }

    @Override // com.coui.appcompat.preference.COUIPreference, androidx.preference.Preference
    public void onBindViewHolder(final l lVar) {
        super.onBindViewHolder(lVar);
        if (this.mCouiClickSelectMenu == null) {
            this.mCouiClickSelectMenu = new COUIClickSelectMenu(getContext(), lVar.itemView);
        }
        this.mCouiClickSelectMenu.getPopup().setUseBackgroundBlur(this.mUseBackgroundBlur, this.mBlurMinAnimLevel);
        this.mCouiClickSelectMenu.getPopup().setInputMethodMode(this.mPopInputMethod);
        ColorStateList colorStateList = this.mSelectItemColor;
        if (colorStateList != null) {
            this.mCouiClickSelectMenu.registerForClickSelectItems(lVar.itemView, this.mPopupListItems, colorStateList.getDefaultColor());
        } else {
            this.mCouiClickSelectMenu.registerForClickSelectItems(lVar.itemView, this.mPopupListItems);
        }
        this.mCouiClickSelectMenu.setEnableAddExtraWidth(this.mEnableAddExtraWdith);
        this.mCouiClickSelectMenu.setHelperEnabled(this.mHelperEnabled);
        PreciseClickHelper.OnPreciseClickListener onPreciseClickListener = this.mListener;
        if (onPreciseClickListener != null) {
            this.mCouiClickSelectMenu.setOnPreciseClickListener(onPreciseClickListener);
        }
        this.mCouiClickSelectMenu.setOnItemClickListener(this.mItemClickListener);
        this.mCouiClickSelectMenu.setMaxShowItemCount(this.mMaxShowItemCount);
        lVar.itemView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.coui.appcompat.preference.COUIMenuPreference.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                lVar.itemView.removeOnAttachStateChangeListener(this);
                if (COUIMenuPreference.this.mCouiClickSelectMenu == null || !COUIMenuPreference.this.mCouiClickSelectMenu.getPopup().isShowing()) {
                    return;
                }
                COUIMenuPreference.this.mCouiClickSelectMenu.getPopup().dismiss();
            }
        });
    }

    @Override // androidx.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i10) {
        return typedArray.getString(i10);
    }

    @Override // androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (this.mValueSet) {
            return;
        }
        setValue(savedState.mValue);
    }

    @Override // androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.mValue = getValue();
        return savedState;
    }

    @Override // androidx.preference.Preference
    protected void onSetInitialValue(Object obj) {
        setValue(getPersistedString((String) obj));
    }

    public void setBlurMinAnimLevel(AnimLevel animLevel) {
        this.mBlurMinAnimLevel = animLevel;
        COUIClickSelectMenu cOUIClickSelectMenu = this.mCouiClickSelectMenu;
        if (cOUIClickSelectMenu != null) {
            cOUIClickSelectMenu.getPopup().setUseBackgroundBlur(this.mUseBackgroundBlur, this.mBlurMinAnimLevel);
        }
    }

    public void setEnableAddExtraWidth(boolean z10) {
        this.mEnableAddExtraWdith = z10;
    }

    @Override // androidx.preference.Preference
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        setMenuShowEnabled(z10);
    }

    public void setEntries(CharSequence[] charSequenceArr) {
        this.mEntries = charSequenceArr;
        this.mValueSet = false;
        if (charSequenceArr == null || charSequenceArr.length <= 0) {
            return;
        }
        this.mPopupListItems.clear();
        PopupListItem.Builder builder = new PopupListItem.Builder();
        for (int i10 = 0; i10 < charSequenceArr.length; i10++) {
            PopupListItem.Builder title = builder.reset().setTitle((String) charSequenceArr[i10]);
            int[] iArr = this.mGroupIds;
            title.setGroupId(iArr != null ? iArr[i10] : -1);
            this.mPopupListItems.add(builder.build());
        }
    }

    public void setEntryValues(CharSequence[] charSequenceArr) {
        this.mEntryValues = charSequenceArr;
        this.mValueSet = false;
        if (this.mEntries != null || charSequenceArr == null || charSequenceArr.length <= 0) {
            return;
        }
        this.mPopupListItems.clear();
        PopupListItem.Builder builder = new PopupListItem.Builder();
        for (int i10 = 0; i10 < charSequenceArr.length; i10++) {
            PopupListItem.Builder title = builder.reset().setTitle((String) charSequenceArr[i10]);
            int[] iArr = this.mGroupIds;
            title.setGroupId(iArr != null ? iArr[i10] : -1);
            this.mPopupListItems.add(builder.build());
        }
    }

    public void setMaxShowItemCount(int i10) {
        if (this.mMaxShowItemCount != i10) {
            this.mMaxShowItemCount = i10;
            notifyChanged();
        }
    }

    public void setMenuItemSelectColor(ColorStateList colorStateList) {
        this.mSelectItemColor = colorStateList;
    }

    public void setMenuShow(boolean z10) {
        COUIClickSelectMenu cOUIClickSelectMenu = this.mCouiClickSelectMenu;
        if (cOUIClickSelectMenu != null) {
            cOUIClickSelectMenu.setPopupState(z10);
        }
    }

    public void setMenuShowEnabled(boolean z10) {
        this.mHelperEnabled = z10;
        COUIClickSelectMenu cOUIClickSelectMenu = this.mCouiClickSelectMenu;
        if (cOUIClickSelectMenu != null) {
            cOUIClickSelectMenu.setHelperEnabled(z10);
        }
    }

    @Override // com.coui.appcompat.preference.COUIPreference
    public void setOnPreciseClickListener(PreciseClickHelper.OnPreciseClickListener onPreciseClickListener) {
        this.mListener = onPreciseClickListener;
    }

    public void setPopInputMethod(int i10) {
        this.mPopInputMethod = i10;
        COUIClickSelectMenu cOUIClickSelectMenu = this.mCouiClickSelectMenu;
        if (cOUIClickSelectMenu != null) {
            cOUIClickSelectMenu.getPopup().setInputMethodMode(this.mPopInputMethod);
        }
    }

    public void setPopupList(ArrayList<PopupListItem> arrayList) {
        this.mPopupListItems.clear();
        this.mPopupListItems.addAll(arrayList);
    }

    @Override // androidx.preference.Preference
    public void setSummary(CharSequence charSequence) {
        super.setSummary(charSequence);
        if (charSequence == null && this.mSummary != null) {
            this.mSummary = null;
        } else {
            if (charSequence == null || charSequence.equals(this.mSummary)) {
                return;
            }
            this.mSummary = charSequence.toString();
        }
    }

    public void setUseBackgroundBlur(boolean z10) {
        this.mUseBackgroundBlur = z10;
        COUIClickSelectMenu cOUIClickSelectMenu = this.mCouiClickSelectMenu;
        if (cOUIClickSelectMenu != null) {
            cOUIClickSelectMenu.getPopup().setUseBackgroundBlur(this.mUseBackgroundBlur, this.mBlurMinAnimLevel);
        }
    }

    public void setValue(String str) {
        if (TextUtils.equals(this.mValue, str) && this.mValueSet) {
            return;
        }
        this.mValue = str;
        this.mValueSet = true;
        if (this.mPopupListItems.size() > 0 && !TextUtils.isEmpty(str)) {
            for (int i10 = 0; i10 < this.mPopupListItems.size(); i10++) {
                PopupListItem popupListItem = this.mPopupListItems.get(i10);
                String title = popupListItem.getTitle();
                CharSequence[] charSequenceArr = this.mEntries;
                if (TextUtils.equals(title, charSequenceArr != null ? charSequenceArr[findIndexOfValue(str)] : str)) {
                    popupListItem.setChecked(true);
                } else {
                    popupListItem.setChecked(false);
                }
            }
        }
        persistString(str);
        notifyChanged();
    }

    public void setValueIndex(int i10) {
        CharSequence[] charSequenceArr = this.mEntryValues;
        if (charSequenceArr != null) {
            setValue(charSequenceArr[i10].toString());
        }
    }

    private static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.coui.appcompat.preference.COUIMenuPreference.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        String mValue;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mValue = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.mValue);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public COUIMenuPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10);
        this.mItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.coui.appcompat.preference.COUIMenuPreference.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i12, long j10) {
                if (COUIMenuPreference.this.mEntryValues != null && i12 < COUIMenuPreference.this.mEntryValues.length && i12 >= 0) {
                    COUIMenuPreference cOUIMenuPreference = COUIMenuPreference.this;
                    if (cOUIMenuPreference.callChangeListener(cOUIMenuPreference.mEntryValues[i12].toString())) {
                        COUIMenuPreference cOUIMenuPreference2 = COUIMenuPreference.this;
                        cOUIMenuPreference2.setValue(cOUIMenuPreference2.mEntryValues[i12].toString());
                    }
                } else if (COUIMenuPreference.this.mEntryValues == null) {
                    COUILog.e(COUIMenuPreference.TAG, "OnItemClick, mEntryValues is null");
                } else {
                    COUILog.e(COUIMenuPreference.TAG, "OnItemClick, position is error:" + i12 + ",length:" + COUIMenuPreference.this.mEntryValues.length);
                }
                COUIMenuPreference.this.mCouiClickSelectMenu.dismiss();
            }
        };
        this.mPopupListItems = new ArrayList<>();
        this.mHelperEnabled = true;
        this.mEnableAddExtraWdith = true;
        this.mMaxShowItemCount = -1;
        this.mUseBackgroundBlur = false;
        this.mBlurMinAnimLevel = UIUtil.ANIM_LEVEL_SUPPORT_BLUR_MIN;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIMenuPreference, i10, 0);
        int i12 = R$styleable.COUIMenuPreference_android_entryValues;
        this.mEntryValues = k.o(typedArrayObtainStyledAttributes, i12, i12);
        int i13 = R$styleable.COUIMenuPreference_android_entries;
        this.mEntries = k.o(typedArrayObtainStyledAttributes, i13, i13);
        this.mMaxShowItemCount = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIMenuPreference_maxShowItemCount, -1);
        this.mPopInputMethod = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIMenuPreference_popInputMethod, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUIMenuPreference_groupIds, 0);
        if (resourceId != 0) {
            this.mGroupIds = context.getResources().getIntArray(resourceId);
        }
        this.mValue = typedArrayObtainStyledAttributes.getString(R$styleable.COUIMenuPreference_android_value);
        typedArrayObtainStyledAttributes.recycle();
        setEntryValues(this.mEntryValues);
        setEntries(this.mEntries);
        setValue(this.mValue);
    }

    public void setEntries(int i10) {
        setEntries(getContext().getResources().getTextArray(i10));
    }

    public void setEntryValues(int i10) {
        setEntryValues(getContext().getResources().getTextArray(i10));
    }

    public COUIMenuPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiMenuPreferenceStyle);
    }

    public COUIMenuPreference(Context context) {
        this(context, null);
    }
}
