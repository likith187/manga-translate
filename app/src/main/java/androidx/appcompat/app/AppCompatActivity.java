package androidx.appcompat.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.z;
import androidx.appcompat.view.b;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.n0;
import androidx.core.app.r;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.y0;
import androidx.lifecycle.z0;
import q0.e;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatActivity extends FragmentActivity implements d, r.a {
    private static final String DELEGATE_TAG = "androidx:appcompat";
    private f mDelegate;
    private Resources mResources;

    class a implements e.b {
        a() {
        }

        @Override // q0.e.b
        public Bundle saveState() {
            Bundle bundle = new Bundle();
            AppCompatActivity.this.getDelegate().A(bundle);
            return bundle;
        }
    }

    class b implements c.b {
        b() {
        }

        @Override // c.b
        public void a(Context context) {
            f delegate = AppCompatActivity.this.getDelegate();
            delegate.r();
            delegate.w(AppCompatActivity.this.getSavedStateRegistry().a(AppCompatActivity.DELEGATE_TAG));
        }
    }

    public AppCompatActivity() {
        b0();
    }

    private void b0() {
        getSavedStateRegistry().c(DELEGATE_TAG, new a());
        addOnContextAvailableListener(new b());
    }

    private void c0() {
        y0.a(getWindow().getDecorView(), this);
        z0.a(getWindow().getDecorView(), this);
        q0.l.a(getWindow().getDecorView(), this);
        z.a(getWindow().getDecorView(), this);
    }

    private boolean d0(KeyEvent keyEvent) {
        return false;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c0();
        getDelegate().c(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(getDelegate().e(context));
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.g()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.p(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i10) {
        return (T) getDelegate().h(i10);
    }

    public f getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = f.f(this, this);
        }
        return this.mDelegate;
    }

    public androidx.appcompat.app.b getDrawerToggleDelegate() {
        return getDelegate().l();
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return getDelegate().o();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.mResources == null && n0.c()) {
            this.mResources = new n0(this, super.getResources());
        }
        Resources resources = this.mResources;
        return resources == null ? super.getResources() : resources;
    }

    public androidx.appcompat.app.a getSupportActionBar() {
        return getDelegate().q();
    }

    @Override // androidx.core.app.r.a
    public Intent getSupportParentActivityIntent() {
        return androidx.core.app.f.a(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().s();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getDelegate().v(configuration);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(super.getResources().getConfiguration(), super.getResources().getDisplayMetrics());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    public void onCreateSupportNavigateUpTaskStack(androidx.core.app.r rVar) {
        rVar.b(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        getDelegate().x();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (d0(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    protected void onLocalesChanged(z.f fVar) {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.j() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i10, Menu menu) {
        return super.onMenuOpened(i10, menu);
    }

    protected void onNightModeChanged(int i10) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i10, Menu menu) {
        super.onPanelClosed(i10, menu);
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        getDelegate().y(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        getDelegate().z();
    }

    public void onPrepareSupportNavigateUpTaskStack(androidx.core.app.r rVar) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        getDelegate().B();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        getDelegate().C();
    }

    @Override // androidx.appcompat.app.d
    public void onSupportActionModeFinished(androidx.appcompat.view.b bVar) {
    }

    @Override // androidx.appcompat.app.d
    public void onSupportActionModeStarted(androidx.appcompat.view.b bVar) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (!supportShouldUpRecreateTask(supportParentActivityIntent)) {
            supportNavigateUpTo(supportParentActivityIntent);
            return true;
        }
        androidx.core.app.r rVarD = androidx.core.app.r.d(this);
        onCreateSupportNavigateUpTaskStack(rVarD);
        onPrepareSupportNavigateUpTaskStack(rVarD);
        rVarD.e();
        try {
            androidx.core.app.a.k(this);
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i10) {
        super.onTitleChanged(charSequence, i10);
        getDelegate().N(charSequence);
    }

    @Override // androidx.appcompat.app.d
    public androidx.appcompat.view.b onWindowStartingSupportActionMode(b.a aVar) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.q()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i10) {
        c0();
        getDelegate().G(i10);
    }

    public void setSupportActionBar(Toolbar toolbar) {
        getDelegate().L(toolbar);
    }

    @Deprecated
    public void setSupportProgress(int i10) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z10) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z10) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z10) {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        super.setTheme(i10);
        getDelegate().M(i10);
    }

    public androidx.appcompat.view.b startSupportActionMode(b.a aVar) {
        return getDelegate().O(aVar);
    }

    public void supportInvalidateOptionsMenu() {
        getDelegate().s();
    }

    public void supportNavigateUpTo(Intent intent) {
        androidx.core.app.f.e(this, intent);
    }

    public boolean supportRequestWindowFeature(int i10) {
        return getDelegate().F(i10);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return androidx.core.app.f.f(this, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        c0();
        getDelegate().H(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c0();
        getDelegate().I(view, layoutParams);
    }
}
