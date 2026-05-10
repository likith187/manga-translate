package com.coloros.translate.privacysecuritypolicy;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.view.KeyEvent;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.base.BaseActivity;
import com.coloros.translate.base.R$drawable;
import com.coloros.translate.privacysecuritypolicy.PrivacyPolicyManager;
import com.coloros.translate.ui.MainActivity;
import com.coloros.translate.utils.StatementHelperUtil;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.g;
import com.coloros.translate.utils.j;
import com.coloros.translate.utils.l0;
import com.coloros.translate.utils.m0;
import com.coloros.translate.utils.n0;
import com.coloros.translate.utils.p;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import com.coui.appcompat.panel.COUIBottomSheetDialog;
import com.coui.appcompat.statement.COUILinkMovementMethod;
import com.coui.appcompat.statement.COUIUserStatementDialog;
import e2.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public class PrivacyPolicyManager {

    /* JADX INFO: renamed from: i */
    public static final a f5415i = new a(null);

    /* JADX INFO: renamed from: a */
    private Activity f5416a;

    /* JADX INFO: renamed from: b */
    private e2.b f5417b;

    /* JADX INFO: renamed from: c */
    private COUIBottomSheetDialog f5418c;

    /* JADX INFO: renamed from: d */
    private androidx.appcompat.app.c f5419d;

    /* JADX INFO: renamed from: e */
    private androidx.appcompat.app.c f5420e;

    /* JADX INFO: renamed from: f */
    private androidx.appcompat.app.c f5421f;

    /* JADX INFO: renamed from: g */
    private androidx.appcompat.app.c f5422g;

    /* JADX INFO: renamed from: h */
    private int f5423h;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            if (p.INSTANCE.e()) {
                l0.a aVar = l0.f7130a;
                if (((Boolean) l0.a.g(aVar, "show_privacy_policy_alert_new", Boolean.TRUE, null, 4, null)).booleanValue() && !((Boolean) l0.a.g(aVar, "use_basic_function", Boolean.FALSE, null, 4, null)).booleanValue()) {
                    return true;
                }
            }
            return false;
        }

        public final boolean b() {
            l0.a aVar = l0.f7130a;
            return ((Boolean) l0.a.g(aVar, "use_basic_function", Boolean.FALSE, null, 4, null)).booleanValue() && ((Boolean) l0.a.g(aVar, "show_screen_translation_function_instruction", Boolean.TRUE, null, 4, null)).booleanValue();
        }

        public final void c(Context context) {
            r.e(context, "context");
            if (p.INSTANCE.e()) {
                m0.a(context);
            } else if (j.a.c(j.f7127a, 0L, 1, null)) {
                c0.f7098a.q("PrivacyPolicyManager", "click too many times");
            } else {
                g.d(context);
            }
        }

        public final void d(Context context) {
            r.e(context, "context");
            m0.b(context);
        }

        public final void e() {
            l0.a aVar = l0.f7130a;
            Boolean bool = Boolean.TRUE;
            l0.a.l(aVar, "show_privacy_policy_alert_new", bool, false, null, 12, null);
            l0.a.l(aVar, "use_basic_function", Boolean.FALSE, false, null, 12, null);
            l0.a.l(aVar, "show_dialogue_simultaneous_function_instruction", bool, false, null, 12, null);
            l0.a.l(aVar, "show_screen_translation_function_instruction", bool, false, null, 12, null);
        }

        private a() {
        }
    }

    private static final class b implements DialogInterface.OnKeyListener {

        /* JADX INFO: renamed from: a */
        private final WeakReference f5424a;

        public b(e2.a dialogCallback) {
            r.e(dialogCallback, "dialogCallback");
            this.f5424a = new WeakReference(dialogCallback);
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int i10, KeyEvent event) {
            r.e(dialog, "dialog");
            r.e(event, "event");
            if (i10 != 4 || event.getAction() != 0) {
                return false;
            }
            c0.f7098a.d("PrivacyPolicyManager", "DialogOnKeyListener onKey");
            dialog.dismiss();
            e2.a aVar = (e2.a) this.f5424a.get();
            if (aVar == null) {
                return false;
            }
            aVar.c();
            return false;
        }
    }

    public static final class c implements StatementHelperUtil.a {
        c() {
        }

        @Override // com.coloros.translate.utils.StatementHelperUtil.a
        public void a() {
            Activity activity = PrivacyPolicyManager.this.f5416a;
            if (activity != null) {
                PrivacyPolicyManager.f5415i.c(activity);
            }
        }
    }

    public static final class d implements StatementHelperUtil.a {
        d() {
        }

        @Override // com.coloros.translate.utils.StatementHelperUtil.a
        public void a() {
            Activity activity = PrivacyPolicyManager.this.f5416a;
            if (activity != null) {
                PrivacyPolicyManager.f5415i.c(activity);
            }
        }
    }

    public static final class e implements StatementHelperUtil.a {

        public static final class a implements e2.a {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ PrivacyPolicyManager f5428a;

            a(PrivacyPolicyManager privacyPolicyManager) {
                this.f5428a = privacyPolicyManager;
            }

            @Override // e2.a
            public void a() {
                if (PrivacyPolicyManager.f5415i.a()) {
                    this.f5428a.J();
                    return;
                }
                e2.b bVar = this.f5428a.f5417b;
                if (bVar != null) {
                    bVar.a();
                }
            }

            @Override // e2.a
            public void b() {
                e2.b bVar;
                l0.a.l(l0.f7130a, "use_basic_function", Boolean.TRUE, false, null, 12, null);
                if (this.f5428a.f5423h == 0) {
                    PrivacyPolicyManager privacyPolicyManager = this.f5428a;
                    Activity activity = privacyPolicyManager.f5416a;
                    r.b(activity);
                    privacyPolicyManager.C(activity);
                    return;
                }
                if ((this.f5428a.f5423h == 1 || this.f5428a.f5423h == 2 || this.f5428a.f5423h == 3) && (bVar = this.f5428a.f5417b) != null) {
                    bVar.b();
                }
            }

            @Override // e2.a
            public void c() {
                if (PrivacyPolicyManager.f5415i.a()) {
                    this.f5428a.J();
                    return;
                }
                e2.b bVar = this.f5428a.f5417b;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        e() {
        }

        @Override // com.coloros.translate.utils.StatementHelperUtil.a
        public void a() {
            COUIBottomSheetDialog cOUIBottomSheetDialog = PrivacyPolicyManager.this.f5418c;
            if (cOUIBottomSheetDialog != null) {
                cOUIBottomSheetDialog.dismiss();
            }
            PrivacyPolicyManager privacyPolicyManager = PrivacyPolicyManager.this;
            Activity activity = privacyPolicyManager.f5416a;
            r.b(activity);
            privacyPolicyManager.Y(activity, new a(PrivacyPolicyManager.this));
        }
    }

    public static final class f implements StatementHelperUtil.a {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Activity f5429a;

        f(Activity activity) {
            this.f5429a = activity;
        }

        @Override // com.coloros.translate.utils.StatementHelperUtil.a
        public void a() {
            PrivacyPolicyManager.f5415i.c(this.f5429a);
        }
    }

    private final SpannableStringBuilder A() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(n0.b(R.string.translation_personal_info_protection_policy));
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList2.add(new d());
        }
        Activity activity = this.f5416a;
        String string = activity != null ? activity.getString(R.string.still_use_basic_function_content_os16, n0.b(R.string.translation_personal_info_protection_policy)) : null;
        Activity activity2 = this.f5416a;
        if (activity2 == null) {
            return null;
        }
        r.b(string);
        return StatementHelperUtil.a(activity2, string, arrayList, arrayList2);
    }

    public static final void F(PrivacyPolicyManager this$0, e2.a dialogCallback, DialogInterface dialogInterface, int i10) {
        r.e(this$0, "this$0");
        r.e(dialogCallback, "$dialogCallback");
        androidx.appcompat.app.c cVar = this$0.f5421f;
        if (cVar != null) {
            cVar.dismiss();
        }
        l0.a.l(l0.f7130a, "show_dialogue_simultaneous_function_instruction", Boolean.FALSE, false, null, 12, null);
        this$0.d0();
        dialogCallback.b();
    }

    public static final void G(PrivacyPolicyManager this$0, e2.a dialogCallback, DialogInterface dialogInterface, int i10) {
        r.e(this$0, "this$0");
        r.e(dialogCallback, "$dialogCallback");
        androidx.appcompat.app.c cVar = this$0.f5421f;
        if (cVar != null) {
            cVar.dismiss();
        }
        dialogCallback.a();
    }

    public static final void H(PrivacyPolicyManager this$0, e2.a dialogCallback) {
        r.e(this$0, "this$0");
        r.e(dialogCallback, "$dialogCallback");
        androidx.appcompat.app.c cVar = this$0.f5421f;
        if (cVar != null) {
            cVar.dismiss();
        }
        dialogCallback.a();
    }

    public static final void I(PrivacyPolicyManager this$0, OnBackInvokedCallback backInvokedCallback, DialogInterface dialogInterface) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        r.e(this$0, "this$0");
        r.e(backInvokedCallback, "$backInvokedCallback");
        androidx.appcompat.app.c cVar = this$0.f5421f;
        if (cVar == null || (onBackInvokedDispatcher = cVar.getOnBackInvokedDispatcher()) == null) {
            return;
        }
        onBackInvokedDispatcher.unregisterOnBackInvokedCallback(backInvokedCallback);
    }

    public final void J() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        COUIBottomSheetDialog cOUIBottomSheetDialog;
        if (this.f5416a == null || this.f5417b == null) {
            c0.f7098a.e("PrivacyPolicyManager", "mActivity or mPrivacyPolicyCallback is null");
            return;
        }
        COUIBottomSheetDialog cOUIBottomSheetDialog2 = this.f5418c;
        if (cOUIBottomSheetDialog2 != null && cOUIBottomSheetDialog2.isShowing() && (cOUIBottomSheetDialog = this.f5418c) != null) {
            cOUIBottomSheetDialog.dismiss(false);
        }
        Activity activity = this.f5416a;
        if (activity != null) {
            if (this.f5418c == null) {
                COUIUserStatementDialog cOUIUserStatementDialog = new COUIUserStatementDialog(activity, 0, 0.0f, 0.0f, 14, null);
                cOUIUserStatementDialog.setLogoDrawable(e.a.b(activity, R$drawable.ic_app_launcher));
                cOUIUserStatementDialog.setAppMessage(cOUIUserStatementDialog.getContext().getString(R.string.app_content));
                cOUIUserStatementDialog.setAppName(cOUIUserStatementDialog.getContext().getString(R.string.app_name_new));
                cOUIUserStatementDialog.setTitleText(R.string.welcome_use);
                cOUIUserStatementDialog.setBottomButtonText(cOUIUserStatementDialog.getContext().getString(R.string.privacy_policy_agree));
                cOUIUserStatementDialog.setExitButtonText(cOUIUserStatementDialog.getContext().getString(R.string.disagree));
                ArrayList arrayList = new ArrayList();
                arrayList.add(cOUIUserStatementDialog.getContext().getString(R.string.basic_function));
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new e());
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(cOUIUserStatementDialog.getContext().getString(R.string.translation_personal_info_protection_policy));
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(new f(activity));
                Context context = cOUIUserStatementDialog.getContext();
                r.d(context, "getContext(...)");
                String string = cOUIUserStatementDialog.getContext().getString(R.string.user_notice_content_os16, cOUIUserStatementDialog.getContext().getString(R.string.basic_function));
                r.d(string, "getString(...)");
                cOUIUserStatementDialog.setStatement(StatementHelperUtil.a(context, string, arrayList, arrayList2));
                Context context2 = cOUIUserStatementDialog.getContext();
                r.d(context2, "getContext(...)");
                String string2 = cOUIUserStatementDialog.getContext().getString(R.string.user_agreement_content_new_suffix, cOUIUserStatementDialog.getContext().getString(R.string.translation_personal_info_protection_policy));
                r.d(string2, "getString(...)");
                cOUIUserStatementDialog.setProtocolText(StatementHelperUtil.a(context2, string2, arrayList3, arrayList4));
                cOUIUserStatementDialog.setOnButtonClickListener(new COUIUserStatementDialog.OnButtonClickListener() { // from class: com.coloros.translate.privacysecuritypolicy.PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3

                    public static final class a implements e2.a {

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        final /* synthetic */ PrivacyPolicyManager f5431a;

                        a(PrivacyPolicyManager privacyPolicyManager) {
                            this.f5431a = privacyPolicyManager;
                        }

                        @Override // e2.a
                        public void a() {
                            b bVar = this.f5431a.f5417b;
                            if (bVar != null) {
                                bVar.a();
                            }
                        }

                        @Override // e2.a
                        public void b() {
                            l0.a.l(l0.f7130a, "use_basic_function", Boolean.TRUE, false, null, 12, null);
                            if (this.f5431a.f5423h != 2 && this.f5431a.f5423h != 3) {
                                PrivacyPolicyManager privacyPolicyManager = this.f5431a;
                                privacyPolicyManager.C(privacyPolicyManager.f5416a);
                            } else {
                                b bVar = this.f5431a.f5417b;
                                if (bVar != null) {
                                    bVar.b();
                                }
                            }
                        }

                        @Override // e2.a
                        public void c() {
                            if (PrivacyPolicyManager.f5415i.a()) {
                                this.f5431a.J();
                                return;
                            }
                            b bVar = this.f5431a.f5417b;
                            if (bVar != null) {
                                bVar.a();
                            }
                        }
                    }

                    @Override // com.coui.appcompat.statement.COUIUserStatementDialog.OnButtonClickListener
                    public void onBottomButtonClick() {
                        l0.a.l(l0.f7130a, "show_privacy_policy_alert_new", Boolean.FALSE, false, null, 12, null);
                        COUIBottomSheetDialog cOUIBottomSheetDialog3 = this.f5430a.f5418c;
                        if (cOUIBottomSheetDialog3 != null) {
                            cOUIBottomSheetDialog3.dismiss();
                        }
                        b bVar = this.f5430a.f5417b;
                        if (bVar != null) {
                            bVar.b();
                        }
                    }

                    @Override // com.coui.appcompat.statement.COUIUserStatementDialog.OnButtonClickListener
                    public void onExitButtonClick() {
                        COUIBottomSheetDialog cOUIBottomSheetDialog3 = this.f5430a.f5418c;
                        if (cOUIBottomSheetDialog3 != null) {
                            cOUIBottomSheetDialog3.dismiss();
                        }
                        if (this.f5430a.f5423h == 1) {
                            b bVar = this.f5430a.f5417b;
                            if (bVar != null) {
                                bVar.a();
                                return;
                            }
                            return;
                        }
                        PrivacyPolicyManager privacyPolicyManager = this.f5430a;
                        Activity activity2 = privacyPolicyManager.f5416a;
                        r.b(activity2);
                        privacyPolicyManager.T(activity2, new a(this.f5430a));
                    }
                });
                cOUIUserStatementDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: h2.c
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        PrivacyPolicyManager.L(this.f12204a, dialogInterface);
                    }
                });
                this.f5418c = cOUIUserStatementDialog;
            }
            if (activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
            COUIBottomSheetDialog cOUIBottomSheetDialog3 = this.f5418c;
            if (cOUIBottomSheetDialog3 != null ? cOUIBottomSheetDialog3.isShowing() : false) {
                return;
            }
            Application applicationA = TranslationApplication.f4754b.a();
            r.c(applicationA, "null cannot be cast to non-null type com.coloros.translate.TranslationApplication");
            ((TranslationApplication) applicationA).c(activity);
            COUIBottomSheetDialog cOUIBottomSheetDialog4 = this.f5418c;
            if (cOUIBottomSheetDialog4 != null) {
                cOUIBottomSheetDialog4.show();
            }
            e2.b bVar = this.f5417b;
            if (bVar != null) {
                bVar.c();
            }
            if (Build.VERSION.SDK_INT >= 33) {
                final OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: h2.d
                    public final void onBackInvoked() {
                        PrivacyPolicyManager.M(this.f12205a);
                    }
                };
                COUIBottomSheetDialog cOUIBottomSheetDialog5 = this.f5418c;
                if (cOUIBottomSheetDialog5 != null && (onBackInvokedDispatcher = cOUIBottomSheetDialog5.getOnBackInvokedDispatcher()) != null) {
                    onBackInvokedDispatcher.registerOnBackInvokedCallback(0, onBackInvokedCallback);
                }
                COUIBottomSheetDialog cOUIBottomSheetDialog6 = this.f5418c;
                if (cOUIBottomSheetDialog6 != null) {
                    cOUIBottomSheetDialog6.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: h2.e
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            PrivacyPolicyManager.N(this.f12206a, onBackInvokedCallback, dialogInterface);
                        }
                    });
                }
            }
        }
    }

    public static final void L(PrivacyPolicyManager this$0, DialogInterface dialogInterface) {
        r.e(this$0, "this$0");
        e2.b bVar = this$0.f5417b;
        if (bVar != null) {
            bVar.a();
        }
    }

    public static final void M(PrivacyPolicyManager this$0) {
        r.e(this$0, "this$0");
        e2.b bVar = this$0.f5417b;
        if (bVar != null) {
            bVar.a();
        }
    }

    public static final void N(PrivacyPolicyManager this$0, OnBackInvokedCallback backInvokedCallback, DialogInterface dialogInterface) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        r.e(this$0, "this$0");
        r.e(backInvokedCallback, "$backInvokedCallback");
        COUIBottomSheetDialog cOUIBottomSheetDialog = this$0.f5418c;
        if (cOUIBottomSheetDialog == null || (onBackInvokedDispatcher = cOUIBottomSheetDialog.getOnBackInvokedDispatcher()) == null) {
            return;
        }
        onBackInvokedDispatcher.unregisterOnBackInvokedCallback(backInvokedCallback);
    }

    public static final void P(PrivacyPolicyManager this$0, e2.a dialogCallback, DialogInterface dialogInterface, int i10) {
        r.e(this$0, "this$0");
        r.e(dialogCallback, "$dialogCallback");
        androidx.appcompat.app.c cVar = this$0.f5422g;
        if (cVar != null) {
            cVar.dismiss();
        }
        l0.a.l(l0.f7130a, "show_screen_translation_function_instruction", Boolean.FALSE, false, null, 12, null);
        this$0.d0();
        dialogCallback.b();
    }

    public static final void Q(PrivacyPolicyManager this$0, e2.a dialogCallback, DialogInterface dialogInterface, int i10) {
        r.e(this$0, "this$0");
        r.e(dialogCallback, "$dialogCallback");
        androidx.appcompat.app.c cVar = this$0.f5422g;
        if (cVar != null) {
            cVar.dismiss();
        }
        dialogCallback.a();
    }

    public static final void R(PrivacyPolicyManager this$0, e2.a dialogCallback) {
        r.e(this$0, "this$0");
        r.e(dialogCallback, "$dialogCallback");
        androidx.appcompat.app.c cVar = this$0.f5422g;
        if (cVar != null) {
            cVar.dismiss();
        }
        dialogCallback.a();
    }

    public static final void S(PrivacyPolicyManager this$0, OnBackInvokedCallback backInvokedCallback, DialogInterface dialogInterface) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        r.e(this$0, "this$0");
        r.e(backInvokedCallback, "$backInvokedCallback");
        androidx.appcompat.app.c cVar = this$0.f5422g;
        if (cVar == null || (onBackInvokedDispatcher = cVar.getOnBackInvokedDispatcher()) == null) {
            return;
        }
        onBackInvokedDispatcher.unregisterOnBackInvokedCallback(backInvokedCallback);
    }

    public static final void U(PrivacyPolicyManager this$0, e2.a callback, DialogInterface dialogInterface, int i10) {
        r.e(this$0, "this$0");
        r.e(callback, "$callback");
        androidx.appcompat.app.c cVar = this$0.f5420e;
        if (cVar != null) {
            cVar.dismiss();
        }
        callback.b();
    }

    public static final void V(PrivacyPolicyManager this$0, e2.a callback, DialogInterface dialogInterface, int i10) {
        r.e(this$0, "this$0");
        r.e(callback, "$callback");
        androidx.appcompat.app.c cVar = this$0.f5420e;
        if (cVar != null) {
            cVar.dismiss();
        }
        callback.a();
    }

    public static final void W(PrivacyPolicyManager this$0, e2.a callback) {
        r.e(this$0, "this$0");
        r.e(callback, "$callback");
        androidx.appcompat.app.c cVar = this$0.f5420e;
        if (cVar != null) {
            cVar.dismiss();
        }
        callback.a();
    }

    public static final void X(PrivacyPolicyManager this$0, OnBackInvokedCallback backInvokedCallback, DialogInterface dialogInterface) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        r.e(this$0, "this$0");
        r.e(backInvokedCallback, "$backInvokedCallback");
        androidx.appcompat.app.c cVar = this$0.f5420e;
        if (cVar == null || (onBackInvokedDispatcher = cVar.getOnBackInvokedDispatcher()) == null) {
            return;
        }
        onBackInvokedDispatcher.unregisterOnBackInvokedCallback(backInvokedCallback);
    }

    public final void Y(Activity activity, final e2.a aVar) {
        TextView textView;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        androidx.appcompat.app.c cVar;
        androidx.appcompat.app.c cVar2 = this.f5419d;
        if (cVar2 != null && cVar2.isShowing() && (cVar = this.f5419d) != null) {
            cVar.dismiss();
        }
        COUIAlertDialogBuilder cOUIAlertDialogBuilder = new COUIAlertDialogBuilder(activity);
        cOUIAlertDialogBuilder.setTitle((CharSequence) n0.b(R.string.use_basic_function));
        cOUIAlertDialogBuilder.setMessage((CharSequence) z());
        cOUIAlertDialogBuilder.setPositiveButton(R.string.come_into_use, new DialogInterface.OnClickListener() { // from class: h2.j
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                PrivacyPolicyManager.Z(this.f12216a, aVar, dialogInterface, i10);
            }
        });
        cOUIAlertDialogBuilder.setNegativeButton(R.string.return_value, new DialogInterface.OnClickListener() { // from class: h2.k
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                PrivacyPolicyManager.a0(this.f12218a, aVar, dialogInterface, i10);
            }
        });
        androidx.appcompat.app.c cVarShow = cOUIAlertDialogBuilder.show();
        this.f5419d = cVarShow;
        if (cVarShow != null) {
            cVarShow.setCancelable(false);
        }
        if (Build.VERSION.SDK_INT >= 33) {
            final OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: h2.l
                public final void onBackInvoked() {
                    PrivacyPolicyManager.b0(this.f12220a, aVar);
                }
            };
            androidx.appcompat.app.c cVar3 = this.f5419d;
            if (cVar3 != null && (onBackInvokedDispatcher = cVar3.getOnBackInvokedDispatcher()) != null) {
                onBackInvokedDispatcher.registerOnBackInvokedCallback(0, onBackInvokedCallback);
            }
            androidx.appcompat.app.c cVar4 = this.f5419d;
            if (cVar4 != null) {
                cVar4.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: h2.m
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        PrivacyPolicyManager.c0(this.f12222a, onBackInvokedCallback, dialogInterface);
                    }
                });
            }
        } else {
            cOUIAlertDialogBuilder.setOnKeyListener(new b(aVar));
        }
        androidx.appcompat.app.c cVar5 = this.f5419d;
        if (cVar5 == null || (textView = (TextView) cVar5.findViewById(android.R.id.message)) == null) {
            return;
        }
        textView.setMovementMethod(COUILinkMovementMethod.INSTANCE);
    }

    public static final void Z(PrivacyPolicyManager this$0, e2.a dialogCallback, DialogInterface dialogInterface, int i10) {
        r.e(this$0, "this$0");
        r.e(dialogCallback, "$dialogCallback");
        androidx.appcompat.app.c cVar = this$0.f5419d;
        if (cVar != null) {
            cVar.dismiss();
        }
        dialogCallback.b();
    }

    public static final void a0(PrivacyPolicyManager this$0, e2.a dialogCallback, DialogInterface dialogInterface, int i10) {
        r.e(this$0, "this$0");
        r.e(dialogCallback, "$dialogCallback");
        androidx.appcompat.app.c cVar = this$0.f5419d;
        if (cVar != null) {
            cVar.dismiss();
        }
        dialogCallback.a();
    }

    public static final void b0(PrivacyPolicyManager this$0, e2.a dialogCallback) {
        r.e(this$0, "this$0");
        r.e(dialogCallback, "$dialogCallback");
        androidx.appcompat.app.c cVar = this$0.f5419d;
        if (cVar != null) {
            cVar.dismiss();
        }
        dialogCallback.a();
    }

    public static final void c0(PrivacyPolicyManager this$0, OnBackInvokedCallback backInvokedCallback, DialogInterface dialogInterface) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        r.e(this$0, "this$0");
        r.e(backInvokedCallback, "$backInvokedCallback");
        androidx.appcompat.app.c cVar = this$0.f5419d;
        if (cVar == null || (onBackInvokedDispatcher = cVar.getOnBackInvokedDispatcher()) == null) {
            return;
        }
        onBackInvokedDispatcher.unregisterOnBackInvokedCallback(backInvokedCallback);
    }

    private final void d0() {
        l0.a aVar = l0.f7130a;
        Boolean bool = Boolean.TRUE;
        if (((Boolean) l0.a.g(aVar, "show_dialogue_simultaneous_function_instruction", bool, null, 4, null)).booleanValue() || ((Boolean) l0.a.g(aVar, "show_screen_translation_function_instruction", bool, null, 4, null)).booleanValue()) {
            return;
        }
        l0.a.l(aVar, "show_privacy_policy_alert_new", Boolean.FALSE, false, null, 12, null);
    }

    private final SpannableStringBuilder z() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(n0.b(R.string.translation_personal_info_protection_policy));
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList2.add(new c());
        }
        Activity activity = this.f5416a;
        String string = activity != null ? activity.getString(R.string.use_basic_function_content_os16, n0.b(R.string.translation_personal_info_protection_policy)) : null;
        Activity activity2 = this.f5416a;
        if (activity2 == null) {
            return null;
        }
        r.b(string);
        return StatementHelperUtil.a(activity2, string, arrayList, arrayList2);
    }

    public final boolean B() {
        l0.a aVar = l0.f7130a;
        return ((Boolean) l0.a.g(aVar, "use_basic_function", Boolean.FALSE, null, 4, null)).booleanValue() && ((Boolean) l0.a.g(aVar, "show_dialogue_simultaneous_function_instruction", Boolean.TRUE, null, 4, null)).booleanValue();
    }

    public final void C(Context context) {
        Object objM59constructorimpl;
        if (context != null) {
            try {
                r.a aVar = n8.r.Companion;
                ((BaseActivity) context).finish();
                Intent intent = new Intent(context, (Class<?>) MainActivity.class);
                intent.setFlags(67108864);
                context.startActivity(intent);
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("PrivacyPolicyManager", "jumpToMainActivity failure，" + thM62exceptionOrNullimpl.getMessage());
            }
            n8.r.m58boximpl(objM59constructorimpl);
        }
    }

    public final void D() {
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f5418c;
        if (cOUIBottomSheetDialog != null) {
            cOUIBottomSheetDialog.dismiss(false);
        }
        androidx.appcompat.app.c cVar = this.f5419d;
        if (cVar != null) {
            cVar.setOnDismissListener(null);
        }
        androidx.appcompat.app.c cVar2 = this.f5419d;
        if (cVar2 != null) {
            cVar2.setOnCancelListener(null);
        }
        androidx.appcompat.app.c cVar3 = this.f5419d;
        if (cVar3 != null) {
            cVar3.dismiss();
        }
        androidx.appcompat.app.c cVar4 = this.f5420e;
        if (cVar4 != null) {
            cVar4.setOnDismissListener(null);
        }
        androidx.appcompat.app.c cVar5 = this.f5420e;
        if (cVar5 != null) {
            cVar5.setOnCancelListener(null);
        }
        androidx.appcompat.app.c cVar6 = this.f5420e;
        if (cVar6 != null) {
            cVar6.dismiss();
        }
        androidx.appcompat.app.c cVar7 = this.f5421f;
        if (cVar7 != null) {
            cVar7.setOnDismissListener(null);
        }
        androidx.appcompat.app.c cVar8 = this.f5421f;
        if (cVar8 != null) {
            cVar8.setOnCancelListener(null);
        }
        androidx.appcompat.app.c cVar9 = this.f5421f;
        if (cVar9 != null) {
            cVar9.dismiss();
        }
        androidx.appcompat.app.c cVar10 = this.f5422g;
        if (cVar10 != null) {
            cVar10.setOnDismissListener(null);
        }
        androidx.appcompat.app.c cVar11 = this.f5422g;
        if (cVar11 != null) {
            cVar11.setOnCancelListener(null);
        }
        androidx.appcompat.app.c cVar12 = this.f5422g;
        if (cVar12 != null) {
            cVar12.dismiss();
        }
        this.f5416a = null;
    }

    public final void E(Activity activity, boolean z10, final e2.a dialogCallback) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(dialogCallback, "dialogCallback");
        c0.f7098a.d("PrivacyPolicyManager", "showDialogueSimultaneousFunctionInstruction");
        if (B()) {
            String strB = z10 ? n0.b(R.string.dialogue_translation_function_instruction_new) : n0.b(R.string.simultaneous_interpretation_function_instruction_new);
            COUIAlertDialogBuilder cOUIAlertDialogBuilder = new COUIAlertDialogBuilder(activity);
            cOUIAlertDialogBuilder.setTitle((CharSequence) n0.b(R.string.function_instruction));
            cOUIAlertDialogBuilder.setMessage((CharSequence) strB);
            cOUIAlertDialogBuilder.setPositiveButton(R.string.privacy_policy_agree, new DialogInterface.OnClickListener() { // from class: h2.f
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    PrivacyPolicyManager.F(this.f12208a, dialogCallback, dialogInterface, i10);
                }
            });
            cOUIAlertDialogBuilder.setNegativeButton(R.string.disagree, new DialogInterface.OnClickListener() { // from class: h2.g
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    PrivacyPolicyManager.G(this.f12210a, dialogCallback, dialogInterface, i10);
                }
            });
            cOUIAlertDialogBuilder.setCancelable(activity instanceof MainActivity);
            if (activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
            androidx.appcompat.app.c cVar = this.f5421f;
            if (cVar == null || !cVar.isShowing()) {
                this.f5421f = cOUIAlertDialogBuilder.show();
                if (Build.VERSION.SDK_INT < 33) {
                    cOUIAlertDialogBuilder.setOnKeyListener(new b(dialogCallback));
                    return;
                }
                final OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: h2.h
                    public final void onBackInvoked() {
                        PrivacyPolicyManager.H(this.f12212a, dialogCallback);
                    }
                };
                androidx.appcompat.app.c cVar2 = this.f5421f;
                if (cVar2 != null && (onBackInvokedDispatcher = cVar2.getOnBackInvokedDispatcher()) != null) {
                    onBackInvokedDispatcher.registerOnBackInvokedCallback(0, onBackInvokedCallback);
                }
                androidx.appcompat.app.c cVar3 = this.f5421f;
                if (cVar3 != null) {
                    cVar3.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: h2.i
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            PrivacyPolicyManager.I(this.f12214a, onBackInvokedCallback, dialogInterface);
                        }
                    });
                }
            }
        }
    }

    public final void K(Activity activity, e2.b callback, int i10) {
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(callback, "callback");
        this.f5416a = activity;
        this.f5417b = callback;
        this.f5423h = i10;
        if (f5415i.a()) {
            J();
            return;
        }
        e2.b bVar = this.f5417b;
        if (bVar != null) {
            bVar.b();
        }
    }

    public final void O(Activity activity, final e2.a dialogCallback) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(dialogCallback, "dialogCallback");
        if (f5415i.b()) {
            COUIAlertDialogBuilder cOUIAlertDialogBuilder = new COUIAlertDialogBuilder(activity);
            cOUIAlertDialogBuilder.setTitle((CharSequence) n0.b(R.string.function_instruction));
            cOUIAlertDialogBuilder.setMessage((CharSequence) n0.b(R.string.screen_translation_function_instruction_new));
            cOUIAlertDialogBuilder.setPositiveButton(R.string.privacy_policy_agree, new DialogInterface.OnClickListener() { // from class: h2.n
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    PrivacyPolicyManager.P(this.f12224a, dialogCallback, dialogInterface, i10);
                }
            });
            cOUIAlertDialogBuilder.setNegativeButton(R.string.disagree, new DialogInterface.OnClickListener() { // from class: h2.o
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    PrivacyPolicyManager.Q(this.f12226a, dialogCallback, dialogInterface, i10);
                }
            });
            cOUIAlertDialogBuilder.setCancelable(activity instanceof MainActivity);
            if (activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
            androidx.appcompat.app.c cVar = this.f5422g;
            if (cVar != null ? cVar.isShowing() : false) {
                return;
            }
            this.f5422g = cOUIAlertDialogBuilder.show();
            if (Build.VERSION.SDK_INT < 33) {
                cOUIAlertDialogBuilder.setOnKeyListener(new b(dialogCallback));
                return;
            }
            final OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: h2.p
                public final void onBackInvoked() {
                    PrivacyPolicyManager.R(this.f12228a, dialogCallback);
                }
            };
            androidx.appcompat.app.c cVar2 = this.f5422g;
            if (cVar2 != null && (onBackInvokedDispatcher = cVar2.getOnBackInvokedDispatcher()) != null) {
                onBackInvokedDispatcher.registerOnBackInvokedCallback(0, onBackInvokedCallback);
            }
            androidx.appcompat.app.c cVar3 = this.f5422g;
            if (cVar3 != null) {
                cVar3.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: h2.q
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        PrivacyPolicyManager.S(this.f12230a, onBackInvokedCallback, dialogInterface);
                    }
                });
            }
        }
    }

    public final void T(Activity activity, final e2.a callback) {
        TextView textView;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        androidx.appcompat.app.c cVar;
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(callback, "callback");
        c0.f7098a.d("PrivacyPolicyManager", "showStillUseBasicFunctionDialog");
        androidx.appcompat.app.c cVar2 = this.f5420e;
        if (cVar2 != null && cVar2.isShowing() && (cVar = this.f5420e) != null) {
            cVar.dismiss();
        }
        COUIAlertDialogBuilder cOUIAlertDialogBuilder = new COUIAlertDialogBuilder(activity);
        cOUIAlertDialogBuilder.setTitle((CharSequence) n0.b(R.string.still_use_basic_function));
        cOUIAlertDialogBuilder.setMessage((CharSequence) A());
        cOUIAlertDialogBuilder.setPositiveButton(R.string.come_into_use, new DialogInterface.OnClickListener() { // from class: h2.r
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                PrivacyPolicyManager.U(this.f12232a, callback, dialogInterface, i10);
            }
        });
        cOUIAlertDialogBuilder.setNegativeButton(R.string.exit, new DialogInterface.OnClickListener() { // from class: h2.s
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                PrivacyPolicyManager.V(this.f12234a, callback, dialogInterface, i10);
            }
        });
        androidx.appcompat.app.c cVarShow = cOUIAlertDialogBuilder.show();
        this.f5420e = cVarShow;
        if (cVarShow != null) {
            cVarShow.setCancelable(false);
        }
        if (Build.VERSION.SDK_INT >= 33) {
            final OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: h2.t
                public final void onBackInvoked() {
                    PrivacyPolicyManager.W(this.f12236a, callback);
                }
            };
            androidx.appcompat.app.c cVar3 = this.f5420e;
            if (cVar3 != null && (onBackInvokedDispatcher = cVar3.getOnBackInvokedDispatcher()) != null) {
                onBackInvokedDispatcher.registerOnBackInvokedCallback(0, onBackInvokedCallback);
            }
            androidx.appcompat.app.c cVar4 = this.f5420e;
            if (cVar4 != null) {
                cVar4.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: h2.u
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        PrivacyPolicyManager.X(this.f12238a, onBackInvokedCallback, dialogInterface);
                    }
                });
            }
        } else {
            cOUIAlertDialogBuilder.setOnKeyListener(new b(callback));
        }
        androidx.appcompat.app.c cVar5 = this.f5420e;
        if (cVar5 == null || (textView = (TextView) cVar5.findViewById(android.R.id.message)) == null) {
            return;
        }
        textView.setMovementMethod(COUILinkMovementMethod.INSTANCE);
    }
}
