package com.coui.appcompat.preference;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.preference.l;
import com.coui.appcompat.imageview.COUIRoundImageView;
import com.support.preference.R$dimen;
import com.support.preference.R$id;

/* JADX INFO: loaded from: classes.dex */
public class COUIPreferenceUtils {
    static final int DEFALUT_RADIUS = 14;
    static final int DELAY_TIME = 70;
    public static final int ICON_SIZE_DP_LARGE = 50;
    public static final int ICON_SIZE_DP_MEDIUM = 32;
    public static final int ICON_SIZE_DP_MEDIUM_LARGE = 36;
    public static final int ICON_SIZE_DP_SMALL = 24;

    public static void bindAssignmentView(l lVar, CharSequence charSequence, int i10) {
        TextView textView = (TextView) lVar.b(R$id.assignment);
        if (textView != null) {
            if (TextUtils.isEmpty(charSequence)) {
                textView.setVisibility(8);
                return;
            }
            textView.setText(charSequence);
            textView.setVisibility(0);
            if (i10 != 0) {
                textView.setTextColor(i10);
            }
        }
    }

    public static void bindView(l lVar, Drawable drawable, CharSequence charSequence, CharSequence charSequence2) {
        bindView(lVar, drawable, charSequence, charSequence2, 0);
    }

    public static void setIconStyle(l lVar, Context context, int i10, boolean z10, int i11, boolean z11) {
        View viewB = lVar.b(R.id.icon);
        if (viewB == null || !(viewB instanceof COUIRoundImageView)) {
            return;
        }
        if (z11) {
            COUIRoundImageView cOUIRoundImageView = (COUIRoundImageView) viewB;
            cOUIRoundImageView.setHasBorder(z10);
            cOUIRoundImageView.setBorderRectRadius(0);
            cOUIRoundImageView.setType(i11);
            return;
        }
        COUIRoundImageView cOUIRoundImageView2 = (COUIRoundImageView) viewB;
        Drawable drawable = cOUIRoundImageView2.getDrawable();
        if (drawable != null && i10 == 14) {
            i10 = drawable.getIntrinsicHeight() / 6;
            if (i10 < context.getResources().getDimensionPixelOffset(R$dimen.coui_preference_icon_min_radius)) {
                i10 = context.getResources().getDimensionPixelOffset(R$dimen.coui_preference_icon_min_radius);
            } else if (i10 > context.getResources().getDimensionPixelOffset(R$dimen.coui_preference_icon_max_radius)) {
                i10 = context.getResources().getDimensionPixelOffset(R$dimen.coui_preference_icon_max_radius);
            }
        }
        cOUIRoundImageView2.setHasBorder(z10);
        cOUIRoundImageView2.setBorderRectRadius(i10);
        cOUIRoundImageView2.setType(i11);
    }

    public static void setSummaryView(Context context, l lVar) {
        final TextView textView = (TextView) lVar.b(R.id.summary);
        if (textView != null) {
            textView.setHighlightColor(context.getResources().getColor(R.color.transparent));
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            textView.setOnTouchListener(new View.OnTouchListener() { // from class: com.coui.appcompat.preference.COUIPreferenceUtils.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    int actionMasked = motionEvent.getActionMasked();
                    int selectionStart = textView.getSelectionStart();
                    int selectionEnd = textView.getSelectionEnd();
                    int offsetForPosition = textView.getOffsetForPosition(motionEvent.getX(), motionEvent.getY());
                    boolean z10 = selectionStart == selectionEnd || offsetForPosition <= selectionStart || offsetForPosition >= selectionEnd;
                    if (actionMasked != 0) {
                        if (actionMasked == 1 || actionMasked == 3) {
                            textView.setPressed(false);
                            textView.postInvalidateDelayed(70L);
                        }
                    } else {
                        if (z10) {
                            return false;
                        }
                        textView.setPressed(true);
                        textView.invalidate();
                    }
                    return false;
                }
            });
        }
    }

    public static void setSummaryViewColor(l lVar, ColorStateList colorStateList) {
        TextView textView = (TextView) lVar.b(R.id.summary);
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    public static void setTitleViewColor(Context context, l lVar, ColorStateList colorStateList) {
        View viewB = lVar.b(R.id.title);
        if (viewB == null || colorStateList == null) {
            return;
        }
        ((TextView) viewB).setTextColor(colorStateList);
    }

    public static void bindView(l lVar, Drawable drawable, CharSequence charSequence, CharSequence charSequence2, int i10) {
        ImageView imageView = (ImageView) lVar.b(R$id.coui_preference_widget_jump);
        if (imageView != null) {
            if (drawable != null) {
                imageView.setImageDrawable(drawable);
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
        View viewB = lVar.b(R.id.icon);
        View viewB2 = lVar.b(R$id.img_layout);
        if (viewB2 != null) {
            if (viewB != null) {
                viewB2.setVisibility(viewB.getVisibility());
            } else {
                viewB2.setVisibility(8);
            }
        }
        TextView textView = (TextView) lVar.b(R$id.coui_statusText1);
        if (textView != null) {
            if (TextUtils.isEmpty(charSequence)) {
                textView.setVisibility(8);
            } else {
                textView.setText(charSequence);
                textView.setVisibility(0);
            }
        }
        bindAssignmentView(lVar, charSequence2, i10);
    }
}
