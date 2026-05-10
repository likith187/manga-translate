package com.coui.appcompat.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.Preference;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.preference.l;
import com.coui.appcompat.cardlist.COUICardListHelper;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.edittext.COUIEditText;
import com.coui.appcompat.edittext.COUIInputView;
import com.support.input.R$dimen;
import com.support.preference.R$attr;
import com.support.preference.R$id;
import com.support.preference.R$layout;
import com.support.preference.R$style;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIInputPreference extends COUIPreference {
    private CharSequence mContent;
    private COUIEditText mEditText;
    private COUICardListItemInputView mInputView;
    private View mPreferenceView;
    private CharSequence mTitle;

    public static class COUICardListItemInputView extends COUIInputView {
        boolean mJustShowFocusLine;

        public COUICardListItemInputView(Context context) {
            this(context, null);
        }

        @Override // com.coui.appcompat.edittext.COUIInputView
        protected int getCouiInputPreferenceEditTextLayoutId() {
            return R$layout.coui_preference_scrollededittext;
        }

        @Override // com.coui.appcompat.edittext.COUIInputView
        protected int getEdittextPaddingBottom() {
            return !TextUtils.isEmpty(this.mTitle) ? getResources().getDimensionPixelSize(R$dimen.coui_input_edit_error_text_has_title_padding_bottom) : (int) getResources().getDimension(R$dimen.coui_input_edit_text_no_title_padding_bottom_inPreference);
        }

        @Override // com.coui.appcompat.edittext.COUIInputView
        protected int getEdittextPaddingTop() {
            return !TextUtils.isEmpty(this.mTitle) ? getResources().getDimensionPixelSize(R$dimen.coui_input_edit_text_has_title_padding_top) : (int) getResources().getDimension(R$dimen.coui_input_edit_text_no_title_padding_top_inPreference);
        }

        @Override // com.coui.appcompat.edittext.COUIInputView
        protected COUIEditText instanceCOUIEditText(Context context, AttributeSet attributeSet) {
            COUIEditText cOUIEditText = (COUIEditText) LayoutInflater.from(getContext()).inflate(getCouiInputPreferenceEditTextLayoutId(), (ViewGroup) null, false);
            cOUIEditText.setShowDeleteIcon(false);
            cOUIEditText.setVerticalScrollBarEnabled(false);
            return cOUIEditText;
        }

        @Override // com.coui.appcompat.edittext.COUIInputView
        protected boolean isIsCardSingleInput() {
            return true;
        }

        public void setJustShowFocusLine(boolean z10) {
            if (this.mJustShowFocusLine != z10) {
                this.mJustShowFocusLine = z10;
                COUIEditText cOUIEditText = this.mEditText;
                if (cOUIEditText != null) {
                    cOUIEditText.setJustShowFocusLine(z10);
                }
            }
        }

        public COUICardListItemInputView(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public COUICardListItemInputView(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            this.mJustShowFocusLine = false;
        }
    }

    public COUIInputPreference(Context context) {
        this(context, null);
    }

    @Override // com.coui.appcompat.preference.COUIPreference, androidx.recyclerview.widget.COUIRecyclerView.b
    public boolean drawDivider() {
        if (this.mEditText.isErrorState()) {
            return false;
        }
        return super.drawDivider();
    }

    public CharSequence getContent() {
        COUIEditText cOUIEditText = this.mEditText;
        return cOUIEditText != null ? cOUIEditText.getCouiEditTexttNoEllipsisText() : this.mContent;
    }

    public COUIEditText getEditText() {
        return this.mEditText;
    }

    public CharSequence getHint() {
        return this.mInputView.getHint();
    }

    public COUIInputView getInputView() {
        return this.mInputView;
    }

    public View getPreferenceView() {
        return this.mPreferenceView;
    }

    @Override // com.coui.appcompat.preference.COUIPreference, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        View view = lVar.itemView;
        this.mPreferenceView = view;
        if (view instanceof COUICardListSelectedItemLayout) {
            ((COUICardListSelectedItemLayout) view).consumeDispatchingEventForState(true);
        }
        ViewGroup viewGroup = (ViewGroup) this.mPreferenceView.findViewById(R$id.edittext_container);
        if (viewGroup != null) {
            if (!this.mInputView.equals((COUICardListItemInputView) viewGroup.findViewById(R.id.input))) {
                this.mInputView.getEditText().refresh();
                ViewParent parent = this.mInputView.getParent();
                if (parent != null) {
                    ((ViewGroup) parent).removeView(this.mInputView);
                }
                viewGroup.removeAllViews();
                viewGroup.addView(this.mInputView, -1, -2);
                int positionInGroup = COUICardListHelper.getPositionInGroup(this);
                if (positionInGroup == 3 || positionInGroup == 4) {
                    this.mInputView.getEditText().setBoxBackgroundMode(3);
                }
            }
        }
        this.mInputView.setEnabled(isEnabled());
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
        setContent(savedState.mText);
    }

    @Override // androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        CharSequence charSequence = this.mContent;
        if (charSequence != null) {
            savedState.mText = charSequence.toString();
        }
        return savedState;
    }

    @Override // androidx.preference.Preference
    protected void onSetInitialValue(boolean z10, Object obj) {
        if (TextUtils.isEmpty(this.mContent)) {
            return;
        }
        setContent(z10 ? getPersistedString(this.mContent.toString()) : (String) obj);
    }

    public void setContent(CharSequence charSequence) {
        COUIEditText cOUIEditText = this.mEditText;
        if (cOUIEditText != null) {
            cOUIEditText.setCouiEditTexttNoEllipsisText((String) charSequence);
            this.mContent = charSequence;
            return;
        }
        if (!TextUtils.equals(this.mContent, charSequence)) {
            notifyChanged();
        }
        boolean zShouldDisableDependents = shouldDisableDependents();
        this.mContent = charSequence;
        if (charSequence != null) {
            persistString(charSequence.toString());
        }
        boolean zShouldDisableDependents2 = shouldDisableDependents();
        if (zShouldDisableDependents2 != zShouldDisableDependents) {
            notifyDependencyChange(zShouldDisableDependents2);
        }
    }

    public void setHint(CharSequence charSequence) {
        CharSequence hint = getHint();
        if ((charSequence != null || hint == null) && (charSequence == null || charSequence.equals(hint))) {
            return;
        }
        this.mInputView.setHint(charSequence);
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public boolean shouldDisableDependents() {
        return TextUtils.isEmpty(this.mContent) || super.shouldDisableDependents();
    }

    private static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.coui.appcompat.preference.COUIInputPreference.SavedState.1
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
        String mText;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.mText = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.mText);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public COUIInputPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiInputPreferenceStyle);
    }

    public COUIInputPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Preference_COUI_COUIInputPreference);
    }

    public COUIInputPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIInputPreference, i10, i11);
        this.mContent = typedArrayObtainStyledAttributes.getText(R$styleable.COUIInputPreference_couiContent);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIInputPreference_couiJustShowFocusLine, true);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, androidx.preference.R$styleable.Preference, i10, i11);
        this.mTitle = typedArrayObtainStyledAttributes2.getText(androidx.preference.R$styleable.Preference_android_title);
        typedArrayObtainStyledAttributes2.recycle();
        COUICardListItemInputView cOUICardListItemInputView = new COUICardListItemInputView(context, attributeSet);
        this.mInputView = cOUICardListItemInputView;
        cOUICardListItemInputView.setId(R.id.input);
        this.mInputView.setTitle(this.mTitle);
        this.mEditText = this.mInputView.getEditText();
        this.mInputView.setJustShowFocusLine(z10);
    }
}
