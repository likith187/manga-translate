package com.coloros.translate.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.view.KeyEvent;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.coloros.translate.R;
import com.coloros.translate.base.R$string;
import com.coloros.translate.utils.c0;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f7214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f7215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f7216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private androidx.appcompat.app.c f7217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private OnBackInvokedCallback f7218e;

    public interface a {
        void a(boolean z10);
    }

    private static final class b implements DialogInterface.OnClickListener, DialogInterface.OnKeyListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f7219a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference f7220b;

        public b(a aVar, e caller) {
            r.e(caller, "caller");
            this.f7219a = caller;
            this.f7220b = new WeakReference(aVar);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int i10) {
            r.e(dialog, "dialog");
            if (i10 == -2) {
                if (this.f7220b.get() != null) {
                    Object obj = this.f7220b.get();
                    r.b(obj);
                    ((a) obj).a(false);
                    return;
                }
                return;
            }
            if (i10 == -1 && this.f7220b.get() != null) {
                Object obj2 = this.f7220b.get();
                r.b(obj2);
                ((a) obj2).a(true);
            }
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int i10, KeyEvent event) {
            r.e(dialog, "dialog");
            r.e(event, "event");
            if (i10 != 4 || event.getAction() != 0) {
                return true;
            }
            if (this.f7219a == e.NEED_DISMISS_DIALOG) {
                dialog.dismiss();
            }
            if (this.f7220b.get() == null) {
                return true;
            }
            Object obj = this.f7220b.get();
            r.b(obj);
            ((a) obj).a(false);
            return true;
        }
    }

    public d(Context context, a aVar, e mCallerType) {
        r.e(context, "context");
        r.e(mCallerType, "mCallerType");
        this.f7214a = context;
        this.f7215b = aVar;
        this.f7216c = mCallerType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(d this$0) {
        r.e(this$0, "this$0");
        c0.f7098a.d("AudioPermissionDialog", "backInvokedCallback");
        androidx.appcompat.app.c cVar = this$0.f7217d;
        if (cVar == null || !cVar.isShowing()) {
            return;
        }
        androidx.appcompat.app.c cVar2 = this$0.f7217d;
        if (cVar2 != null) {
            cVar2.dismiss();
        }
        a aVar = this$0.f7215b;
        if (aVar != null) {
            aVar.a(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(d this$0, OnBackInvokedCallback invokedCallback, DialogInterface dialogInterface) {
        androidx.appcompat.app.c cVar;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        r.e(this$0, "this$0");
        r.e(invokedCallback, "$invokedCallback");
        if (this$0.f7218e != null && (cVar = this$0.f7217d) != null && (onBackInvokedDispatcher = cVar.getOnBackInvokedDispatcher()) != null) {
            onBackInvokedDispatcher.unregisterOnBackInvokedCallback(invokedCallback);
        }
        this$0.f7218e = null;
    }

    public final void c() {
        OnBackInvokedCallback onBackInvokedCallback;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33 && (onBackInvokedCallback = this.f7218e) != null) {
            androidx.appcompat.app.c cVar = this.f7217d;
            if (cVar != null && (onBackInvokedDispatcher = cVar.getOnBackInvokedDispatcher()) != null) {
                onBackInvokedDispatcher.unregisterOnBackInvokedCallback(onBackInvokedCallback);
            }
            this.f7218e = null;
        }
        androidx.appcompat.app.c cVar2 = this.f7217d;
        if (cVar2 != null) {
            cVar2.dismiss();
        }
    }

    public final boolean d() {
        androidx.appcompat.app.c cVar = this.f7217d;
        if (cVar != null) {
            r.b(cVar);
            if (cVar.isShowing()) {
                return true;
            }
        }
        return false;
    }

    public final void e() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        androidx.appcompat.app.c cVarCreate = new COUIAlertDialogBuilder(this.f7214a).setTitle((CharSequence) this.f7214a.getString(R.string.audio_permission_dialog_title)).setMessage((CharSequence) this.f7214a.getString(R.string.not_audio_permission_tip_os16)).setPositiveButton((CharSequence) this.f7214a.getString(R$string.action_setting), (DialogInterface.OnClickListener) new b(this.f7215b, this.f7216c)).setNegativeButton((CharSequence) this.f7214a.getString(R$string.action_cancel), (DialogInterface.OnClickListener) new b(this.f7215b, this.f7216c)).setCancelable(false).setOnKeyListener(new b(this.f7215b, this.f7216c)).create();
        this.f7217d = cVarCreate;
        if (cVarCreate != null) {
            cVarCreate.show();
        }
        final OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: com.coloros.translate.widget.b
            public final void onBackInvoked() {
                d.f(this.f7211a);
            }
        };
        this.f7218e = onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            androidx.appcompat.app.c cVar = this.f7217d;
            if (cVar != null && (onBackInvokedDispatcher = cVar.getOnBackInvokedDispatcher()) != null) {
                onBackInvokedDispatcher.registerOnBackInvokedCallback(0, onBackInvokedCallback);
            }
            androidx.appcompat.app.c cVar2 = this.f7217d;
            if (cVar2 != null) {
                cVar2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.coloros.translate.widget.c
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        d.g(this.f7212a, onBackInvokedCallback, dialogInterface);
                    }
                });
            }
        }
    }

    public /* synthetic */ d(Context context, a aVar, e eVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, aVar, (i10 & 4) != 0 ? e.NORMAL : eVar);
    }
}
