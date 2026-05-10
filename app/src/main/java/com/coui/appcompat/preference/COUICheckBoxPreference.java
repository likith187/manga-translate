package com.coui.appcompat.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.preference.CheckBoxPreference;
import androidx.preference.l;
import androidx.recyclerview.widget.COUIRecyclerView;
import com.coui.appcompat.cardlist.COUICardListHelper;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.checkbox.COUICheckBox;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.support.appcompat.R$string;
import com.support.preference.R$attr;
import com.support.preference.R$dimen;
import com.support.preference.R$style;
import com.support.preference.R$styleable;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class COUICheckBoxPreference extends CheckBoxPreference implements COUIRecyclerView.b {
    private CharSequence mAssignment;
    private int mAssignmentColor;
    private COUICheckBox mCheckBox;
    private Context mContext;
    private int mDividerDefaultHorizontalPadding;
    private View mItemView;
    private TextView mTitleView;

    public COUICheckBoxPreference(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onBindViewHolder$lambda$0(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        view.performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE);
        return false;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public boolean drawDivider() {
        if (!(this.mItemView instanceof COUICardListSelectedItemLayout)) {
            return false;
        }
        int positionInGroup = COUICardListHelper.getPositionInGroup(this);
        return positionInGroup == 1 || positionInGroup == 2;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public /* bridge */ /* synthetic */ View getDividerEndAlignView() {
        return super.getDividerEndAlignView();
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public int getDividerEndInset() {
        return this.mDividerDefaultHorizontalPadding;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public View getDividerStartAlignView() {
        return this.mTitleView;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public int getDividerStartInset() {
        return this.mDividerDefaultHorizontalPadding;
    }

    @Override // androidx.preference.CheckBoxPreference, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        View view;
        super.onBindViewHolder(lVar);
        View view2 = lVar != null ? lVar.itemView : null;
        this.mItemView = view2;
        if (view2 != null) {
            view2.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.coui.appcompat.preference.COUICheckBoxPreference.onBindViewHolder.1
                @Override // android.view.View.AccessibilityDelegate
                public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfo info) {
                    r.e(host, "host");
                    r.e(info, "info");
                    super.onInitializeAccessibilityNodeInfo(host, info);
                    String string = COUICheckBoxPreference.this.getContext().getResources().getString(R$string.coui_accessibility_switch);
                    r.d(string, "context.resources.getStr…oui_accessibility_switch)");
                    String string2 = COUICheckBoxPreference.this.getContext().getResources().getString(R$string.coui_accessibility_select_all);
                    r.d(string2, "context.resources.getStr…accessibility_select_all)");
                    COUICheckBox cOUICheckBox = COUICheckBoxPreference.this.mCheckBox;
                    if (cOUICheckBox != null && cOUICheckBox.getState() == 1) {
                        string = string2;
                    }
                    info.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, string));
                }
            });
        }
        View viewB = lVar != null ? lVar.b(R.id.title) : null;
        this.mTitleView = viewB instanceof TextView ? (TextView) viewB : null;
        View viewB2 = lVar != null ? lVar.b(R.id.checkbox) : null;
        COUICheckBox cOUICheckBox = viewB2 instanceof COUICheckBox ? (COUICheckBox) viewB2 : null;
        this.mCheckBox = cOUICheckBox;
        if (cOUICheckBox != null) {
            cOUICheckBox.setState(this.mChecked ? 2 : 0);
        }
        if (lVar != null && (view = lVar.itemView) != null) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.coui.appcompat.preference.a
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view3, MotionEvent motionEvent) {
                    return COUICheckBoxPreference.onBindViewHolder$lambda$0(view3, motionEvent);
                }
            });
        }
        COUIPreferenceUtils.bindAssignmentView(lVar, this.mAssignment, this.mAssignmentColor);
        r.b(lVar);
        COUICardListHelper.setItemCardBackground(lVar.itemView, COUICardListHelper.getPositionInGroup(this));
    }

    public final void setAssignment(CharSequence assignment) {
        r.e(assignment, "assignment");
        if (TextUtils.equals(this.mAssignment, assignment)) {
            return;
        }
        this.mAssignment = assignment;
        notifyChanged();
    }

    public final void setAssignmentColor(int i10) {
        if (this.mAssignmentColor != i10) {
            this.mAssignmentColor = i10;
            notifyChanged();
        }
    }

    public COUICheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiCheckBoxPreferenceStyle);
    }

    public COUICheckBoxPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Preference_COUI_COUICheckBoxPreference);
    }

    public COUICheckBoxPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mContext = context;
        this.mDividerDefaultHorizontalPadding = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_divider_default_horizontal_padding);
        r.b(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPreference, i10, i11);
        r.d(typedArrayObtainStyledAttributes, "context!!.obtainStyledAt…tr, defStyleRes\n        )");
        this.mAssignmentColor = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_couiAssignmentColor, 0);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.COUICheckBoxPreference, i10, i11);
        r.d(typedArrayObtainStyledAttributes2, "context.obtainStyledAttr…    defStyleRes\n        )");
        this.mAssignment = typedArrayObtainStyledAttributes2.getText(R$styleable.COUICheckBoxPreference_couiCheckBoxAssignment);
        typedArrayObtainStyledAttributes2.recycle();
    }
}
