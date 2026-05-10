package com.coloros.translate.ui.setting.userprotocol;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.style.TextAppearanceSpan;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.R$string;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.m0;
import com.coloros.translate.R;
import com.coloros.translate.base.BaseActivity;
import com.coloros.translate.ui.setting.userprotocol.UserProtocolActivity;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.g1;
import com.coloros.translate.utils.o0;
import com.coloros.translate.utils.z;
import com.coloros.translate.utils.z0;
import com.coui.appcompat.grid.COUIPercentWidthFrameLayout;
import com.coui.appcompat.privacypolicy.COUIPrivacyPolicyView;
import com.coui.appcompat.privacypolicy.COUIPrivacyPolicyViewKt;
import com.coui.appcompat.privacypolicy.PrivacyPolicySpanBuilder;
import com.coui.appcompat.privacypolicy.PrivacyPolicySpanBuilderKt;
import com.coui.appcompat.snackbar.COUISnackBar;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.support.appcompat.R$drawable;
import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class UserProtocolActivity extends BaseActivity<com.coloros.translate.base.q> {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final a f6452s = new a(null);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private COUIPercentWidthFrameLayout f6454p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private COUISnackBar f6455q;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final StringBuffer f6453o = new StringBuffer();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final n8.j f6456r = n8.k.b(h.INSTANCE);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ int $boldResId;
        final /* synthetic */ int $normalResId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i10, int i11) {
            super(1);
            this.$normalResId = i10;
            this.$boldResId = i11;
        }

        @Override // w8.l
        public final CharSequence invoke(TextView body) {
            kotlin.jvm.internal.r.e(body, "$this$body");
            UserProtocolActivity userProtocolActivity = UserProtocolActivity.this;
            String string = body.getContext().getString(this.$normalResId, UserProtocolActivity.this.w1(this.$boldResId));
            StringBuffer stringBuffer = UserProtocolActivity.this.f6453o;
            stringBuffer.append(string);
            stringBuffer.append("\n");
            kotlin.jvm.internal.r.d(string, "apply(...)");
            return userProtocolActivity.s1(PrivacyPolicySpanBuilderKt.spanBuilder(string, body), body, UserProtocolActivity.this.w1(this.$boldResId), 0);
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ int $resId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(int i10) {
            super(1);
            this.$resId = i10;
        }

        @Override // w8.l
        public final CharSequence invoke(TextView body) {
            kotlin.jvm.internal.r.e(body, "$this$body");
            UserProtocolActivity userProtocolActivity = UserProtocolActivity.this;
            String strW1 = userProtocolActivity.w1(this.$resId);
            StringBuffer stringBuffer = UserProtocolActivity.this.f6453o;
            stringBuffer.append(strW1);
            stringBuffer.append("\n");
            return userProtocolActivity.s1(PrivacyPolicySpanBuilderKt.spanBuilder(strW1, body), body, UserProtocolActivity.this.w1(this.$resId), 0);
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ int $resId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(int i10) {
            super(1);
            this.$resId = i10;
        }

        @Override // w8.l
        public final CharSequence invoke(TextView smallTitle) {
            kotlin.jvm.internal.r.e(smallTitle, "$this$smallTitle");
            UserProtocolActivity userProtocolActivity = UserProtocolActivity.this;
            String strW1 = userProtocolActivity.w1(this.$resId);
            StringBuffer stringBuffer = UserProtocolActivity.this.f6453o;
            stringBuffer.append(strW1);
            stringBuffer.append("\n");
            return userProtocolActivity.s1(PrivacyPolicySpanBuilderKt.spanBuilder(strW1, smallTitle), smallTitle, UserProtocolActivity.this.w1(this.$resId), 0);
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.l {
        e() {
            super(1);
        }

        @Override // w8.l
        public final CharSequence invoke(TextView title) {
            kotlin.jvm.internal.r.e(title, "$this$title");
            String strW1 = UserProtocolActivity.this.w1(R.string.translate_user_protocol);
            StringBuffer stringBuffer = UserProtocolActivity.this.f6453o;
            stringBuffer.append(strW1);
            stringBuffer.append("\n");
            return strW1;
        }
    }

    static final class f extends kotlin.jvm.internal.s implements w8.l {
        f() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity userProtocolActivity = UserProtocolActivity.this;
            userProtocolActivity.a1(section, R.string.protocol_update_date, userProtocolActivity.w1(R.string.protocol_update_date_detail));
        }
    }

    static final class g extends kotlin.jvm.internal.s implements w8.l {
        g() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            if (kotlin.text.r.I(UserProtocolActivity.this.X0(), "realme", true)) {
                UserProtocolActivity.this.T0(section, R.string.protocol_realme_head_content_1, R.string.protocol_head_content_1_1);
            } else if (kotlin.text.r.I(UserProtocolActivity.this.X0(), "oneplus", true)) {
                UserProtocolActivity.this.T0(section, R.string.protocol_oneplus_head_content_1, R.string.protocol_head_content_1_1);
            } else {
                UserProtocolActivity.this.T0(section, R.string.protocol_oppo_head_content_1, R.string.protocol_head_content_1_1);
            }
            UserProtocolActivity.this.Z0(section, R.string.protocol_head_content_2);
            UserProtocolActivity.this.U0(section, R.string.protocol_head_content_3);
            UserProtocolActivity.this.Z0(section, R.string.protocol_head_content_4);
        }
    }

    static final class h extends kotlin.jvm.internal.s implements w8.a {
        public static final h INSTANCE = new h();

        h() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final String mo8invoke() {
            return g1.a();
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ int $resId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(int i10) {
            super(1);
            this.$resId = i10;
        }

        @Override // w8.l
        public final CharSequence invoke(TextView body) {
            kotlin.jvm.internal.r.e(body, "$this$body");
            String strW1 = UserProtocolActivity.this.w1(this.$resId);
            StringBuffer stringBuffer = UserProtocolActivity.this.f6453o;
            stringBuffer.append(strW1);
            stringBuffer.append("\n");
            return strW1;
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ String $afterString;
        final /* synthetic */ int $resId;
        final /* synthetic */ UserProtocolActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(int i10, String str, UserProtocolActivity userProtocolActivity) {
            super(1);
            this.$resId = i10;
            this.$afterString = str;
            this.this$0 = userProtocolActivity;
        }

        @Override // w8.l
        public final CharSequence invoke(TextView body) {
            kotlin.jvm.internal.r.e(body, "$this$body");
            String string = body.getContext().getString(this.$resId, this.$afterString);
            StringBuffer stringBuffer = this.this$0.f6453o;
            stringBuffer.append(string);
            stringBuffer.append("\n");
            kotlin.jvm.internal.r.d(string, "apply(...)");
            return string;
        }
    }

    static final class k extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ String $formatLinkString;
        final /* synthetic */ String $linkString;
        final /* synthetic */ int $resId;
        final /* synthetic */ boolean $setupWizardDone;
        final /* synthetic */ UserProtocolActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(int i10, String str, boolean z10, String str2, UserProtocolActivity userProtocolActivity) {
            super(1);
            this.$resId = i10;
            this.$formatLinkString = str;
            this.$setupWizardDone = z10;
            this.$linkString = str2;
            this.this$0 = userProtocolActivity;
        }

        @Override // w8.l
        public final CharSequence invoke(TextView body) {
            kotlin.jvm.internal.r.e(body, "$this$body");
            String string = body.getContext().getResources().getString(this.$resId, this.$formatLinkString);
            StringBuffer stringBuffer = this.this$0.f6453o;
            stringBuffer.append(string);
            stringBuffer.append("\n");
            kotlin.jvm.internal.r.d(string, "apply(...)");
            return PrivacyPolicySpanBuilderKt.spanBuilder(string, body).setWebLink(this.$setupWizardDone, this.$linkString);
        }
    }

    static final class l extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ StringBuffer $it;
        final /* synthetic */ Uri $uri;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(Uri uri, StringBuffer stringBuffer) {
            super(0);
            this.$uri = uri;
            this.$it = stringBuffer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(UserProtocolActivity this$0, Uri uri) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(uri, "$uri");
            this$0.t1(uri);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws IOException {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() throws IOException {
            com.coloros.translate.utils.x xVar = com.coloros.translate.utils.x.INSTANCE;
            UserProtocolActivity userProtocolActivity = UserProtocolActivity.this;
            Uri uri = this.$uri;
            kotlin.jvm.internal.r.d(uri, "$uri");
            String string = this.$it.toString();
            kotlin.jvm.internal.r.d(string, "toString(...)");
            xVar.d(userProtocolActivity, uri, string);
            final UserProtocolActivity userProtocolActivity2 = UserProtocolActivity.this;
            final Uri uri2 = this.$uri;
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.ui.setting.userprotocol.f
                @Override // java.lang.Runnable
                public final void run() {
                    UserProtocolActivity.l.invoke$lambda$0(userProtocolActivity2, uri2);
                }
            }, 1, null);
        }
    }

    static final class m extends kotlin.jvm.internal.s implements w8.l {
        m() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v1);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v1_v1);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v1_v1_1);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v1_v1_2);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v1_v1_3);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v1_v2);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v1_v3);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v1_v4);
        }
    }

    static final class n extends kotlin.jvm.internal.s implements w8.l {
        n() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v10);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v10_1);
        }
    }

    static final class o extends kotlin.jvm.internal.s implements w8.l {
        o() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v11);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v11_v1);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v11_v2);
        }
    }

    static final class p extends kotlin.jvm.internal.s implements w8.l {
        p() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v12);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v12_v1);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v12_v2);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v12_v3);
        }
    }

    static final class q extends kotlin.jvm.internal.s implements w8.l {
        q() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v13);
            if (kotlin.text.r.I(UserProtocolActivity.this.X0(), "realme", true)) {
                UserProtocolActivity userProtocolActivity = UserProtocolActivity.this;
                userProtocolActivity.b1(section, R.string.protocol_realme_demestic_export_v13_1, userProtocolActivity.W0("global@realme.com"), "global@realme.com", true);
            } else if (kotlin.text.r.I(UserProtocolActivity.this.X0(), "oneplus", true)) {
                UserProtocolActivity userProtocolActivity2 = UserProtocolActivity.this;
                userProtocolActivity2.b1(section, R.string.protocol_oneplus_demestic_export_v13_1, userProtocolActivity2.W0("support@oneplus.com"), "support@oneplus.com", true);
            } else {
                UserProtocolActivity userProtocolActivity3 = UserProtocolActivity.this;
                userProtocolActivity3.b1(section, R.string.protocol_oppo_export_v13_1, userProtocolActivity3.W0("https://www.oppo.com/en/contact/"), "https://www.oppo.com/en/contact/", true);
            }
        }
    }

    static final class r extends kotlin.jvm.internal.s implements w8.l {
        r() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v2);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v2_v1);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v2_v2);
        }
    }

    static final class s extends kotlin.jvm.internal.s implements w8.l {
        s() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v3);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v3_v1);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v3_v2);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v3_v3);
        }
    }

    static final class t extends kotlin.jvm.internal.s implements w8.l {
        t() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v4);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_1);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_2);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_3);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_4);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_5);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_6);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_7);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_8);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_9);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_10);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_11);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_12);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_13);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_14);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_15);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_16);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_17);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_18);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_19);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_20);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_21);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_22);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_23);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_24);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v4_v1_25);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_export_v4_v2);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_export_v4_v3);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_export_v4_v4);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_export_v4_v5);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_export_v4_v6);
        }
    }

    static final class u extends kotlin.jvm.internal.s implements w8.l {
        u() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v5);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v5_v1);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v5_v2);
        }
    }

    static final class v extends kotlin.jvm.internal.s implements w8.l {

        static final class a extends kotlin.jvm.internal.s implements w8.l {
            final /* synthetic */ UserProtocolActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(UserProtocolActivity userProtocolActivity) {
                super(1);
                this.this$0 = userProtocolActivity;
            }

            @Override // w8.l
            public final CharSequence invoke(TextView body) {
                kotlin.jvm.internal.r.e(body, "$this$body");
                UserProtocolActivity userProtocolActivity = this.this$0;
                String string = body.getContext().getString(R.string.protocol_content_v6_v1, this.this$0.w1(R.string.protocol_content_v6_v1_1));
                StringBuffer stringBuffer = this.this$0.f6453o;
                stringBuffer.append(string);
                stringBuffer.append("\n");
                kotlin.jvm.internal.r.d(string, "apply(...)");
                return userProtocolActivity.s1(PrivacyPolicySpanBuilder.setUnderLine$default(PrivacyPolicySpanBuilderKt.spanBuilder(string, body), this.this$0.w1(R.string.protocol_content_v6_v1_1), 0, 2, null), body, this.this$0.w1(R.string.protocol_content_v6_v1_1), 0);
            }
        }

        static final class b extends kotlin.jvm.internal.s implements w8.l {
            final /* synthetic */ UserProtocolActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(UserProtocolActivity userProtocolActivity) {
                super(1);
                this.this$0 = userProtocolActivity;
            }

            @Override // w8.l
            public final CharSequence invoke(TextView body) {
                kotlin.jvm.internal.r.e(body, "$this$body");
                UserProtocolActivity userProtocolActivity = this.this$0;
                String string = body.getContext().getString(R.string.protocol_content_v6_v2, this.this$0.w1(R.string.protocol_content_v6_v2_1));
                StringBuffer stringBuffer = this.this$0.f6453o;
                stringBuffer.append(string);
                stringBuffer.append("\n");
                kotlin.jvm.internal.r.d(string, "apply(...)");
                return userProtocolActivity.s1(PrivacyPolicySpanBuilder.setUnderLine$default(PrivacyPolicySpanBuilderKt.spanBuilder(string, body), this.this$0.w1(R.string.protocol_content_v6_v2_1), 0, 2, null), body, this.this$0.w1(R.string.protocol_content_v6_v2_1), 0);
            }
        }

        v() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v6);
            COUIPrivacyPolicyViewKt.body(section, new a(UserProtocolActivity.this));
            COUIPrivacyPolicyViewKt.body(section, new b(UserProtocolActivity.this));
        }
    }

    static final class w extends kotlin.jvm.internal.s implements w8.l {

        static final class a extends kotlin.jvm.internal.s implements w8.l {
            final /* synthetic */ UserProtocolActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(UserProtocolActivity userProtocolActivity) {
                super(1);
                this.this$0 = userProtocolActivity;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void invoke$lambda$2(TextView this_body, View view) {
                kotlin.jvm.internal.r.e(this_body, "$this_body");
                Context context = this_body.getContext();
                if (context != null) {
                    com.coloros.translate.utils.g.d(context);
                }
            }

            @Override // w8.l
            public final CharSequence invoke(final TextView body) {
                kotlin.jvm.internal.r.e(body, "$this$body");
                String string = body.getContext().getString(R.string.protocol_content_v7_1, this.this$0.w1(R.string.version_welcome_content_3));
                StringBuffer stringBuffer = this.this$0.f6453o;
                stringBuffer.append(string);
                stringBuffer.append("\n");
                kotlin.jvm.internal.r.d(string, "apply(...)");
                return PrivacyPolicySpanBuilder.setLink$default(PrivacyPolicySpanBuilderKt.spanBuilder(string, body), this.this$0.w1(R.string.version_welcome_content_3), 0, new View.OnClickListener() { // from class: com.coloros.translate.ui.setting.userprotocol.g
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        UserProtocolActivity.w.a.invoke$lambda$2(body, view);
                    }
                }, 2, null);
            }
        }

        w() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v7);
            COUIPrivacyPolicyViewKt.body(section, new a(UserProtocolActivity.this));
        }
    }

    static final class x extends kotlin.jvm.internal.s implements w8.l {
        x() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v8);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v1);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v2);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v2_1);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v2_2);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v2_3);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v2_4);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v2_5);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v3);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v3_1);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v3_2);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v3_3);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v3_4);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v3_5);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v4);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v5);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v6);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v7);
            UserProtocolActivity.this.U0(section, R.string.protocol_content_v8_v8);
        }
    }

    static final class y extends kotlin.jvm.internal.s implements w8.l {
        y() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((COUIPrivacyPolicyView.Section) obj);
            return h0.INSTANCE;
        }

        public final void invoke(COUIPrivacyPolicyView.Section section) {
            kotlin.jvm.internal.r.e(section, "$this$section");
            UserProtocolActivity.this.V0(section, R.string.protocol_content_v9);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v9_v1);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v9_v1_1);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v9_v1_2);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v9_v1_3);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v9_v1_4);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v9_v1_5);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v9_v2);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v9_v3);
            UserProtocolActivity.this.Z0(section, R.string.protocol_content_v9_v4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T0(COUIPrivacyPolicyView.Section section, int i10, int i11) {
        COUIPrivacyPolicyViewKt.body(section, new b(i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U0(COUIPrivacyPolicyView.Section section, int i10) {
        COUIPrivacyPolicyViewKt.body(section, new c(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V0(COUIPrivacyPolicyView.Section section, int i10) {
        COUIPrivacyPolicyViewKt.smallTitle(section, new d(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String X0() {
        return (String) this.f6456r.getValue();
    }

    private final void Y0(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.title(cOUIPrivacyPolicyView, new e());
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new f());
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z0(COUIPrivacyPolicyView.Section section, int i10) {
        COUIPrivacyPolicyViewKt.body(section, new i(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a1(COUIPrivacyPolicyView.Section section, int i10, String str) {
        COUIPrivacyPolicyViewKt.body(section, new j(i10, str, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b1(COUIPrivacyPolicyView.Section section, int i10, String str, String str2, boolean z10) {
        COUIPrivacyPolicyViewKt.body(section, new k(i10, str, z10, str2, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c1(UserProtocolActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d1(AppBarLayout appBarLayout, UserProtocolActivity this$0, ScrollView scrollView) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int measuredHeight = appBarLayout.getMeasuredHeight() + this$0.getResources().getDimensionPixelOffset(R.dimen.dp_6);
        c0.f7098a.d("UserProtocolActivity", "topPadding=" + measuredHeight);
        scrollView.setPadding(0, measuredHeight, 0, 0);
        scrollView.setClipToPadding(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a1 e1(View view, a1 a1Var) {
        int i10 = a1Var.f(a1.m.d()).f15810d;
        c0.f7098a.d("UserProtocolActivity", "setupWindowInsets navigationBarHeight=" + i10);
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i10);
        return a1Var;
    }

    private final void f1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new m());
    }

    private final void g1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new n());
    }

    private final void h1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new o());
    }

    private final void i1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new p());
    }

    private final void j1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new q());
    }

    private final void k1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new r());
    }

    private final void l1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new s());
    }

    private final void m1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new t());
    }

    private final void n1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new u());
    }

    private final void o1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new v());
    }

    private final void p1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new w());
    }

    private final void q1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new x());
    }

    private final void r1(COUIPrivacyPolicyView cOUIPrivacyPolicyView) {
        COUIPrivacyPolicyViewKt.section(cOUIPrivacyPolicyView, new y());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PrivacyPolicySpanBuilder s1(PrivacyPolicySpanBuilder privacyPolicySpanBuilder, TextView textView, String str, int i10) {
        if (i10 <= 0) {
            i10 = kotlin.text.r.W(privacyPolicySpanBuilder, str, 0, false, 6, null);
        }
        if (i10 < 0) {
            return privacyPolicySpanBuilder;
        }
        privacyPolicySpanBuilder.setSpan(new TextAppearanceSpan(textView.getContext(), R.style.couiTextAppearanceButton2), i10, str.length() + i10, 33);
        return privacyPolicySpanBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t1(final Uri uri) {
        COUISnackBar cOUISnackBar = this.f6455q;
        if (cOUISnackBar != null) {
            cOUISnackBar.dismiss();
        }
        final COUIPercentWidthFrameLayout cOUIPercentWidthFrameLayout = this.f6454p;
        if (cOUIPercentWidthFrameLayout != null) {
            cOUIPercentWidthFrameLayout.postDelayed(new Runnable() { // from class: com.coloros.translate.ui.setting.userprotocol.d
                @Override // java.lang.Runnable
                public final void run() {
                    UserProtocolActivity.u1(this.f6461a, cOUIPercentWidthFrameLayout, uri);
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u1(final UserProtocolActivity this$0, COUIPercentWidthFrameLayout it, final Uri uri) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "$it");
        COUISnackBar cOUISnackBarMake = COUISnackBar.make(it, this$0.getString(R.string.toast_save_finish), VibrateUtils.STRENGTH_MAX_STEP);
        cOUISnackBarMake.setOnAction(R.string.jump_to_note, new View.OnClickListener() { // from class: com.coloros.translate.ui.setting.userprotocol.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserProtocolActivity.v1(uri, this$0, view);
            }
        });
        cOUISnackBarMake.show();
        this$0.f6455q = cOUISnackBarMake;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v1(Uri uri, UserProtocolActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (uri != null) {
            com.coloros.translate.utils.x.INSTANCE.c(this$0, uri);
        } else {
            com.coloros.translate.utils.x.INSTANCE.a(this$0, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String w1(int i10) {
        String string = getResources().getString(i10);
        kotlin.jvm.internal.r.d(string, "getString(...)");
        return string;
    }

    public final String W0(String link) {
        kotlin.jvm.internal.r.e(link, "link");
        return "\u2066" + link + "\u2069";
    }

    @Override // com.coloros.translate.base.BaseActivity
    public Class k0() {
        return com.coloros.translate.base.q.class;
    }

    @Override // com.coloros.translate.base.BaseActivity
    protected int l0() {
        return R.layout.activity_setting_protection_policy;
    }

    @Override // com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        Uri data;
        Uri data2;
        super.onActivityResult(i10, i11, intent);
        c0.f7098a.d("UserProtocolActivity", "onActivityResult requestCode=" + i10 + " resultCode=" + i11);
        if (i11 == -1) {
            if (i10 == 255) {
                if (intent == null || (data = intent.getData()) == null) {
                    return;
                }
                z0.d(0L, new l(data, this.f6453o), 1, null);
                return;
            }
            if (i10 != 65535 || intent == null || (data2 = intent.getData()) == null) {
                return;
            }
            com.coloros.translate.utils.x.INSTANCE.a(this, data2);
        }
    }

    @Override // com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRequestedOrientation((o0.e() || z.g(null, 1, null)) ? -1 : 1);
        COUIToolbar cOUIToolbar = (COUIToolbar) findViewById(R.id.toolbar);
        final AppBarLayout appBarLayout = (AppBarLayout) findViewById(R.id.app_bar_layout);
        final ScrollView scrollView = (ScrollView) findViewById(R.id.scrollview);
        if (cOUIToolbar != null) {
            cOUIToolbar.setNavigationIcon(R$drawable.coui_back_arrow);
        }
        if (cOUIToolbar != null) {
            cOUIToolbar.setNavigationContentDescription(R$string.abc_action_bar_up_description);
        }
        if (cOUIToolbar != null) {
            cOUIToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.setting.userprotocol.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserProtocolActivity.c1(this.f6457a, view);
                }
            });
        }
        if (cOUIToolbar != null) {
            cOUIToolbar.setTitle("");
        }
        setSupportActionBar(cOUIToolbar);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        m0.x0(scrollView, true);
        View statusBarView = getStatusBarView();
        appBarLayout.addView(statusBarView, 0, statusBarView.getLayoutParams());
        appBarLayout.post(new Runnable() { // from class: com.coloros.translate.ui.setting.userprotocol.b
            @Override // java.lang.Runnable
            public final void run() {
                UserProtocolActivity.d1(appBarLayout, this, scrollView);
            }
        });
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) findViewById(R.id.coordinator);
        if (coordinatorLayout != null) {
            m0.y0(coordinatorLayout, new a0() { // from class: com.coloros.translate.ui.setting.userprotocol.c
                @Override // androidx.core.view.a0
                public final a1 onApplyWindowInsets(View view, a1 a1Var) {
                    return UserProtocolActivity.e1(view, a1Var);
                }
            });
        }
        this.f6454p = (COUIPercentWidthFrameLayout) findViewById(R.id.protection_policy_recycler_view);
        COUIPrivacyPolicyView cOUIPrivacyPolicyView = (COUIPrivacyPolicyView) findViewById(R.id.protection_policy_content);
        kotlin.jvm.internal.r.b(cOUIPrivacyPolicyView);
        Y0(cOUIPrivacyPolicyView);
        f1(cOUIPrivacyPolicyView);
        k1(cOUIPrivacyPolicyView);
        l1(cOUIPrivacyPolicyView);
        m1(cOUIPrivacyPolicyView);
        n1(cOUIPrivacyPolicyView);
        o1(cOUIPrivacyPolicyView);
        p1(cOUIPrivacyPolicyView);
        q1(cOUIPrivacyPolicyView);
        r1(cOUIPrivacyPolicyView);
        g1(cOUIPrivacyPolicyView);
        h1(cOUIPrivacyPolicyView);
        i1(cOUIPrivacyPolicyView);
        j1(cOUIPrivacyPolicyView);
    }

    @Override // com.coloros.translate.base.BaseActivity
    public boolean r0() {
        return true;
    }
}
