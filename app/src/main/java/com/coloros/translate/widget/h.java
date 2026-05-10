package com.coloros.translate.widget;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Window;
import com.coloros.translate.base.R$string;
import com.coloros.translate.base.R$style;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import com.coui.appcompat.theme.COUIThemeOverlay;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a */
    private final Context f7229a;

    /* JADX INFO: renamed from: b */
    private final b f7230b;

    /* JADX INFO: renamed from: c */
    private androidx.appcompat.app.c f7231c;

    private static final class a implements DialogInterface.OnClickListener, DialogInterface.OnKeyListener {

        /* JADX INFO: renamed from: a */
        private final WeakReference f7232a;

        public a(Context context, b bVar) {
            r.e(context, "context");
            this.f7232a = new WeakReference(bVar);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int i10) {
            b bVar;
            r.e(dialog, "dialog");
            if (i10 != -2) {
                if (i10 == -1 && (bVar = (b) this.f7232a.get()) != null) {
                    bVar.a(true);
                    return;
                }
                return;
            }
            b bVar2 = (b) this.f7232a.get();
            if (bVar2 != null) {
                bVar2.a(false);
            }
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int i10, KeyEvent event) {
            r.e(dialog, "dialog");
            r.e(event, "event");
            if (i10 == 4 && event.getAction() == 0) {
                dialog.dismiss();
                b bVar = (b) this.f7232a.get();
                if (bVar != null) {
                    bVar.a(false);
                }
            }
            return false;
        }
    }

    public interface b {
        void a(boolean z10);
    }

    public h(Context context, b bVar) {
        r.e(context, "context");
        this.f7229a = context;
        this.f7230b = bVar;
    }

    public static final void d(h this$0, DialogInterface dialogInterface) {
        r.e(this$0, "this$0");
        this$0.f7231c = null;
    }

    public final void b() {
        androidx.appcompat.app.c cVar = this.f7231c;
        if (cVar != null) {
            cVar.dismiss();
        }
        this.f7231c = null;
    }

    public final void c() {
        ContextThemeWrapper contextThemeWrapper;
        Window window;
        Context context = this.f7229a;
        if (context instanceof Activity) {
            contextThemeWrapper = (ContextThemeWrapper) context;
        } else {
            contextThemeWrapper = new ContextThemeWrapper(this.f7229a, R$style.AppBaseTheme);
            contextThemeWrapper.setTheme(R$style.AppBaseTheme);
            COUIThemeOverlay.getInstance().applyThemeOverlays(contextThemeWrapper);
        }
        androidx.appcompat.app.c cVarCreate = new COUIAlertDialogBuilder(contextThemeWrapper).setTitle((CharSequence) this.f7229a.getString(R$string.clipboard_permission_dialog_title)).setMessage((CharSequence) this.f7229a.getString(R$string.not_clipboard_permission_tip_os16)).setPositiveButton((CharSequence) this.f7229a.getString(R$string.action_setting), (DialogInterface.OnClickListener) new a(this.f7229a, this.f7230b)).setNegativeButton((CharSequence) this.f7229a.getString(R$string.action_cancel), (DialogInterface.OnClickListener) new a(this.f7229a, this.f7230b)).setCancelable(false).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.coloros.translate.widget.g
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                h.d(this.f7228a, dialogInterface);
            }
        }).setOnKeyListener(new a(this.f7229a, this.f7230b)).create();
        this.f7231c = cVarCreate;
        if (!(this.f7229a instanceof Activity) && cVarCreate != null && (window = cVarCreate.getWindow()) != null) {
            window.setType(2038);
        }
        androidx.appcompat.app.c cVar = this.f7231c;
        if (cVar != null) {
            cVar.show();
        }
    }
}
