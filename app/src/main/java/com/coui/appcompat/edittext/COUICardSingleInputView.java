package com.coui.appcompat.edittext;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.support.input.R$dimen;
import com.support.input.R$layout;

/* JADX INFO: loaded from: classes.dex */
public class COUICardSingleInputView extends COUIInputView {
    public COUICardSingleInputView(Context context) {
        super(context);
    }

    protected int getCouiCardSingleInputEditTextLayoutId() {
        return R$layout.coui_cardsingle_edittext;
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    protected int getEdittextPaddingBottom() {
        return !TextUtils.isEmpty(this.mTitle) ? getResources().getDimensionPixelSize(R$dimen.coui_input_preference_single_title_padding_bottom) : (int) getResources().getDimension(com.support.appcompat.R$dimen.coui_input_edit_text_no_title_padding_bottom);
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    protected int getLayoutResId() {
        return R$layout.coui_single_input_card_view;
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    protected int getTitlePaddingTop() {
        return !TextUtils.isEmpty(this.mTitle) ? getResources().getDimensionPixelSize(R$dimen.coui_input_preference_single_title_padding_top) : getResources().getDimensionPixelSize(R$dimen.coui_input_preference_title_padding_top);
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    protected COUIEditText instanceCOUIEditText(Context context, AttributeSet attributeSet) {
        COUIEditText cOUIEditText = (COUIEditText) LayoutInflater.from(getContext()).inflate(getCouiCardSingleInputEditTextLayoutId(), (ViewGroup) null, false);
        cOUIEditText.setShowDeleteIcon(false);
        cOUIEditText.setVerticalScrollBarEnabled(false);
        return cOUIEditText;
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    protected boolean isIsCardSingleInput() {
        return true;
    }

    public COUICardSingleInputView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public COUICardSingleInputView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
