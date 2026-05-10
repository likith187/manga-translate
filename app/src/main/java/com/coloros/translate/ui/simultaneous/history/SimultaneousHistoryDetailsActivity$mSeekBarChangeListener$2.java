package com.coloros.translate.ui.simultaneous.history;

import android.media.MediaPlayer;
import android.widget.TextView;
import com.coui.appcompat.seekbar.COUISeekBar;

/* JADX INFO: loaded from: classes.dex */
final class SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2 extends kotlin.jvm.internal.s implements w8.a {
    final /* synthetic */ SimultaneousHistoryDetailsActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2(SimultaneousHistoryDetailsActivity simultaneousHistoryDetailsActivity) {
        super(0);
        this.this$0 = simultaneousHistoryDetailsActivity;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.coloros.translate.ui.simultaneous.history.SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1] */
    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final AnonymousClass1 mo8invoke() {
        final SimultaneousHistoryDetailsActivity simultaneousHistoryDetailsActivity = this.this$0;
        return new COUISeekBar.OnSeekBarChangeListener() { // from class: com.coloros.translate.ui.simultaneous.history.SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2.1
            @Override // com.coui.appcompat.seekbar.COUISeekBar.OnSeekBarChangeListener
            public void onProgressChanged(COUISeekBar cOUISeekBar, int i10, boolean z10) {
                if (z10) {
                    TextView textView = simultaneousHistoryDetailsActivity.f6504x;
                    if (textView == null) {
                        kotlin.jvm.internal.r.r("mAudioCurrentPos");
                        textView = null;
                    }
                    long j10 = i10;
                    textView.setText(com.coloros.translate.ui.simultaneous.utils.d.a(j10 / 1000));
                    SimultaneousHistoryDetailsActivity.m1(simultaneousHistoryDetailsActivity).L(j10);
                }
            }

            @Override // com.coui.appcompat.seekbar.COUISeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(COUISeekBar cOUISeekBar) {
                com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "onStartTrackingTouch");
                MediaPlayer mediaPlayer = simultaneousHistoryDetailsActivity.F;
                if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
                    return;
                }
                simultaneousHistoryDetailsActivity.u1().removeCallbacks(simultaneousHistoryDetailsActivity.x1());
            }

            @Override // com.coui.appcompat.seekbar.COUISeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(COUISeekBar p02) {
                kotlin.jvm.internal.r.e(p02, "p0");
                com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "onStopTrackingTouch");
                SimultaneousHistoryDetailsActivity.m1(simultaneousHistoryDetailsActivity).K(false);
                MediaPlayer mediaPlayer = simultaneousHistoryDetailsActivity.F;
                if (mediaPlayer != null) {
                    mediaPlayer.seekTo(p02.getProgress());
                }
                MediaPlayer mediaPlayer2 = simultaneousHistoryDetailsActivity.F;
                if (mediaPlayer2 == null || !mediaPlayer2.isPlaying()) {
                    return;
                }
                simultaneousHistoryDetailsActivity.X1();
            }
        };
    }
}
