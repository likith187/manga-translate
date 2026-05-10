package com.coui.appcompat.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.preference.Preference;
import androidx.preference.l;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.coui.appcompat.accessibilityutil.COUIAccessibilityUtil;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.support.preference.R$attr;
import com.support.preference.R$dimen;
import com.support.preference.R$id;
import com.support.preference.R$layout;
import com.support.preference.R$string;
import com.support.preference.R$style;
import com.support.preference.R$styleable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class COUIRecommendedPreference extends Preference {
    private COUIRecommendedDrawable mBackground;
    private int mColor;
    private String mHeaderText;
    private float mRadius;
    private List<RecommendedEntity> mRecommendedEntityList;

    public interface OnRecommendedClickListener {
        void onRecommendedClick(View view);
    }

    private static class RecommendedAdapter extends RecyclerView.h {
        private static final int ITEM_VIEW_TYPE_ENTITY = 1;
        private static final int ITEM_VIEW_TYPE_HEADER = 0;
        private int mBackgroundColor;
        private Context mContext;
        private List<RecommendedEntity> mEntities = new ArrayList();
        private float mRadius;

        public RecommendedAdapter(Context context, List<RecommendedEntity> list, String str, float f10, int i10) {
            this.mContext = context;
            this.mRadius = f10;
            this.mBackgroundColor = i10;
            setData(list, str);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public int getItemCount() {
            return this.mEntities.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public int getItemViewType(int i10) {
            return i10 == 0 ? 0 : 1;
        }

        public void setData(List<RecommendedEntity> list, String str) {
            this.mEntities.clear();
            if (list != null) {
                this.mEntities.addAll(list);
                this.mEntities.add(0, new RecommendedEntity(str));
            }
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public void onBindViewHolder(RecommendedVH recommendedVH, int i10) {
            final RecommendedEntity recommendedEntity = this.mEntities.get(i10);
            recommendedVH.mTitleView.setText(recommendedEntity.title);
            recommendedVH.mLayout.setRadius(this.mRadius);
            recommendedVH.mLayout.setBackgroundColor(this.mBackgroundColor);
            if (i10 <= 0) {
                if (i10 == 0) {
                    recommendedVH.mLayout.setClickable(false);
                    recommendedVH.mLayout.setPositionInGroup(1);
                    return;
                }
                return;
            }
            if (i10 == getItemCount() - 1) {
                recommendedVH.mLayout.setPositionInGroup(3);
                recommendedVH.mLayout.setPaddingRelative(recommendedVH.mLayout.getPaddingStart(), recommendedVH.mLayout.getPaddingTop(), recommendedVH.mLayout.getPaddingEnd(), this.mContext.getResources().getDimensionPixelOffset(R$dimen.recommended_recyclerView_padding_bottom));
            } else if (recommendedVH.mLayout.getPaddingBottom() == this.mContext.getResources().getDimensionPixelOffset(R$dimen.recommended_recyclerView_padding_bottom)) {
                recommendedVH.mLayout.setPaddingRelative(recommendedVH.mLayout.getPaddingStart(), recommendedVH.mLayout.getPaddingTop(), recommendedVH.mLayout.getPaddingEnd(), 0);
                recommendedVH.mLayout.setPositionInGroup(2);
            } else {
                recommendedVH.mLayout.setPositionInGroup(2);
            }
            recommendedVH.mLayout.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.preference.COUIRecommendedPreference.RecommendedAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (recommendedEntity.onRecommendedClickListener != null) {
                        recommendedEntity.onRecommendedClickListener.onRecommendedClick(view);
                    }
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public RecommendedVH onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return i10 == 0 ? new RecommendedVH(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_recommended_head_textview, viewGroup, false)) : new RecommendedVH(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_recommended_common_textview, viewGroup, false));
        }
    }

    private static class RecommendedVH extends RecyclerView.d0 {
        private COUICardListSelectedItemLayout mLayout;
        private TextView mTitleView;

        public RecommendedVH(View view) {
            super(view);
            this.mLayout = (COUICardListSelectedItemLayout) view;
            TextView textView = (TextView) view.findViewById(R$id.txt_content);
            this.mTitleView = textView;
            textView.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.coui.appcompat.preference.COUIRecommendedPreference.RecommendedVH.1
                @Override // android.view.View.AccessibilityDelegate
                public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfo accessibilityNodeInfo) {
                    super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfo);
                    accessibilityNodeInfo.setClassName(COUIAccessibilityUtil.BUTTON_CLASS_NAME);
                }
            });
            this.mLayout.setClickable(true);
        }
    }

    public COUIRecommendedPreference(Context context) {
        this(context, null);
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        RecyclerView recyclerView = (RecyclerView) lVar.itemView;
        RecyclerView.h adapter = recyclerView.getAdapter();
        if (adapter == null) {
            recyclerView.setHasFixedSize(true);
            recyclerView.setNestedScrollingEnabled(false);
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
            recyclerView.setAdapter(new RecommendedAdapter(getContext(), this.mRecommendedEntityList, this.mHeaderText, this.mRadius, this.mColor));
        } else {
            ((RecommendedAdapter) adapter).setData(this.mRecommendedEntityList, this.mHeaderText);
        }
        recyclerView.setFocusable(false);
    }

    public void setData(List<RecommendedEntity> list) {
        if (list == null || list.isEmpty()) {
            setVisible(false);
            return;
        }
        setVisible(true);
        this.mRecommendedEntityList = list;
        notifyChanged();
    }

    public void setHeaderText(String str) {
        setVisible(true);
        if (TextUtils.equals(this.mHeaderText, str)) {
            return;
        }
        this.mHeaderText = str;
        notifyChanged();
    }

    public static class RecommendedEntity {
        private OnRecommendedClickListener onRecommendedClickListener;
        private String title;

        public RecommendedEntity(String str) {
            this.title = str;
        }

        public RecommendedEntity(String str, OnRecommendedClickListener onRecommendedClickListener) {
            this.title = str;
            this.onRecommendedClickListener = onRecommendedClickListener;
        }
    }

    public COUIRecommendedPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiRecommendedPreferenceStyle);
    }

    public COUIRecommendedPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Preference_COUIRecommendedPreference);
    }

    public COUIRecommendedPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10);
        setLayoutResource(R$layout.coui_recommended_preference_layout);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIRecommendedPreference, i10, 0);
        this.mRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIRecommendedPreference_recommendedCardBgRadius, COUIContextUtil.getAttrDimens(getContext(), com.support.appcompat.R$attr.couiRoundCornerM));
        this.mColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIRecommendedPreference_recommendedCardBgColor, COUIContextUtil.getAttrColor(getContext(), com.support.appcompat.R$attr.couiColorContainer4));
        this.mBackground = new COUIRecommendedDrawable(this.mRadius, this.mColor);
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.COUIRecommendedPreference_recommendedHeaderTitle);
        this.mHeaderText = string;
        if (string == null) {
            this.mHeaderText = getContext().getResources().getString(R$string.bottom_recommended_header_title);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
