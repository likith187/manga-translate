package com.coui.appcompat.card;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.coui.appcompat.card.BaseCardInstructionAdapter;
import com.coui.appcompat.card.BaseCardInstructionAdapter.BaseHolder;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseCardInstructionAdapter<HOLDER extends BaseHolder> extends RecyclerView.h {
    public static final Companion Companion = new Companion(null);
    public static final String EMPTY_STRING = "";
    private final List<BaseDisplayInfo> displayInfos;
    private int pagerLastHeight;

    public static abstract class BaseHolder extends RecyclerView.d0 {
        private final BaseCardInstructionAdapter<?> adapter;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseHolder(View itemView, BaseCardInstructionAdapter<?> adapter) {
            super(itemView);
            r.e(itemView, "itemView");
            r.e(adapter, "adapter");
            this.adapter = adapter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setMatchChildrenMaxHeight$lambda$1(BaseHolder this$0) {
            r.e(this$0, "this$0");
            this$0.itemView.measure(View.MeasureSpec.makeMeasureSpec(this$0.itemView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, Integer.MIN_VALUE));
            ViewParent parent = this$0.itemView.getParent();
            ViewParent parent2 = parent != null ? parent.getParent() : null;
            if (parent2 instanceof ViewPager2) {
                ViewPager2 viewPager2 = (ViewPager2) parent2;
                if (viewPager2.getLayoutParams().height != b9.d.c(((BaseCardInstructionAdapter) this$0.adapter).pagerLastHeight, this$0.itemView.getMeasuredHeight())) {
                    ViewGroup.LayoutParams layoutParams = viewPager2.getLayoutParams();
                    int iC = b9.d.c(((BaseCardInstructionAdapter) this$0.adapter).pagerLastHeight, this$0.itemView.getMeasuredHeight());
                    layoutParams.height = iC;
                    ((BaseCardInstructionAdapter) this$0.adapter).pagerLastHeight = iC;
                    viewPager2.setLayoutParams(layoutParams);
                }
            }
        }

        public abstract void bind(BaseDisplayInfo baseDisplayInfo);

        protected final BaseCardInstructionAdapter<?> getAdapter() {
            return this.adapter;
        }

        public final void setMatchChildrenMaxHeight() {
            if (((BaseCardInstructionAdapter) this.adapter).displayInfos.size() <= 1) {
                return;
            }
            this.itemView.post(new Runnable() { // from class: com.coui.appcompat.card.a
                @Override // java.lang.Runnable
                public final void run() {
                    BaseCardInstructionAdapter.BaseHolder.setMatchChildrenMaxHeight$lambda$1(this.f7263a);
                }
            });
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void updateContentAndVisibility(TextView textView, CharSequence content) {
            r.e(textView, "<this>");
            r.e(content, "content");
            updateContentAndVisibility(textView, content, textView);
        }

        private Companion() {
        }

        public final void updateContentAndVisibility(TextView textView, CharSequence content, View view) {
            r.e(textView, "<this>");
            r.e(content, "content");
            r.e(view, "view");
            if (content.length() <= 0) {
                view.setVisibility(8);
            } else {
                view.setVisibility(0);
                textView.setText(content);
            }
        }
    }

    public BaseCardInstructionAdapter() {
        this.displayInfos = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.displayInfos.size();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void updateDisplayInfos(List<? extends BaseDisplayInfo> displayInfos) {
        r.e(displayInfos, "displayInfos");
        this.displayInfos.clear();
        this.displayInfos.addAll(displayInfos);
        this.pagerLastHeight = 0;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onBindViewHolder(HOLDER holder, int i10) {
        r.e(holder, "holder");
        holder.bind(this.displayInfos.get(i10));
        holder.setMatchChildrenMaxHeight();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseCardInstructionAdapter(List<BaseDisplayInfo> displayInfos) {
        this();
        r.e(displayInfos, "displayInfos");
        this.displayInfos.clear();
        this.displayInfos.addAll(displayInfos);
    }

    public /* synthetic */ BaseCardInstructionAdapter(List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new ArrayList() : list);
    }
}
