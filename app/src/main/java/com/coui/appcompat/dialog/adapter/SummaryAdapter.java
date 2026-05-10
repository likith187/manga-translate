package com.coui.appcompat.dialog.adapter;

import android.R;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.support.dialog.R$dimen;
import com.support.dialog.R$id;
import com.support.dialog.R$layout;

/* JADX INFO: loaded from: classes.dex */
public class SummaryAdapter extends BaseAdapter {
    private static final int LAYOUT = R$layout.coui_alert_dialog_summary_item;
    private Context mContext;
    private boolean mIsBottom;
    private boolean mIsTop;
    private CharSequence[] mItems;
    private CharSequence[] mSummaries;
    private int[] mTextColor;

    private class ViewHolder {
        ImageView mDivider;
        TextView mItemView;
        LinearLayout mMainLayout;
        TextView mSummaryView;

        private ViewHolder() {
        }
    }

    public SummaryAdapter(Context context, boolean z10, boolean z11, CharSequence[] charSequenceArr, CharSequence[] charSequenceArr2, int[] iArr) {
        this.mIsTop = z10;
        this.mIsBottom = z11;
        this.mContext = context;
        this.mItems = charSequenceArr;
        this.mSummaries = charSequenceArr2;
        this.mTextColor = iArr;
    }

    private void resetPadding(int i10, View view) {
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_vertical_button_padding_bottom_extra_new);
        int dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_vertical_button_padding_vertical_new);
        int paddingLeft = view.getPaddingLeft();
        int paddingRight = view.getPaddingRight();
        if (i10 == getCount() - 1 && this.mIsBottom) {
            view.setPadding(paddingLeft, dimensionPixelSize2, paddingRight, dimensionPixelSize + dimensionPixelSize2);
        } else if (i10 == 0 && this.mIsTop) {
            view.setPadding(paddingLeft, dimensionPixelSize + dimensionPixelSize2, paddingRight, dimensionPixelSize2);
        } else {
            view.setPadding(paddingLeft, dimensionPixelSize2, paddingRight, dimensionPixelSize2);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        CharSequence[] charSequenceArr = this.mItems;
        if (charSequenceArr == null) {
            return 0;
        }
        return charSequenceArr.length;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    public CharSequence getSummary(int i10) {
        CharSequence[] charSequenceArr = this.mSummaries;
        if (charSequenceArr != null && i10 < charSequenceArr.length) {
            return charSequenceArr[i10];
        }
        return null;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = LayoutInflater.from(this.mContext).inflate(LAYOUT, viewGroup, false);
            viewHolder = new ViewHolder();
            viewHolder.mItemView = (TextView) view.findViewById(R.id.text1);
            viewHolder.mSummaryView = (TextView) view.findViewById(R$id.summary_text2);
            viewHolder.mDivider = (ImageView) view.findViewById(R$id.item_divider);
            viewHolder.mMainLayout = (LinearLayout) view.findViewById(R$id.main_layout);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        CharSequence item = getItem(i10);
        CharSequence summary = getSummary(i10);
        viewHolder.mItemView.setText(item);
        if (TextUtils.isEmpty(summary)) {
            viewHolder.mSummaryView.setVisibility(8);
        } else {
            viewHolder.mSummaryView.setVisibility(0);
            viewHolder.mSummaryView.setText(summary);
        }
        resetPadding(i10, viewHolder.mMainLayout);
        int[] iArr = this.mTextColor;
        if (iArr != null && i10 >= 0 && i10 < iArr.length) {
            viewHolder.mItemView.setTextColor(iArr[i10]);
        }
        if (viewHolder.mDivider != null) {
            if (getCount() <= 1 || i10 == getCount() - 1) {
                viewHolder.mDivider.setVisibility(8);
            } else {
                viewHolder.mDivider.setVisibility(0);
            }
        }
        view.requestLayout();
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.Adapter
    public CharSequence getItem(int i10) {
        CharSequence[] charSequenceArr = this.mItems;
        if (charSequenceArr == null) {
            return null;
        }
        return charSequenceArr[i10];
    }
}
