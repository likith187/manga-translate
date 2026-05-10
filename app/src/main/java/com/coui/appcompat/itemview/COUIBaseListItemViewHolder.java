package com.coui.appcompat.itemview;

import android.R;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.COUIRecyclerView;
import androidx.recyclerview.widget.RecyclerView;
import com.coui.appcompat.cardlist.COUICardListHelper;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.support.preference.R$dimen;
import com.support.preference.R$id;

/* JADX INFO: loaded from: classes.dex */
public class COUIBaseListItemViewHolder extends RecyclerView.d0 implements COUIRecyclerView.b {
    public static final int BOTH_RIGHT_ANGLE = 2;
    public static final int BOTH_ROUNDED_CORNER = 4;
    public static final int BOTTOM_ROUNDED_CORNER = 3;
    public static final int TOP_ROUNDED_CORNER = 1;
    private int mCardType;
    private int mDividerPadding;
    private TextView mListTitleView;
    private View mRootListItemView;

    public COUIBaseListItemViewHolder(View view) {
        super(view);
        this.mCardType = 2;
        this.mDividerPadding = view.getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_divider_default_horizontal_padding);
        this.mRootListItemView = view.findViewById(R$id.coui_preference);
        this.mListTitleView = (TextView) view.findViewById(R.id.title);
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public boolean drawDivider() {
        View view = this.mRootListItemView;
        if (view == null || !(view instanceof COUICardListSelectedItemLayout)) {
            return false;
        }
        int i10 = this.mCardType;
        return i10 == 1 || i10 == 2;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public View getDividerEndAlignView() {
        return null;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public int getDividerEndInset() {
        return this.mDividerPadding;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public View getDividerStartAlignView() {
        return this.mListTitleView;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public int getDividerStartInset() {
        return this.mDividerPadding;
    }

    public void setCornerType(int i10) {
        this.mCardType = i10;
        COUICardListHelper.setItemCardBackground(this.mRootListItemView, i10);
    }
}
