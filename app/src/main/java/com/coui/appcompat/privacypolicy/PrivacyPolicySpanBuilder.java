package com.coui.appcompat.privacypolicy;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import android.text.style.TextAppearanceSpan;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.widget.TextView;
import com.coui.appcompat.log.COUILog;
import com.support.privacypolicy.R$style;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class PrivacyPolicySpanBuilder extends SpannableStringBuilder {
    private final TextView textView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrivacyPolicySpanBuilder(TextView textView, String str) {
        super(str);
        r.e(textView, "textView");
        r.e(str, "str");
        this.textView = textView;
    }

    public static /* synthetic */ PrivacyPolicySpanBuilder setBold$default(PrivacyPolicySpanBuilder privacyPolicySpanBuilder, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = privacyPolicySpanBuilder.toString();
            r.d(str, "toString()");
        }
        if ((i11 & 2) != 0) {
            i10 = -1;
        }
        return privacyPolicySpanBuilder.setBold(str, i10);
    }

    public static /* synthetic */ PrivacyPolicySpanBuilder setLink$default(PrivacyPolicySpanBuilder privacyPolicySpanBuilder, String str, int i10, View.OnClickListener onClickListener, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = privacyPolicySpanBuilder.toString();
            r.d(str, "toString()");
        }
        if ((i11 & 2) != 0) {
            i10 = -1;
        }
        if ((i11 & 4) != 0) {
            onClickListener = null;
        }
        return privacyPolicySpanBuilder.setLink(str, i10, onClickListener);
    }

    public static /* synthetic */ PrivacyPolicySpanBuilder setUnderLine$default(PrivacyPolicySpanBuilder privacyPolicySpanBuilder, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = privacyPolicySpanBuilder.toString();
            r.d(str, "toString()");
        }
        if ((i11 & 2) != 0) {
            i10 = -1;
        }
        return privacyPolicySpanBuilder.setUnderLine(str, i10);
    }

    public static /* synthetic */ PrivacyPolicySpanBuilder setWebLink$default(PrivacyPolicySpanBuilder privacyPolicySpanBuilder, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        if ((i10 & 2) != 0) {
            str = privacyPolicySpanBuilder.toString();
            r.d(str, "toString()");
        }
        return privacyPolicySpanBuilder.setWebLink(z10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setWebLink$lambda$0(String link, PrivacyPolicySpanBuilder this$0, View view) {
        r.e(link, "$link");
        r.e(this$0, "this$0");
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(link));
        try {
            this$0.textView.getContext().startActivity(intent);
        } catch (ActivityNotFoundException e10) {
            COUILog.e("PrivacyPolicySpanBuilder", e10.getMessage());
        }
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    public final /* bridge */ char charAt(int i10) {
        return get(i10);
    }

    public /* bridge */ char get(int i10) {
        return super.charAt(i10);
    }

    public /* bridge */ int getLength() {
        return super.length();
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    public final /* bridge */ int length() {
        return getLength();
    }

    public final PrivacyPolicySpanBuilder setBold(String target, int i10) {
        r.e(target, "target");
        if (i10 <= 0) {
            i10 = kotlin.text.r.W(this, target, 0, false, 6, null);
        }
        if (i10 < 0) {
            return this;
        }
        setSpan(new TextAppearanceSpan(this.textView.getContext(), R$style.boldAppearanceButton), i10, target.length() + i10, 33);
        return this;
    }

    public final PrivacyPolicySpanBuilder setLink() {
        return setLink$default(this, null, 0, null, 7, null);
    }

    public final PrivacyPolicySpanBuilder setUnderLine(String target, int i10) {
        r.e(target, "target");
        if (i10 <= 0) {
            i10 = kotlin.text.r.W(this, target, 0, false, 6, null);
        }
        if (i10 < 0) {
            return this;
        }
        setSpan(new UnderlineSpan(), i10, target.length() + i10, 33);
        return this;
    }

    public final PrivacyPolicySpanBuilder setWebLink(boolean z10, final String link) {
        r.e(link, "link");
        if (z10) {
            this.textView.setMovementMethod(new MultiMovementMethod());
            setLink$default(this, link, 0, new View.OnClickListener() { // from class: com.coui.appcompat.privacypolicy.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PrivacyPolicySpanBuilder.setWebLink$lambda$0(link, this, view);
                }
            }, 2, null);
        }
        return this;
    }

    public final PrivacyPolicySpanBuilder setLink(String target) {
        r.e(target, "target");
        return setLink$default(this, target, 0, null, 6, null);
    }

    public final PrivacyPolicySpanBuilder setLink(String target, int i10) {
        r.e(target, "target");
        return setLink$default(this, target, i10, null, 4, null);
    }

    public final PrivacyPolicySpanBuilder setLink(String target, int i10, final View.OnClickListener onClickListener) {
        r.e(target, "target");
        this.textView.setMovementMethod(new MultiMovementMethod());
        this.textView.setHighlightColor(0);
        if (i10 <= 0) {
            i10 = kotlin.text.r.W(this, target, 0, false, 6, null);
        }
        if (i10 < 0) {
            return this;
        }
        int length = target.length();
        if (onClickListener != null) {
            final Context context = this.textView.getContext();
            setSpan(new MultiFunctionSpan(onClickListener, context) { // from class: com.coui.appcompat.privacypolicy.PrivacyPolicySpanBuilder$setLink$clickableSpan$1
                final /* synthetic */ View.OnClickListener $clickListener;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(context);
                    r.d(context, "context");
                }

                @Override // com.coui.appcompat.privacypolicy.MultiFunctionSpan, android.text.style.ClickableSpan
                public void onClick(View widget) {
                    r.e(widget, "widget");
                    this.$clickListener.onClick(widget);
                }
            }, i10, length + i10, 33);
        }
        return this;
    }
}
