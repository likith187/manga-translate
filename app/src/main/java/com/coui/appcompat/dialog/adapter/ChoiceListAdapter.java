package com.coui.appcompat.dialog.adapter;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.coui.appcompat.checkbox.COUICheckBox;
import com.support.dialog.R$id;
import e.a;

/* JADX INFO: loaded from: classes.dex */
public class ChoiceListAdapter extends BaseAdapter {
    private boolean[] mCheckBoxStates;
    private Context mContext;
    private boolean[] mDisableStatus;
    private int[] mIcons;
    private boolean mIsBottom;
    private boolean mIsMultiChoice;
    private boolean mIsTop;
    private CharSequence[] mItems;
    private int mLayoutResId;
    private MaxCheckedListener mMaxCheckedListener;
    private int mMaxCheckedNum;
    private MultiChoiceItemClickListener mMultiChoiceItemClickListener;
    private CharSequence[] mSummaries;

    public interface MaxCheckedListener {
        void maxCheckedNotice(int i10);
    }

    public interface MultiChoiceItemClickListener {
        void onClick(int i10, boolean z10);
    }

    static class ViewHolder {
        COUICheckBox checkBox;
        ImageView divider;
        ImageView icon;
        TextView itemText;
        RadioButton radioButton;
        FrameLayout radioLayout;
        TextView summaryText;
        LinearLayout textLayout;

        ViewHolder() {
        }
    }

    public ChoiceListAdapter(Context context, int i10, CharSequence[] charSequenceArr, CharSequence[] charSequenceArr2, boolean[] zArr, boolean z10) {
        this(context, i10, charSequenceArr, charSequenceArr2, zArr, null, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCheckedNum() {
        int i10 = 0;
        for (boolean z10 : this.mCheckBoxStates) {
            if (z10) {
                i10++;
            }
        }
        return i10;
    }

    private void initCheckboxStates(boolean[] zArr) {
        for (int i10 = 0; i10 < zArr.length; i10++) {
            boolean[] zArr2 = this.mCheckBoxStates;
            if (i10 >= zArr2.length) {
                return;
            }
            zArr2[i10] = zArr[i10];
        }
    }

    private void initCheckboxStatesDisable(boolean[] zArr) {
        for (int i10 = 0; i10 < zArr.length; i10++) {
            boolean[] zArr2 = this.mDisableStatus;
            if (i10 >= zArr2.length) {
                return;
            }
            zArr2[i10] = zArr[i10];
        }
    }

    private void setPaddingBottom(View view, int i10) {
        if (view == null) {
            return;
        }
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i10);
    }

    public boolean[] getCheckBoxStates() {
        return this.mCheckBoxStates;
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

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        return i10;
    }

    public MultiChoiceItemClickListener getMultiChoiceItemClickListener() {
        return this.mMultiChoiceItemClickListener;
    }

    public CharSequence getSummary(int i10) {
        CharSequence[] charSequenceArr = this.mSummaries;
        if (charSequenceArr != null && i10 < charSequenceArr.length) {
            return charSequenceArr[i10];
        }
        return null;
    }

    @Override // android.widget.Adapter
    public View getView(final int i10, View view, ViewGroup viewGroup) {
        View viewInflate;
        ViewHolder viewHolder;
        if (view == null) {
            viewHolder = new ViewHolder();
            viewInflate = LayoutInflater.from(this.mContext).inflate(this.mLayoutResId, viewGroup, false);
            viewHolder.icon = (ImageView) viewInflate.findViewById(R$id.alertdialog_choice_icon);
            viewHolder.textLayout = (LinearLayout) viewInflate.findViewById(R$id.text_layout);
            viewHolder.itemText = (TextView) viewInflate.findViewById(R.id.text1);
            viewHolder.summaryText = (TextView) viewInflate.findViewById(R$id.summary_text2);
            viewHolder.divider = (ImageView) viewInflate.findViewById(R$id.item_divider);
            if (this.mIsMultiChoice) {
                viewHolder.checkBox = (COUICheckBox) viewInflate.findViewById(R$id.checkbox);
            } else {
                viewHolder.radioLayout = (FrameLayout) viewInflate.findViewById(R$id.radio_layout);
                viewHolder.radioButton = (RadioButton) viewInflate.findViewById(R$id.radio_button);
            }
            if (this.mDisableStatus[i10]) {
                viewHolder.itemText.setEnabled(false);
                viewHolder.summaryText.setEnabled(false);
                if (this.mIsMultiChoice) {
                    viewHolder.checkBox.setEnabled(false);
                } else {
                    viewHolder.radioButton.setEnabled(false);
                }
                viewInflate.setOnTouchListener(new View.OnTouchListener() { // from class: com.coui.appcompat.dialog.adapter.ChoiceListAdapter.1
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view2, MotionEvent motionEvent) {
                        return true;
                    }
                });
            }
            viewInflate.setTag(viewHolder);
        } else {
            viewInflate = view;
            viewHolder = (ViewHolder) view.getTag();
        }
        if (this.mIsMultiChoice) {
            viewHolder.checkBox.setState(this.mCheckBoxStates[i10] ? 2 : 0);
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.dialog.adapter.ChoiceListAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    View viewFindViewById = view2.findViewById(R$id.checkbox);
                    if (!(viewFindViewById instanceof COUICheckBox)) {
                        if (viewFindViewById instanceof CheckBox) {
                            CheckBox checkBox = (CheckBox) viewFindViewById;
                            checkBox.setChecked(!checkBox.isChecked());
                            if (ChoiceListAdapter.this.mMultiChoiceItemClickListener != null) {
                                ChoiceListAdapter.this.mMultiChoiceItemClickListener.onClick(i10, checkBox.isChecked());
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    COUICheckBox cOUICheckBox = (COUICheckBox) viewFindViewById;
                    if (cOUICheckBox.getState() == 2) {
                        cOUICheckBox.setState(0);
                        ChoiceListAdapter.this.mCheckBoxStates[i10] = false;
                    } else if (ChoiceListAdapter.this.mMaxCheckedNum <= 0 || ChoiceListAdapter.this.mMaxCheckedNum > ChoiceListAdapter.this.getCheckedNum()) {
                        cOUICheckBox.setState(2);
                        ChoiceListAdapter.this.mCheckBoxStates[i10] = true;
                    } else if (ChoiceListAdapter.this.mMaxCheckedListener != null) {
                        ChoiceListAdapter.this.mMaxCheckedListener.maxCheckedNotice(ChoiceListAdapter.this.mMaxCheckedNum);
                    }
                    if (ChoiceListAdapter.this.mMultiChoiceItemClickListener != null) {
                        ChoiceListAdapter.this.mMultiChoiceItemClickListener.onClick(i10, cOUICheckBox.getState() == 2);
                    }
                }
            });
        } else {
            viewHolder.radioButton.setChecked(this.mCheckBoxStates[i10]);
        }
        CharSequence item = getItem(i10);
        CharSequence summary = getSummary(i10);
        viewHolder.itemText.setText(item);
        if (TextUtils.isEmpty(summary)) {
            viewHolder.summaryText.setVisibility(8);
        } else {
            viewHolder.summaryText.setVisibility(0);
            viewHolder.summaryText.setText(summary);
        }
        if (viewHolder.divider != null) {
            if (getCount() == 1 || i10 == getCount() - 1) {
                viewHolder.divider.setVisibility(8);
            } else {
                viewHolder.divider.setVisibility(0);
            }
        }
        int[] iArr = this.mIcons;
        if (iArr != null) {
            Drawable drawableB = a.b(this.mContext, iArr[i10]);
            if (drawableB != null) {
                viewHolder.icon.setVisibility(0);
                viewHolder.icon.setImageDrawable(drawableB);
            } else {
                viewHolder.icon.setVisibility(8);
            }
        }
        return viewInflate;
    }

    public void setCheckboxState(int i10, int i11, ListView listView) {
        View childAt;
        COUICheckBox cOUICheckBox;
        int firstVisiblePosition = i11 - listView.getFirstVisiblePosition();
        if (firstVisiblePosition < 0 || (childAt = listView.getChildAt(firstVisiblePosition)) == null) {
            return;
        }
        ViewHolder viewHolder = (ViewHolder) childAt.getTag();
        if (!this.mIsMultiChoice || (cOUICheckBox = viewHolder.checkBox) == null) {
            return;
        }
        cOUICheckBox.setState(i10);
        this.mCheckBoxStates[i11] = i10 == 2;
    }

    public void setIcons(int[] iArr) {
        this.mIcons = iArr;
    }

    public void setIsBottom(boolean z10) {
        this.mIsBottom = z10;
    }

    public void setIsTop(boolean z10) {
        this.mIsTop = z10;
    }

    public void setMaxCheckedListener(MaxCheckedListener maxCheckedListener) {
        this.mMaxCheckedListener = maxCheckedListener;
    }

    public void setMultiChoiceItemClickListener(MultiChoiceItemClickListener multiChoiceItemClickListener) {
        this.mMultiChoiceItemClickListener = multiChoiceItemClickListener;
    }

    public ChoiceListAdapter(Context context, int i10, CharSequence[] charSequenceArr, CharSequence[] charSequenceArr2, boolean[] zArr, boolean[] zArr2, boolean z10) {
        this(context, i10, charSequenceArr, charSequenceArr2, zArr, zArr2, z10, 0);
    }

    @Override // android.widget.Adapter
    public CharSequence getItem(int i10) {
        CharSequence[] charSequenceArr = this.mItems;
        if (charSequenceArr == null) {
            return null;
        }
        return charSequenceArr[i10];
    }

    public ChoiceListAdapter(Context context, int i10, CharSequence[] charSequenceArr, CharSequence[] charSequenceArr2, boolean[] zArr, boolean[] zArr2, boolean z10, int i11) {
        this.mIsTop = false;
        this.mIsBottom = false;
        this.mContext = context;
        this.mLayoutResId = i10;
        this.mItems = charSequenceArr;
        this.mSummaries = charSequenceArr2;
        this.mIsMultiChoice = z10;
        this.mCheckBoxStates = new boolean[charSequenceArr.length];
        if (zArr != null) {
            initCheckboxStates(zArr);
        }
        this.mDisableStatus = new boolean[this.mItems.length];
        if (zArr2 != null) {
            initCheckboxStatesDisable(zArr2);
        }
        this.mMaxCheckedNum = i11;
    }

    public ChoiceListAdapter(Context context, int i10, CharSequence[] charSequenceArr, CharSequence[] charSequenceArr2) {
        this(context, i10, charSequenceArr, charSequenceArr2, null, false);
    }
}
