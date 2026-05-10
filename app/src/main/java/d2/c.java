package d2;

import android.app.Activity;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.provider.Settings;
import android.view.KeyEvent;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.engine.ITranServiceBinder;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.n0;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f11499e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f11500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.appcompat.app.c f11501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ITranServiceBinder f11502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ServiceConnectionC0132c f11503d;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private static final class b implements DialogInterface.OnKeyListener {
        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int i10, KeyEvent event) {
            r.e(dialog, "dialog");
            r.e(event, "event");
            if (i10 != 4 || event.getAction() != 0) {
                return false;
            }
            c0.f7098a.d("GuideManager", "DialogOnKeyListener onKey");
            dialog.dismiss();
            return false;
        }
    }

    /* JADX INFO: renamed from: d2.c$c, reason: collision with other inner class name */
    public static final class ServiceConnectionC0132c implements ServiceConnection {
        ServiceConnectionC0132c() {
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName componentName) {
            super.onBindingDied(componentName);
            c0.f7098a.i("GuideManager", "ServiceConnection onBindingDied");
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Object objM59constructorimpl;
            c cVar = c.this;
            try {
                r.a aVar = n8.r.Companion;
                c0.f7098a.d("GuideManager", "onServiceConnected");
                cVar.f11502c = ITranServiceBinder.Stub.asInterface(iBinder);
                ITranServiceBinder iTranServiceBinder = cVar.f11502c;
                if (iTranServiceBinder != null && iTranServiceBinder.isDownloadOfflinePackage()) {
                    cVar.h();
                }
                cVar.l();
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("GuideManager", "onServiceConnected " + thM62exceptionOrNullimpl.getMessage());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            c0.f7098a.i("GuideManager", "onServiceDisconnected");
        }
    }

    public c(Activity mActivity) {
        kotlin.jvm.internal.r.e(mActivity, "mActivity");
        this.f11500a = mActivity;
        this.f11503d = new ServiceConnectionC0132c();
    }

    private final boolean g() {
        return Settings.Global.getInt(this.f11500a.getContentResolver(), "is_first_use", 1) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h() {
        androidx.appcompat.app.c cVar;
        androidx.appcompat.app.c cVar2 = this.f11501b;
        if (cVar2 != null && cVar2.isShowing() && (cVar = this.f11501b) != null) {
            cVar.dismiss();
        }
        COUIAlertDialogBuilder cOUIAlertDialogBuilder = new COUIAlertDialogBuilder(this.f11500a);
        cOUIAlertDialogBuilder.setTitle((CharSequence) n0.b(R.string.download_offline_package_title));
        cOUIAlertDialogBuilder.setMessage((CharSequence) n0.b(R.string.download_guide_dialog_content));
        cOUIAlertDialogBuilder.setPositiveButton(R.string.download, new DialogInterface.OnClickListener() { // from class: d2.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                c.i(this.f11497a, dialogInterface, i10);
            }
        });
        cOUIAlertDialogBuilder.setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: d2.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                c.j(this.f11498a, dialogInterface, i10);
            }
        });
        cOUIAlertDialogBuilder.setCancelable(false);
        cOUIAlertDialogBuilder.setOnKeyListener(new b());
        this.f11501b = cOUIAlertDialogBuilder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(c this$0, DialogInterface dialogInterface, int i10) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        androidx.appcompat.app.c cVar = this$0.f11501b;
        if (cVar != null) {
            cVar.dismiss();
        }
        try {
            r.a aVar = n8.r.Companion;
            Intent intent = new Intent("oplus.intent.action.TRANSLATE_DOWNLOADS");
            intent.putExtra("extra_from_package", "com.coloros.translate");
            this$0.f11500a.startActivity(intent);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("GuideManager", "showGuide startActivity error" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(c this$0, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        androidx.appcompat.app.c cVar = this$0.f11501b;
        if (cVar != null) {
            cVar.dismiss();
        }
    }

    private final void k() {
        c0.f7098a.d("GuideManager", "startTranService");
        Intent intent = new Intent("coloros.intent.action.TRANSLATE_SERVICE");
        intent.setPackage("com.coloros.translate.engine");
        try {
            r.a aVar = n8.r.Companion;
            n8.r.m59constructorimpl(Boolean.valueOf(TranslationApplication.f4754b.a().bindService(intent, this.f11503d, 513)));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            n8.r.m59constructorimpl(s.a(th));
        }
    }

    public final void f() {
        if (g()) {
            k();
            Settings.Global.putInt(this.f11500a.getContentResolver(), "is_first_use", 0);
        }
    }

    public final void l() {
        Object objM59constructorimpl;
        c0.f7098a.d("GuideManager", "stopTranslationService");
        try {
            r.a aVar = n8.r.Companion;
            TranslationApplication.f4754b.a().unbindService(this.f11503d);
            this.f11502c = null;
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("GuideManager", "stopTranslationService() " + thM62exceptionOrNullimpl.getMessage());
        }
    }
}
