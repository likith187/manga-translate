package androidx.core.view;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    private static final String TAG = "ActionProvider(support)";
    private final Context mContext;
    private a mSubUiVisibilityListener;
    private InterfaceC0015b mVisibilityListener;

    public interface a {
        void a(boolean z10);
    }

    /* JADX INFO: renamed from: androidx.core.view.b$b, reason: collision with other inner class name */
    public interface InterfaceC0015b {
        void onActionProviderVisibilityChanged(boolean z10);
    }

    public b(Context context) {
        this.mContext = context;
    }

    public Context getContext() {
        return this.mContext;
    }

    public abstract boolean hasSubMenu();

    public abstract boolean isVisible();

    public abstract View onCreateActionView(MenuItem menuItem);

    public abstract boolean onPerformDefaultAction();

    public abstract void onPrepareSubMenu(SubMenu subMenu);

    public abstract boolean overridesItemVisibility();

    public void reset() {
        this.mVisibilityListener = null;
        this.mSubUiVisibilityListener = null;
    }

    public void setSubUiVisibilityListener(a aVar) {
        this.mSubUiVisibilityListener = aVar;
    }

    public abstract void setVisibilityListener(InterfaceC0015b interfaceC0015b);

    public void subUiVisibilityChanged(boolean z10) {
        a aVar = this.mSubUiVisibilityListener;
        if (aVar != null) {
            aVar.a(z10);
        }
    }
}
