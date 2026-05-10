package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes.dex */
final class b {

    /* JADX INFO: renamed from: a */
    final a f9429a;

    /* JADX INFO: renamed from: b */
    final a f9430b;

    /* JADX INFO: renamed from: c */
    final a f9431c;

    /* JADX INFO: renamed from: d */
    final a f9432d;

    /* JADX INFO: renamed from: e */
    final a f9433e;

    /* JADX INFO: renamed from: f */
    final a f9434f;

    /* JADX INFO: renamed from: g */
    final a f9435g;

    /* JADX INFO: renamed from: h */
    final Paint f9436h;

    b(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i4.b.d(context, R$attr.materialCalendarStyle, j.class.getCanonicalName()), R$styleable.MaterialCalendar);
        this.f9429a = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_dayStyle, 0));
        this.f9435g = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_dayInvalidStyle, 0));
        this.f9430b = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_daySelectedStyle, 0));
        this.f9431c = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList colorStateListA = i4.c.a(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendar_rangeFillColor);
        this.f9432d = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_yearStyle, 0));
        this.f9433e = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_yearSelectedStyle, 0));
        this.f9434f = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.f9436h = paint;
        paint.setColor(colorStateListA.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
