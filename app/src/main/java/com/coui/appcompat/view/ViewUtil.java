package com.coui.appcompat.view;

import android.R;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOverlay;

/* JADX INFO: loaded from: classes.dex */
public class ViewUtil {
    public static ViewGroup getContentView(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    public static ViewOverlay getContentViewOverlay(View view) {
        return getOverlay(getContentView(view));
    }

    private static ViewOverlay getOverlay(View view) {
        if (view == null) {
            return null;
        }
        return view.getOverlay();
    }
}
