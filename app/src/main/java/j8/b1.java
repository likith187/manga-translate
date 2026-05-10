package j8;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import j8.n0;

/* JADX INFO: loaded from: classes2.dex */
abstract class b1 {
    protected static FrameLayout a(Context context, m0 m0Var, n0.a aVar) {
        FrameLayout frameLayout = new FrameLayout(context);
        if (m0Var.f12823g == null) {
            int[] iArr = m0Var.f12825i;
            frameLayout.setBackgroundColor(Color.rgb(iArr[0], iArr[1], iArr[2]));
        }
        TextView textView = new TextView(context);
        textView.setVisibility(0);
        int[] iArr2 = m0Var.f12824h;
        if (iArr2 != null) {
            textView.setTextColor(Color.rgb(iArr2[0], iArr2[1], iArr2[2]));
        }
        textView.setSingleLine(m0Var.f12830n);
        Float f10 = m0Var.f12827k;
        if (f10 != null) {
            textView.setTextSize(f10.floatValue() / context.getResources().getDisplayMetrics().scaledDensity);
        } else {
            c1 c1Var = aVar.f12843i;
            textView.setAutoSizeTextTypeUniformWithConfiguration(c1Var.f12786g, c1Var.f12787h, 2, 0);
        }
        Typeface typeface = m0Var.f12828l;
        if (typeface != null) {
            textView.setTypeface(typeface);
        }
        textView.setTextAlignment(1);
        textView.setGravity(16);
        textView.setText(m0Var.f12819c);
        textView.setTag("textview");
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, 0, 0, 0);
        c1 c1Var2 = aVar.f12843i;
        int i10 = c1Var2.f12781b;
        int i11 = c1Var2.f12785f + i10;
        int i12 = i10 / 2;
        textView.setPadding(i11, i12, i12, i12);
        frameLayout.addView(textView, layoutParams);
        aa.h hVarT = k8.e.t(m0Var.f12822f.f12833c);
        frameLayout.measure(View.MeasureSpec.makeMeasureSpec((int) hVarT.f147a, 1073741824), View.MeasureSpec.makeMeasureSpec((int) hVarT.f148b, 1073741824));
        frameLayout.layout(0, 0, (int) hVarT.f147a, (int) hVarT.f148b);
        return frameLayout;
    }
}
