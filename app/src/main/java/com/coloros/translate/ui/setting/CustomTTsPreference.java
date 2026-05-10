package com.coloros.translate.ui.setting;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.preference.l;
import com.coloros.translate.R;
import com.coloros.translate.ui.setting.CustomTTsPreference;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.l0;
import com.coloros.translate.utils.m;
import com.coloros.translate.utils.n;
import com.coui.appcompat.preference.COUIPreference;
import com.coui.appcompat.seekbar.COUISectionSeekBar;
import com.coui.appcompat.seekbar.COUISeekBar;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class CustomTTsPreference extends COUIPreference {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f6411h = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private COUISectionSeekBar f6412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f6413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String[] f6414c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f6415f;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public interface b {
        void a();
    }

    public CustomTTsPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        String[] stringArray = m.INSTANCE.a().getResources().getStringArray(R.array.play_speed);
        r.d(stringArray, "getStringArray(...)");
        this.f6414c = stringArray;
    }

    public final void k(b callback) {
        r.e(callback, "callback");
        this.f6415f = callback;
    }

    @Override // com.coui.appcompat.preference.COUIPreference, androidx.preference.Preference
    public void onBindViewHolder(l holder) {
        r.e(holder, "holder");
        super.onBindViewHolder(holder);
        View viewB = holder.b(R.id.tts_speed_level);
        r.c(viewB, "null cannot be cast to non-null type android.widget.TextView");
        this.f6413b = (TextView) viewB;
        View viewB2 = holder.b(R.id.section_seek_bar);
        r.c(viewB2, "null cannot be cast to non-null type com.coui.appcompat.seekbar.COUISectionSeekBar");
        COUISectionSeekBar cOUISectionSeekBar = (COUISectionSeekBar) viewB2;
        this.f6412a = cOUISectionSeekBar;
        if (cOUISectionSeekBar != null) {
            cOUISectionSeekBar.setMax(3);
            cOUISectionSeekBar.setProgress(((Number) l0.a.g(l0.f7130a, "tts_speed", 1, null, 4, null)).intValue());
            String[] stringArray = m.INSTANCE.a().getResources().getStringArray(R.array.play_speed);
            r.d(stringArray, "getStringArray(...)");
            this.f6414c = stringArray;
            TextView textView = this.f6413b;
            if (textView != null) {
                textView.setText(stringArray[cOUISectionSeekBar.getProgress()]);
            }
            cOUISectionSeekBar.setEnableVibrator(true);
            cOUISectionSeekBar.setOnSeekBarChangeListener(new COUISeekBar.OnSeekBarChangeListener() { // from class: com.coloros.translate.ui.setting.CustomTTsPreference$onBindViewHolder$1$1
                @Override // com.coui.appcompat.seekbar.COUISeekBar.OnSeekBarChangeListener
                public void onProgressChanged(COUISeekBar cOUISeekBar, int i10, boolean z10) {
                    TextView textView2 = this.f6416a.f6413b;
                    if (textView2 != null) {
                        textView2.setText(this.f6416a.f6414c[i10]);
                    }
                    l0.a.l(l0.f7130a, "tts_speed", Integer.valueOf(i10), false, null, 12, null);
                    c0.f7098a.d("CustomTTsPreference", "onSpeedChanged progress : " + i10);
                    CustomTTsPreference.b bVar = this.f6416a.f6415f;
                    if (bVar != null) {
                        bVar.a();
                    }
                    n.INSTANCE.s(i10);
                }

                @Override // com.coui.appcompat.seekbar.COUISeekBar.OnSeekBarChangeListener
                public void onStartTrackingTouch(COUISeekBar cOUISeekBar) {
                }

                @Override // com.coui.appcompat.seekbar.COUISeekBar.OnSeekBarChangeListener
                public void onStopTrackingTouch(COUISeekBar cOUISeekBar) {
                }
            });
        }
    }

    public CustomTTsPreference(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        String[] stringArray = m.INSTANCE.a().getResources().getStringArray(R.array.play_speed);
        r.d(stringArray, "getStringArray(...)");
        this.f6414c = stringArray;
    }

    public CustomTTsPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        String[] stringArray = m.INSTANCE.a().getResources().getStringArray(R.array.play_speed);
        r.d(stringArray, "getStringArray(...)");
        this.f6414c = stringArray;
    }

    public CustomTTsPreference(Context context) {
        super(context);
        String[] stringArray = m.INSTANCE.a().getResources().getStringArray(R.array.play_speed);
        r.d(stringArray, "getStringArray(...)");
        this.f6414c = stringArray;
    }
}
