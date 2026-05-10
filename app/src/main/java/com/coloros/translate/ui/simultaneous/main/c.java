package com.coloros.translate.ui.simultaneous.main;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.coloros.translate.R;
import com.coloros.translate.ui.simultaneous.widget.COUIAnimateTextView;
import com.coloros.translate.ui.simultaneous.widget.CloseRestoreLottieAnimationView;
import com.coui.appcompat.textview.COUITextView;
import com.support.appcompat.R$color;

/* JADX INFO: loaded from: classes.dex */
public final class c extends RecyclerView.d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f6656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n8.j f6658c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final n8.j f6659f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final n8.j f6660h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final n8.j f6661i;

    static final class a extends kotlin.jvm.internal.s implements w8.a {
        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final CloseRestoreLottieAnimationView mo8invoke() {
            return (CloseRestoreLottieAnimationView) c.this.k().findViewById(R.id.dian);
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final TextView mo8invoke() {
            return (TextView) c.this.k().findViewById(R.id.emptySpeakLoading);
        }
    }

    /* JADX INFO: renamed from: com.coloros.translate.ui.simultaneous.main.c$c, reason: collision with other inner class name */
    static final class C0092c extends kotlin.jvm.internal.s implements w8.a {
        C0092c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final COUIAnimateTextView mo8invoke() {
            return (COUIAnimateTextView) c.this.k().findViewById(R.id.item_textview);
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final COUITextView mo8invoke() {
            return (COUITextView) c.this.k().findViewById(R.id.target_item_textview);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(View view) {
        super(view);
        kotlin.jvm.internal.r.e(view, "view");
        this.f6656a = view;
        this.f6658c = n8.k.b(new b());
        this.f6659f = n8.k.b(new C0092c());
        this.f6660h = n8.k.b(new d());
        this.f6661i = n8.k.b(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(c this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        CharSequence text = this$0.h().getText();
        CharSequence text2 = this$0.i().getText();
        StringBuilder sb = new StringBuilder();
        sb.append((Object) text);
        sb.append((Object) text2);
        String string = sb.toString();
        com.coloros.translate.widget.k kVarA = com.coloros.translate.widget.k.f7233c.a();
        Context context = this$0.f6656a.getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        kVarA.d(context, string, R.string.text_has_been_copied);
        return true;
    }

    private final CloseRestoreLottieAnimationView f() {
        Object value = this.f6661i.getValue();
        kotlin.jvm.internal.r.d(value, "getValue(...)");
        return (CloseRestoreLottieAnimationView) value;
    }

    private final TextView g() {
        Object value = this.f6658c.getValue();
        kotlin.jvm.internal.r.d(value, "getValue(...)");
        return (TextView) value;
    }

    private final COUIAnimateTextView h() {
        Object value = this.f6659f.getValue();
        kotlin.jvm.internal.r.d(value, "getValue(...)");
        return (COUIAnimateTextView) value;
    }

    private final COUITextView i() {
        Object value = this.f6660h.getValue();
        kotlin.jvm.internal.r.d(value, "getValue(...)");
        return (COUITextView) value;
    }

    public final void c() {
        this.f6656a.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.coloros.translate.ui.simultaneous.main.b
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return c.d(this.f6654a, view);
            }
        });
    }

    public final void e(o2.a data) {
        kotlin.jvm.internal.r.e(data, "data");
        CharSequence text = i().getText();
        if (text == null || text.length() == 0) {
            com.coloros.translate.utils.c0.f7098a.i("SimultaneousMainAdapter", "defaultHistoryColor msgId:" + data.d() + " newText:" + data.h().length());
            i().setVisibility(kotlin.text.r.N0(data.h()).toString().length() == 0 ? 8 : 0);
            f().setVisibility(8);
            com.coloros.translate.utils.w.e(f());
            i().setText(data.h());
        }
        h().setTextColor(Color.parseColor("#A3FFFFFF"));
        i().setTextColor(Color.parseColor("#A3FFFFFF"));
    }

    public final boolean j() {
        return this.f6657b;
    }

    public final View k() {
        return this.f6656a;
    }

    public final void l(o2.a data, boolean z10, boolean z11, boolean z12, boolean z13) {
        kotlin.jvm.internal.r.e(data, "data");
        if (z12) {
            if (data.l()) {
                h().setTextColor(this.f6656a.getResources().getColor(R$color.coui_color_label_on_color_light, null));
                i().setTextColor(this.f6656a.getResources().getColor(R$color.coui_color_label_on_color_light, null));
            } else {
                h().setTextColor(Color.parseColor("#A3FFFFFF"));
                i().setTextColor(Color.parseColor("#A3FFFFFF"));
            }
        } else if (z11) {
            h().setTextColor(this.f6656a.getResources().getColor(R$color.coui_color_label_on_color_light, null));
            i().setTextColor(this.f6656a.getResources().getColor(R$color.coui_color_label_on_color_light, null));
        } else {
            h().setTextColor(Color.parseColor("#A3FFFFFF"));
            i().setTextColor(Color.parseColor("#A3FFFFFF"));
        }
        int length = data.b().length();
        String strB = data.b();
        if (z10) {
            h().setVisibility(kotlin.text.r.N0(strB).toString().length() == 0 ? 8 : 0);
            if (!z13 || (data.i() && (data.c() <= 0 || length == data.c()))) {
                h().f();
                h().setText(strB);
            } else {
                h().setStableColor(h().getTextColors().getDefaultColor());
                h().setEndColor(h().getTextColors().getDefaultColor());
                h().i(new SpannableStringBuilder(strB), data.c());
            }
            data.t(length);
        } else {
            h().setVisibility(8);
            h().f();
            data.t(length);
        }
        i().setVisibility(kotlin.text.r.N0(data.h()).toString().length() == 0 ? 8 : 0);
        if (!data.i() || data.h().length() != 0 || data.l() || data.m()) {
            com.coloros.translate.utils.w.e(f());
            f().setVisibility(8);
            i().setText(data.h());
            data.s(data.h().length());
            return;
        }
        if (f().getVisibility() == 8) {
            f().setVisibility(0);
            f().v();
        }
    }

    public final void m(boolean z10) {
        g().setVisibility(z10 ? 0 : 8);
    }

    public final void n(boolean z10) {
        this.f6657b = z10;
    }
}
