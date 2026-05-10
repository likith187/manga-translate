package com.coui.appcompat.baseview.delegate;

import android.view.MenuItem;
import androidx.core.view.y0;
import com.coui.appcompat.baseview.base.COUIBaseActivity;
import com.coui.appcompat.baseview.util.FoldSettingsHelper;
import com.coui.appcompat.baseview.util.SystemBarUtil;
import com.coui.appcompat.theme.COUIThemeOverlay;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.collections.i;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import r.a;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityDelegate {
    public static final Companion Companion = new Companion(null);
    public static final int REQUEST_PERMISSION_CODE = 1000;
    private final COUIBaseActivity activity;
    private FoldModeObserver observer;
    private final ArrayList<String> permissionNotGrantedList;
    private final ArrayList<String> permissionRationaleList;
    private final ArrayList<String> permissionRequestList;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private static final class FoldModeObserver implements FoldSettingsHelper.FoldSettingsObserver {
        private final WeakReference<COUIBaseActivity> reference;

        public FoldModeObserver(COUIBaseActivity activity) {
            r.e(activity, "activity");
            this.reference = new WeakReference<>(activity);
        }

        @Override // com.coui.appcompat.baseview.util.FoldSettingsHelper.FoldSettingsObserver
        public void observe(int i10) {
            COUIBaseActivity cOUIBaseActivity = this.reference.get();
            if (cOUIBaseActivity != null) {
                cOUIBaseActivity.setRequestedOrientation(cOUIBaseActivity.getOrientation(i10));
                cOUIBaseActivity.onFoldModeChange(i10);
            }
        }
    }

    public ActivityDelegate(COUIBaseActivity activity) {
        r.e(activity, "activity");
        this.activity = activity;
        this.permissionNotGrantedList = new ArrayList<>();
        this.permissionRequestList = new ArrayList<>();
        this.permissionRationaleList = new ArrayList<>();
    }

    private final boolean checkAndRequestPermissions(String[] strArr) {
        for (String str : i.W(strArr)) {
            if (a.a(this.activity, str) == -1) {
                this.permissionNotGrantedList.add(str);
            }
        }
        return this.permissionNotGrantedList.isEmpty();
    }

    private final boolean checkPermissionRationale() {
        for (String str : o.r0(this.permissionNotGrantedList)) {
            if (androidx.core.app.a.r(this.activity, str)) {
                this.permissionRationaleList.add(str);
            } else {
                this.permissionRequestList.add(str);
            }
        }
        return this.permissionRequestList.isEmpty();
    }

    private final void showPermissionRationale() {
        this.activity.showPermissionRationale(this.permissionRationaleList);
    }

    public final void onCreate() {
        int statusType = this.activity.getStatusType();
        if (statusType == 0) {
            SystemBarUtil.setStatusBarTransparentAndBlackFont(this.activity);
            androidx.appcompat.app.a supportActionBar = this.activity.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.s(this.activity.isHomeAsUpEnabled());
            }
        } else if (statusType == 1) {
            y0.b(this.activity.getWindow(), false);
            this.activity.getWindow().setStatusBarColor(0);
        }
        COUIThemeOverlay.getInstance().applyThemeOverlays(this.activity);
        if (this.activity.getNeedFoldObserver()) {
            FoldSettingsHelper foldSettingsHelper = FoldSettingsHelper.INSTANCE;
            foldSettingsHelper.init(this.activity);
            if (foldSettingsHelper.isSupportFoldScreen()) {
                COUIBaseActivity cOUIBaseActivity = this.activity;
                cOUIBaseActivity.setRequestedOrientation(cOUIBaseActivity.getOrientation(foldSettingsHelper.getFoldStatus()));
                FoldModeObserver foldModeObserver = new FoldModeObserver(this.activity);
                this.observer = foldModeObserver;
                foldSettingsHelper.registerFoldObserver(foldModeObserver);
            }
        }
    }

    public final void onDestroy() {
        if (this.activity.getNeedFoldObserver()) {
            FoldSettingsHelper foldSettingsHelper = FoldSettingsHelper.INSTANCE;
            if (foldSettingsHelper.isSupportFoldScreen()) {
                FoldModeObserver foldModeObserver = this.observer;
                if (foldModeObserver == null) {
                    r.r("observer");
                    foldModeObserver = null;
                }
                foldSettingsHelper.unregisterFoldObserver(foldModeObserver);
            }
        }
    }

    public final void onOptionsItemSelected(MenuItem item) {
        r.e(item, "item");
        if (item.getItemId() == 16908332) {
            this.activity.finish();
        }
    }

    public final void onRequestPermissionsResult(int i10, String[] permissions, int[] grantResults) {
        r.e(permissions, "permissions");
        r.e(grantResults, "grantResults");
        if (i10 == 1000) {
            if (!(grantResults.length == 0)) {
                ArrayList<String> arrayList = new ArrayList<>();
                ArrayList<String> arrayList2 = new ArrayList<>();
                int length = permissions.length;
                for (int i11 = 0; i11 < length; i11++) {
                    if (grantResults[i11] == 0) {
                        arrayList.add(permissions[i11]);
                    } else {
                        arrayList2.add(permissions[i11]);
                    }
                }
                this.activity.permissionsGranted(arrayList);
                this.activity.permissionsNotGranted(arrayList2);
            }
        }
        showPermissionRationale();
    }

    public final void requestPermissions(String[] strArr) {
        if (strArr == null || strArr.length == 0 || !this.activity.shouldRequestPermission()) {
            return;
        }
        if (checkAndRequestPermissions(strArr)) {
            this.activity.permissionAllGranted();
        } else if (checkPermissionRationale()) {
            showPermissionRationale();
        } else {
            androidx.core.app.a.o(this.activity, (String[]) this.permissionRequestList.toArray(new String[0]), 1000);
        }
    }
}
