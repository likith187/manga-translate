package com.coloros.translate.base;

import android.os.Bundle;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.f0;
import com.coloros.translate.utils.o0;
import com.coloros.translate.utils.z;
import com.coui.appcompat.theme.COUIThemeOverlay;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public class BaseSettingActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4798a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c0.f7098a.d("BaseSettingActivity", "onCreate");
        setRequestedOrientation((o0.e() || z.g(null, 1, null)) ? -1 : 5);
        COUIThemeOverlay.getInstance().applyThemeOverlays(this);
        Window window = getWindow();
        r.d(window, "getWindow(...)");
        f0.b(window);
    }
}
