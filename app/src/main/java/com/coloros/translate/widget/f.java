package com.coloros.translate.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.coloros.translate.privacysecuritypolicy.PrivacyPolicyManager;
import com.coloros.translate.utils.n0;
import com.coui.appcompat.R;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.h0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f7221d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f7222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DialogInterface.OnClickListener f7223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.appcompat.app.c f7224c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final class b extends ClickableSpan {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f7225a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f7226b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f f7227c;

        public b(f fVar, Context context) {
            r.e(context, "context");
            this.f7227c = fVar;
            this.f7225a = context;
            this.f7226b = COUIContextUtil.getAttrColor(context, R.attr.couiColorPrimary);
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            r.e(view, "view");
            PrivacyPolicyManager.f5415i.c(this.f7225a);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            r.e(textPaint, "textPaint");
            super.updateDrawState(textPaint);
            textPaint.setUnderlineText(false);
            textPaint.setColor(this.f7226b);
        }
    }

    public f(Context context, DialogInterface.OnClickListener onClickListener) {
        r.e(context, "context");
        this.f7222a = context;
        this.f7223b = onClickListener;
    }

    public final void a() {
        if (this.f7224c == null) {
            View viewInflate = LayoutInflater.from(this.f7222a).inflate(com.coloros.translate.R.layout.cancel_layout_content, (ViewGroup) null);
            String string = this.f7222a.getString(com.coloros.translate.R.string.translation_personal_info_protection_policy);
            r.d(string, "getString(...)");
            h0 h0Var = h0.INSTANCE;
            String string2 = this.f7222a.getString(com.coloros.translate.R.string.cancel_content_tip);
            r.d(string2, "getString(...)");
            String str = String.format(string2, Arrays.copyOf(new Object[]{string}, 1));
            r.d(str, "format(...)");
            SpannableString spannableString = new SpannableString(str);
            int iS = kotlin.text.r.S(str, string, 0, false);
            if (iS < str.length() - 1 && iS >= 0) {
                spannableString.setSpan(new b(this, this.f7222a), iS, string.length() + iS, 33);
            }
            TextView textView = (TextView) viewInflate.findViewById(com.coloros.translate.R.id.cancel_content_tv);
            if (textView != null) {
                textView.setVisibility(0);
                textView.setText(spannableString);
                textView.setHighlightColor(textView.getContext().getColor(android.R.color.transparent));
                textView.setMovementMethod(LinkMovementMethod.getInstance());
            }
            this.f7224c = new COUIAlertDialogBuilder(this.f7222a).setTitle((CharSequence) n0.b(com.coloros.translate.R.string.withdrawal_personal_info_protection_policy)).setView(viewInflate).setPositiveButton(n0.b(com.coloros.translate.R.string.not_withdrawn), (DialogInterface.OnClickListener) null).setNegativeButton(n0.b(com.coloros.translate.R.string.withdraw), this.f7223b).create();
        }
        androidx.appcompat.app.c cVar = this.f7224c;
        if (cVar != null) {
            cVar.show();
        }
    }
}
