package com.coui.appcompat.aboutpage;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.preference.R$attr;
import androidx.preference.l;
import com.coui.appcompat.aboutpage.COUIAppInfoPreference;
import com.coui.appcompat.poplist.COUIPopupWindow;
import com.coui.appcompat.preference.COUIPreference;
import com.support.component.R$dimen;
import com.support.component.R$id;
import com.support.component.R$layout;
import com.support.component.R$styleable;
import com.support.poplist.R$drawable;
import java.util.Locale;
import kotlin.jvm.internal.r;
import t.h;

/* JADX INFO: loaded from: classes.dex */
public final class COUIAppInfoPreference extends COUIPreference {
    private Drawable appIcon;
    private String appName;
    private String appVersion;
    private String copyFinishText;
    private String copyText;
    private COUIPopupWindow popupWindow;
    private Toast toast;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIAppInfoPreference(Context context) {
        this(context, null);
        r.e(context, "context");
    }

    private final void initPopupWindow(Rect rect) {
        final COUIPopupWindow cOUIPopupWindow = new COUIPopupWindow(getContext());
        cOUIPopupWindow.setContentView(LayoutInflater.from(getContext()).inflate(R$layout.coui_component_popup_window_layout, (ViewGroup) null, false));
        Drawable drawableF = h.f(getContext().getResources(), R$drawable.coui_popup_window_bg, null);
        if (drawableF != null) {
            drawableF.getPadding(rect);
            cOUIPopupWindow.setBackgroundDrawable(drawableF);
        }
        final TextView textView = (TextView) cOUIPopupWindow.getContentView().findViewById(R$id.popup_window_copy_body);
        textView.setText(this.copyText);
        textView.setOnClickListener(new View.OnClickListener() { // from class: q2.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                COUIAppInfoPreference.initPopupWindow$lambda$11$lambda$10$lambda$9(textView, this, cOUIPopupWindow, view);
            }
        });
        cOUIPopupWindow.setDismissTouchOutside(true);
        this.popupWindow = cOUIPopupWindow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initPopupWindow$lambda$11$lambda$10$lambda$9(TextView textView, COUIAppInfoPreference this$0, COUIPopupWindow this_apply$1, View view) {
        r.e(this$0, "this$0");
        r.e(this_apply$1, "$this_apply$1");
        Object systemService = textView.getContext().getSystemService("clipboard");
        r.c(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(null, this$0.appVersion));
        Toast toast = this$0.toast;
        if (toast != null) {
            toast.cancel();
        }
        String str = this$0.copyFinishText;
        if (str != null) {
            Toast toastMakeText = Toast.makeText(textView.getContext().getApplicationContext(), str, 0);
            toastMakeText.show();
            this$0.toast = toastMakeText;
        }
        this_apply$1.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onBindViewHolder$lambda$5$lambda$4(COUIAppInfoPreference this$0, Rect drawableRect, TextView this_apply, View view) {
        r.e(this$0, "this$0");
        r.e(drawableRect, "$drawableRect");
        r.e(this_apply, "$this_apply");
        if (this$0.copyText == null) {
            return true;
        }
        if (this$0.popupWindow == null) {
            this$0.initPopupWindow(drawableRect);
        }
        this$0.showPopupWindow(drawableRect, this_apply);
        return true;
    }

    private final void showPopupWindow(Rect rect, View view) {
        TextPaint paint;
        View contentView;
        COUIPopupWindow cOUIPopupWindow = this.popupWindow;
        TextView textView = (cOUIPopupWindow == null || (contentView = cOUIPopupWindow.getContentView()) == null) ? null : (TextView) contentView.findViewById(R$id.popup_window_copy_body);
        Integer numValueOf = textView != null ? Integer.valueOf(textView.getPaddingStart()) : null;
        Integer numValueOf2 = textView != null ? Integer.valueOf(textView.getPaddingEnd()) : null;
        int iIntValue = (((((rect.left + rect.right) + (numValueOf != null ? numValueOf.intValue() : 0)) + (numValueOf2 != null ? numValueOf2.intValue() : 0)) + ((int) ((textView == null || (paint = textView.getPaint()) == null) ? 0.0f : paint.measureText(this.copyText)))) - view.getMeasuredWidth()) / 2;
        int measuredHeight = view.getMeasuredHeight() + getContext().getResources().getDimensionPixelOffset(R$dimen.coui_component_copy_window_height) + getContext().getResources().getDimensionPixelOffset(R$dimen.coui_component_copy_window_margin_bottom) + rect.top;
        Locale locale = Locale.getDefault();
        r.d(locale, "getDefault()");
        int i10 = TextUtils.getLayoutDirectionFromLocale(locale) == 1 ? (-view.getMeasuredWidth()) - iIntValue : -iIntValue;
        COUIPopupWindow cOUIPopupWindow2 = this.popupWindow;
        if (cOUIPopupWindow2 != null) {
            cOUIPopupWindow2.showAsDropDown(view, i10, -measuredHeight);
        }
    }

    public final Drawable getAppIcon() {
        return this.appIcon;
    }

    public final String getAppName() {
        return this.appName;
    }

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final String getCopyFinishText() {
        return this.copyFinishText;
    }

    public final String getCopyText() {
        return this.copyText;
    }

    @Override // com.coui.appcompat.preference.COUIPreference, androidx.preference.Preference
    public void onBindViewHolder(l holder) {
        r.e(holder, "holder");
        super.onBindViewHolder(holder);
        ImageView imageView = (ImageView) holder.b(R$id.about_app_icon);
        if (imageView != null) {
            ViewParent parent = imageView.getParent();
            if (parent != null) {
                r.d(parent, "parent");
                imageView.setOnClickListener(null);
                imageView.setBackground(null);
            }
            imageView.setImageDrawable(this.appIcon);
            imageView.setContentDescription(this.appName);
        }
        TextView textView = (TextView) holder.b(R$id.about_app_name);
        if (textView != null) {
            textView.setText(this.appName);
        }
        final TextView textView2 = (TextView) holder.b(R$id.about_app_version);
        if (textView2 != null) {
            textView2.setText(this.appVersion);
            final Rect rect = new Rect();
            textView2.setOnLongClickListener(new View.OnLongClickListener() { // from class: q2.b
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return COUIAppInfoPreference.onBindViewHolder$lambda$5$lambda$4(this.f15338a, rect, textView2, view);
                }
            });
        }
    }

    public final void setAppIcon(Drawable drawable) {
        this.appIcon = drawable;
    }

    public final void setAppName(String str) {
        this.appName = str;
    }

    public final void setAppVersion(String str) {
        this.appVersion = str;
    }

    public final void setCopyFinishText(String str) {
        this.copyFinishText = str;
    }

    public final void setCopyText(String str) {
        this.copyText = str;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIAppInfoPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.preferenceStyle);
        r.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public COUIAppInfoPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
        r.e(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUIAppInfoPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        r.e(context, "context");
        setLayoutResource(R$layout.coui_component_preference_application_info);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIAppInfoPreference, 0, 0);
        this.appName = typedArrayObtainStyledAttributes.getString(R$styleable.COUIAppInfoPreference_appName);
        this.appIcon = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIAppInfoPreference_appIcon);
        this.appVersion = typedArrayObtainStyledAttributes.getString(R$styleable.COUIAppInfoPreference_appVersion);
        this.copyText = typedArrayObtainStyledAttributes.getString(R$styleable.COUIAppInfoPreference_copyText);
        this.copyFinishText = typedArrayObtainStyledAttributes.getString(R$styleable.COUIAppInfoPreference_copyFinishText);
        typedArrayObtainStyledAttributes.recycle();
    }
}
