package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.coui.appcompat.accessibilityutil.COUIAccessibilityUtil;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;

/* JADX INFO: loaded from: classes.dex */
class TimePickerView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Chip f10601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Chip f10602b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ClockHandView f10603c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ClockFaceView f10604f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final MaterialButtonToggleGroup f10605h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final View.OnClickListener f10606i;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TimePickerView.i(TimePickerView.this);
        }
    }

    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            TimePickerView.j(TimePickerView.this);
            return false;
        }
    }

    class c implements View.OnTouchListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ GestureDetector f10609a;

        c(GestureDetector gestureDetector) {
            this.f10609a = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.f10609a.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    interface d {
    }

    interface e {
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    static /* synthetic */ e i(TimePickerView timePickerView) {
        timePickerView.getClass();
        return null;
    }

    static /* synthetic */ d j(TimePickerView timePickerView) {
        timePickerView.getClass();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10) {
    }

    private void l() {
        this.f10601a.setTag(R$id.selection_type, 12);
        this.f10602b.setTag(R$id.selection_type, 10);
        this.f10601a.setOnClickListener(this.f10606i);
        this.f10602b.setOnClickListener(this.f10606i);
        this.f10601a.setAccessibilityClassName(COUIAccessibilityUtil.GENERIC_VIEW_CLASS_NAME);
        this.f10602b.setAccessibilityClassName(COUIAccessibilityUtil.GENERIC_VIEW_CLASS_NAME);
    }

    private void m() {
        c cVar = new c(new GestureDetector(getContext(), new b()));
        this.f10601a.setOnTouchListener(cVar);
        this.f10602b.setOnTouchListener(cVar);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (view == this && i10 == 0) {
            this.f10602b.sendAccessibilityEvent(8);
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10606i = new a();
        LayoutInflater.from(context).inflate(R$layout.material_timepicker, this);
        this.f10604f = (ClockFaceView) findViewById(R$id.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R$id.material_clock_period_toggle);
        this.f10605h = materialButtonToggleGroup;
        materialButtonToggleGroup.b(new MaterialButtonToggleGroup.d() { // from class: com.google.android.material.timepicker.d
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.d
            public final void a(MaterialButtonToggleGroup materialButtonToggleGroup2, int i11, boolean z10) {
                this.f10614a.k(materialButtonToggleGroup2, i11, z10);
            }
        });
        this.f10601a = (Chip) findViewById(R$id.material_minute_tv);
        this.f10602b = (Chip) findViewById(R$id.material_hour_tv);
        this.f10603c = (ClockHandView) findViewById(R$id.material_clock_hand);
        m();
        l();
    }
}
