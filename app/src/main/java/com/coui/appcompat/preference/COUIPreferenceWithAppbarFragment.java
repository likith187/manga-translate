package com.coui.appcompat.preference;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import androidx.core.view.m0;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.COUIRecyclerView;
import androidx.recyclerview.widget.RecyclerView;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.google.android.material.appbar.AppBarLayout;
import com.support.appcompat.R$drawable;
import com.support.preference.R$id;
import com.support.preference.R$layout;
import com.support.toolbar.R$dimen;

/* JADX INFO: loaded from: classes.dex */
public abstract class COUIPreferenceWithAppbarFragment extends COUIPreferenceFragment {
    private int mDividerHeight;
    private RecyclerView mRecyclerView = null;
    private COUIToolbar mToolbar = null;
    private boolean mContainerFitsSystemWindows = false;

    private int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private View getStatusBarView() {
        ImageView imageView = new ImageView(getActivity());
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, getStatusBarHeight(imageView.getContext())));
        return imageView;
    }

    public abstract String getTitle();

    public COUIToolbar getToolbar() {
        return this.mToolbar;
    }

    public boolean isCustomWindowBackground() {
        return false;
    }

    protected boolean needStatusBarViewHolder() {
        if (Build.VERSION.SDK_INT > 34) {
            return !this.mContainerFitsSystemWindows;
        }
        return true;
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceFragment, androidx.preference.g
    public RecyclerView onCreateRecyclerView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        COUIRecyclerView cOUIRecyclerView = (COUIRecyclerView) layoutInflater.inflate(R$layout.coui_preference_percent_recyclerview, viewGroup, false);
        cOUIRecyclerView.setEnablePointerDownAction(false);
        cOUIRecyclerView.setLayoutManager(onCreateLayoutManager());
        COUIDarkModeUtil.setForceDarkAllow(cOUIRecyclerView, false);
        return cOUIRecyclerView;
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceFragment, androidx.preference.g, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (Build.VERSION.SDK_INT > 34 && viewGroup != null) {
            this.mContainerFitsSystemWindows = viewGroup.getFitsSystemWindows();
        }
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceFragment, androidx.preference.g, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        COUIToolbar cOUIToolbar = (COUIToolbar) view.findViewById(R$id.toolbar);
        this.mToolbar = cOUIToolbar;
        if (cOUIToolbar == null) {
            return;
        }
        cOUIToolbar.setNavigationIcon(R$drawable.coui_back_arrow);
        this.mToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.preference.COUIPreferenceWithAppbarFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                FragmentActivity activity = COUIPreferenceWithAppbarFragment.this.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            }
        });
        this.mToolbar.setTitle(getTitle());
        this.mDividerHeight = getResources().getDimensionPixelSize(R$dimen.toolbar_divider_height);
        final AppBarLayout appBarLayout = (AppBarLayout) view.findViewById(R$id.appbar_layout);
        if (appBarLayout != null) {
            if (needStatusBarViewHolder()) {
                View statusBarView = getStatusBarView();
                appBarLayout.addView(statusBarView, 0, statusBarView.getLayoutParams());
            }
            appBarLayout.setTouchscreenBlocksFocus(false);
        }
        RecyclerView listView = getListView();
        this.mRecyclerView = listView;
        if (listView != null) {
            m0.x0(listView, true);
            this.mRecyclerView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.coui.appcompat.preference.COUIPreferenceWithAppbarFragment.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    RecyclerView.p layoutManager = COUIPreferenceWithAppbarFragment.this.mRecyclerView.getLayoutManager();
                    View viewFindViewByPosition = layoutManager == null ? null : layoutManager.findViewByPosition(0);
                    if (viewFindViewByPosition != null) {
                        int measuredHeight = appBarLayout.getMeasuredHeight() - COUIPreferenceWithAppbarFragment.this.mDividerHeight;
                        if (measuredHeight > 0) {
                            RecyclerView.q qVar = (RecyclerView.q) viewFindViewByPosition.getLayoutParams();
                            ((ViewGroup.MarginLayoutParams) qVar).height = measuredHeight;
                            viewFindViewByPosition.setLayoutParams(qVar);
                        }
                        COUIPreferenceWithAppbarFragment.this.mRecyclerView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                }
            });
        }
        if (getActivity() == null || isCustomWindowBackground()) {
            return;
        }
        getActivity().getWindow().setBackgroundDrawableResource(com.support.preference.R$drawable.coui_window_background_with_card_selector);
    }
}
