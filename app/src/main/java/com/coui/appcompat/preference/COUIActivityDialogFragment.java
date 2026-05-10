package com.coui.appcompat.preference;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.o;
import androidx.core.view.m0;
import androidx.preference.c;
import com.coui.appcompat.cardlist.COUICardListHelper;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.coui.appcompat.version.COUIVersionUtil;
import com.google.android.material.appbar.AppBarLayout;
import com.oplus.aiunit.core.ConfigPackage;
import com.support.appcompat.R$drawable;
import com.support.dialog.R$style;
import com.support.preference.R$bool;
import com.support.preference.R$dimen;
import com.support.preference.R$id;
import com.support.preference.R$layout;

/* JADX INFO: loaded from: classes.dex */
public class COUIActivityDialogFragment extends c {
    private int mClickedDialogEntryIndex;
    private o mDialog;

    private static class CheckedItemAdapter extends ArrayAdapter<CharSequence> {
        CheckedItemAdapter(Context context, int i10, int i11, CharSequence[] charSequenceArr) {
            super(context, i10, i11, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public COUIActivityDialogPreference getListPreference() {
        return (COUIActivityDialogPreference) getPreference();
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getApplicationContext().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            try {
                return context.getApplicationContext().getResources().getDimensionPixelSize(identifier);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return -1;
    }

    private View getStatusBarView(Context context) {
        int statusBarHeight = getStatusBarHeight(context);
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, statusBarHeight));
        return imageView;
    }

    public static COUIActivityDialogFragment newInstance(String str) {
        COUIActivityDialogFragment cOUIActivityDialogFragment = new COUIActivityDialogFragment();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        cOUIActivityDialogFragment.setArguments(bundle);
        return cOUIActivityDialogFragment;
    }

    @Override // androidx.preference.f, androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle bundle) {
        final o oVar = new o(getActivity(), R$style.Theme_COUI_ActivityDialog) { // from class: com.coui.appcompat.preference.COUIActivityDialogFragment.1
            @Override // android.app.Dialog, android.view.Window.Callback
            public boolean onMenuItemSelected(int i10, MenuItem menuItem) {
                if (menuItem.getItemId() != 16908332) {
                    return super.onMenuItemSelected(i10, menuItem);
                }
                dismiss();
                return true;
            }
        };
        this.mDialog = oVar;
        if (oVar.getWindow() != null) {
            Window window = oVar.getWindow();
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(1024);
            window.setStatusBarColor(0);
            int systemUiVisibility = decorView.getSystemUiVisibility();
            int oSVersionCode = COUIVersionUtil.getOSVersionCode();
            boolean z10 = getResources().getBoolean(R$bool.list_status_white_enabled);
            if (oSVersionCode >= 6 || oSVersionCode == 0) {
                window.addFlags(Integer.MIN_VALUE);
                decorView.setSystemUiVisibility(COUIDarkModeUtil.isNightMode(oVar.getContext()) ? systemUiVisibility & (-8209) : !z10 ? systemUiVisibility | ConfigPackage.FRAME_SIZE_6 : systemUiVisibility | COUIToolTips.ALIGN_TOP);
            }
        }
        View viewInflate = LayoutInflater.from(getActivity()).inflate(R$layout.coui_preference_listview, (ViewGroup) null);
        COUIToolbar cOUIToolbar = (COUIToolbar) viewInflate.findViewById(R$id.toolbar);
        cOUIToolbar.setNavigationIcon(r.a.e(cOUIToolbar.getContext(), R$drawable.coui_back_arrow));
        cOUIToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.preference.COUIActivityDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                COUIActivityDialogFragment.this.mDialog.dismiss();
            }
        });
        final AppBarLayout appBarLayout = (AppBarLayout) viewInflate.findViewById(R$id.abl);
        final ListView listView = (ListView) viewInflate.findViewById(R$id.coui_preference_listview);
        View viewFindViewById = viewInflate.findViewById(R$id.divider_line);
        if (getResources().getBoolean(R$bool.is_dialog_preference_immersive)) {
            viewFindViewById.setVisibility(8);
        }
        m0.x0(listView, true);
        View statusBarView = getStatusBarView(appBarLayout.getContext());
        appBarLayout.addView(statusBarView, 0, statusBarView.getLayoutParams());
        appBarLayout.post(new Runnable() { // from class: com.coui.appcompat.preference.COUIActivityDialogFragment.3
            @Override // java.lang.Runnable
            public void run() {
                if (COUIActivityDialogFragment.this.isAdded()) {
                    int measuredHeight = appBarLayout.getMeasuredHeight() + COUIActivityDialogFragment.this.getResources().getDimensionPixelSize(R$dimen.support_preference_listview_margin_top);
                    View view = new View(appBarLayout.getContext());
                    view.setVisibility(4);
                    view.setLayoutParams(new AbsListView.LayoutParams(-1, measuredHeight));
                    listView.addHeaderView(view);
                }
            }
        });
        if (getListPreference() != null) {
            this.mClickedDialogEntryIndex = getListPreference().findIndexOfValue(getListPreference().getValue());
            cOUIToolbar.setTitle(getListPreference().getDialogTitle());
            listView.setAdapter((ListAdapter) new CheckedItemAdapter(getActivity(), R$layout.coui_preference_listview_item, R$id.checkedtextview, getListPreference().getEntries()) { // from class: com.coui.appcompat.preference.COUIActivityDialogFragment.4
                @Override // android.widget.ArrayAdapter, android.widget.Adapter
                public View getView(final int i10, View view, ViewGroup viewGroup) {
                    View view2 = super.getView(i10, view, viewGroup);
                    if (i10 == COUIActivityDialogFragment.this.mClickedDialogEntryIndex) {
                        ListView listView2 = listView;
                        listView2.setItemChecked(listView2.getHeaderViewsCount() + i10, true);
                    }
                    View viewFindViewById2 = view2.findViewById(R$id.item_divider);
                    int count = getCount();
                    if (viewFindViewById2 != null) {
                        if (count == 1 || i10 == count - 1) {
                            viewFindViewById2.setVisibility(8);
                        } else {
                            viewFindViewById2.setVisibility(0);
                        }
                    }
                    view2.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.preference.COUIActivityDialogFragment.4.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view3) {
                            COUIActivityDialogFragment.this.mClickedDialogEntryIndex = i10;
                            COUIActivityDialogFragment.this.onClick(null, -1);
                            oVar.dismiss();
                        }
                    });
                    COUICardListHelper.setItemCardBackground(view2, COUICardListHelper.getPositionInGroup(COUIActivityDialogFragment.this.getListPreference().getEntries().length, i10));
                    return view2;
                }
            });
        }
        listView.setChoiceMode(1);
        oVar.setContentView(viewInflate);
        return oVar;
    }

    @Override // androidx.preference.c, androidx.preference.f
    public void onDialogClosed(boolean z10) {
        COUIActivityDialogPreference listPreference = getListPreference();
        if (!z10 || this.mClickedDialogEntryIndex < 0) {
            return;
        }
        String string = getListPreference().getEntryValues()[this.mClickedDialogEntryIndex].toString();
        if (listPreference.callChangeListener(string)) {
            listPreference.setValue(string);
        }
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (getPreference() == null) {
            dismiss();
        }
    }
}
