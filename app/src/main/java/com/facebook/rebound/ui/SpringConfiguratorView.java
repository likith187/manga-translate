package com.facebook.rebound.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TableLayout;
import android.widget.TextView;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import u2.g;
import u2.h;
import u2.j;

/* JADX INFO: loaded from: classes.dex */
public class SpringConfiguratorView extends FrameLayout {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final DecimalFormat f7457q = new DecimalFormat("#.#");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f7458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f7459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final u2.e f7460c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f7461f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f7462h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final g f7463i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f7464j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private SeekBar f7465k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private SeekBar f7466l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Spinner f7467m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private TextView f7468n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextView f7469o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private u2.f f7470p;

    private class b implements View.OnTouchListener {
        private b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return true;
            }
            SpringConfiguratorView.this.p();
            return true;
        }
    }

    private class c implements h {
        private c() {
        }

        @Override // u2.h
        public void onSpringActivate(u2.e eVar) {
        }

        @Override // u2.h
        public void onSpringAtRest(u2.e eVar) {
        }

        @Override // u2.h
        public void onSpringEndStateChange(u2.e eVar) {
        }

        @Override // u2.h
        public void onSpringUpdate(u2.e eVar) {
            float fC = (float) eVar.c();
            float f10 = SpringConfiguratorView.this.f7462h;
            SpringConfiguratorView.this.setTranslationY((fC * (SpringConfiguratorView.this.f7461f - f10)) + f10);
        }
    }

    private class d implements SeekBar.OnSeekBarChangeListener {
        private d() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
            if (seekBar == SpringConfiguratorView.this.f7465k) {
                double d10 = ((i10 * 200.0f) / 100000.0f) + 0.0f;
                SpringConfiguratorView.this.f7470p.f15856b = u2.d.d(d10);
                String str = SpringConfiguratorView.f7457q.format(d10);
                SpringConfiguratorView.this.f7469o.setText("T:" + str);
            }
            if (seekBar == SpringConfiguratorView.this.f7466l) {
                double d11 = ((i10 * 50.0f) / 100000.0f) + 0.0f;
                SpringConfiguratorView.this.f7470p.f15855a = u2.d.a(d11);
                String str2 = SpringConfiguratorView.f7457q.format(d11);
                SpringConfiguratorView.this.f7468n.setText("F:" + str2);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    private class e extends BaseAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f7474a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f7475b = new ArrayList();

        public e(Context context) {
            this.f7474a = context;
        }

        public void a(String str) {
            this.f7475b.add(str);
            notifyDataSetChanged();
        }

        public void b() {
            this.f7475b.clear();
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f7475b.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this.f7475b.get(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            TextView textView;
            if (view == null) {
                textView = new TextView(this.f7474a);
                textView.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
                int iD = v2.a.d(12.0f, SpringConfiguratorView.this.getResources());
                textView.setPadding(iD, iD, iD, iD);
                textView.setTextColor(SpringConfiguratorView.this.f7464j);
            } else {
                textView = (TextView) view;
            }
            textView.setText((CharSequence) this.f7475b.get(i10));
            return textView;
        }
    }

    private class f implements AdapterView.OnItemSelectedListener {
        private f() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
            SpringConfiguratorView springConfiguratorView = SpringConfiguratorView.this;
            springConfiguratorView.f7470p = (u2.f) springConfiguratorView.f7459b.get(i10);
            SpringConfiguratorView springConfiguratorView2 = SpringConfiguratorView.this;
            springConfiguratorView2.q(springConfiguratorView2.f7470p);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView adapterView) {
        }
    }

    public SpringConfiguratorView(Context context) {
        this(context, null);
    }

    private View n(Context context) {
        Resources resources = getResources();
        int iD = v2.a.d(5.0f, resources);
        int iD2 = v2.a.d(10.0f, resources);
        int iD3 = v2.a.d(20.0f, resources);
        TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.setMargins(0, 0, iD, 0);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(v2.a.a(-1, v2.a.d(300.0f, resources)));
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParamsB = v2.a.b();
        layoutParamsB.setMargins(0, iD3, 0, 0);
        frameLayout2.setLayoutParams(layoutParamsB);
        frameLayout2.setBackgroundColor(Color.argb(100, 0, 0, 0));
        frameLayout.addView(frameLayout2);
        this.f7467m = new Spinner(context, 0);
        FrameLayout.LayoutParams layoutParamsC = v2.a.c();
        layoutParamsC.gravity = 48;
        layoutParamsC.setMargins(iD2, iD2, iD2, 0);
        this.f7467m.setLayoutParams(layoutParamsC);
        frameLayout2.addView(this.f7467m);
        LinearLayout linearLayout = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParamsC2 = v2.a.c();
        layoutParamsC2.setMargins(0, 0, 0, v2.a.d(80.0f, resources));
        layoutParamsC2.gravity = 80;
        linearLayout.setLayoutParams(layoutParamsC2);
        linearLayout.setOrientation(1);
        frameLayout2.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParamsC3 = v2.a.c();
        layoutParamsC3.setMargins(iD2, iD2, iD2, iD3);
        linearLayout2.setPadding(iD2, iD2, iD2, iD2);
        linearLayout2.setLayoutParams(layoutParamsC3);
        linearLayout2.setOrientation(0);
        linearLayout.addView(linearLayout2);
        SeekBar seekBar = new SeekBar(context);
        this.f7465k = seekBar;
        seekBar.setLayoutParams(layoutParams);
        linearLayout2.addView(this.f7465k);
        TextView textView = new TextView(getContext());
        this.f7469o = textView;
        textView.setTextColor(this.f7464j);
        FrameLayout.LayoutParams layoutParamsA = v2.a.a(v2.a.d(50.0f, resources), -1);
        this.f7469o.setGravity(19);
        this.f7469o.setLayoutParams(layoutParamsA);
        this.f7469o.setMaxLines(1);
        linearLayout2.addView(this.f7469o);
        LinearLayout linearLayout3 = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParamsC4 = v2.a.c();
        layoutParamsC4.setMargins(iD2, iD2, iD2, iD3);
        linearLayout3.setPadding(iD2, iD2, iD2, iD2);
        linearLayout3.setLayoutParams(layoutParamsC4);
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3);
        SeekBar seekBar2 = new SeekBar(context);
        this.f7466l = seekBar2;
        seekBar2.setLayoutParams(layoutParams);
        linearLayout3.addView(this.f7466l);
        TextView textView2 = new TextView(getContext());
        this.f7468n = textView2;
        textView2.setTextColor(this.f7464j);
        FrameLayout.LayoutParams layoutParamsA2 = v2.a.a(v2.a.d(50.0f, resources), -1);
        this.f7468n.setGravity(19);
        this.f7468n.setLayoutParams(layoutParamsA2);
        this.f7468n.setMaxLines(1);
        linearLayout3.addView(this.f7468n);
        View view = new View(context);
        FrameLayout.LayoutParams layoutParamsA3 = v2.a.a(v2.a.d(60.0f, resources), v2.a.d(40.0f, resources));
        layoutParamsA3.gravity = 49;
        view.setLayoutParams(layoutParamsA3);
        view.setOnTouchListener(new b());
        view.setBackgroundColor(Color.argb(255, 0, 164, 209));
        frameLayout.addView(view);
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        this.f7460c.n(this.f7460c.e() == 1.0d ? 0.0d : 1.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(u2.f fVar) {
        int iRound = Math.round(((((float) u2.d.c(fVar.f15856b)) - 0.0f) * 100000.0f) / 200.0f);
        int iRound2 = Math.round(((((float) u2.d.b(fVar.f15855a)) - 0.0f) * 100000.0f) / 50.0f);
        this.f7465k.setProgress(iRound);
        this.f7466l.setProgress(iRound2);
    }

    public void o() {
        Map mapB = this.f7463i.b();
        this.f7458a.b();
        this.f7459b.clear();
        for (Map.Entry entry : mapB.entrySet()) {
            if (entry.getKey() != u2.f.f15854c) {
                this.f7459b.add(entry.getKey());
                this.f7458a.a((String) entry.getValue());
            }
        }
        this.f7459b.add(u2.f.f15854c);
        this.f7458a.a((String) mapB.get(u2.f.f15854c));
        this.f7458a.notifyDataSetChanged();
        if (this.f7459b.size() > 0) {
            this.f7467m.setSelection(0);
        }
    }

    public SpringConfiguratorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @TargetApi(11)
    public SpringConfiguratorView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7459b = new ArrayList();
        this.f7464j = Color.argb(255, 225, 225, 225);
        j jVarG = j.g();
        this.f7463i = g.c();
        e eVar = new e(context);
        this.f7458a = eVar;
        Resources resources = getResources();
        this.f7462h = v2.a.d(40.0f, resources);
        float fD = v2.a.d(280.0f, resources);
        this.f7461f = fD;
        u2.e eVarC = jVarG.c();
        this.f7460c = eVarC;
        eVarC.l(1.0d).n(1.0d).a(new c());
        addView(n(context));
        d dVar = new d();
        this.f7465k.setMax(100000);
        this.f7465k.setOnSeekBarChangeListener(dVar);
        this.f7466l.setMax(100000);
        this.f7466l.setOnSeekBarChangeListener(dVar);
        this.f7467m.setAdapter((SpinnerAdapter) eVar);
        this.f7467m.setOnItemSelectedListener(new f());
        o();
        setTranslationY(fD);
    }
}
