package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.transition.j;
import androidx.transition.v;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TextScale extends j {
    private static final String PROPNAME_SCALE = "android:textscale:scale";

    private void captureValues(v vVar) {
        View view = vVar.f3730b;
        if (view instanceof TextView) {
            vVar.f3729a.put(PROPNAME_SCALE, Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.j
    public void captureEndValues(v vVar) {
        captureValues(vVar);
    }

    @Override // androidx.transition.j
    public void captureStartValues(v vVar) {
        captureValues(vVar);
    }

    @Override // androidx.transition.j
    public Animator createAnimator(ViewGroup viewGroup, v vVar, v vVar2) {
        if (vVar == null || vVar2 == null || !(vVar.f3730b instanceof TextView)) {
            return null;
        }
        View view = vVar2.f3730b;
        if (!(view instanceof TextView)) {
            return null;
        }
        final TextView textView = (TextView) view;
        Map map = vVar.f3729a;
        Map map2 = vVar2.f3729a;
        float fFloatValue = map.get(PROPNAME_SCALE) != null ? ((Float) map.get(PROPNAME_SCALE)).floatValue() : 1.0f;
        float fFloatValue2 = map2.get(PROPNAME_SCALE) != null ? ((Float) map2.get(PROPNAME_SCALE)).floatValue() : 1.0f;
        if (fFloatValue == fFloatValue2) {
            return null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, fFloatValue2);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.internal.TextScale.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue3 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                textView.setScaleX(fFloatValue3);
                textView.setScaleY(fFloatValue3);
            }
        });
        return valueAnimatorOfFloat;
    }
}
