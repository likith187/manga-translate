package com.coloros.translate.ui.simultaneous.history;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.c;
import androidx.core.content.FileProvider;
import androidx.core.view.a1;
import androidx.recyclerview.widget.COUILinearLayoutManager;
import androidx.recyclerview.widget.COUIRecyclerView;
import com.coloros.translate.R;
import com.coloros.translate.repository.local.SimultaneousHistory;
import com.coloros.translate.ui.simultaneous.history.SimultaneousBaseActivity;
import com.coloros.translate.ui.simultaneous.history.SimultaneousHistoryDetailsActivity;
import com.coloros.translate.ui.simultaneous.history.a;
import com.coloros.translate.ui.simultaneous.history.h0;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import com.coui.appcompat.grid.COUIPercentWidthLinearLayout;
import com.coui.appcompat.seekbar.COUISeekBar;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.support.appcompat.R$drawable;
import com.support.responsiveui.R$dimen;
import java.io.File;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class SimultaneousHistoryDetailsActivity extends SimultaneousBaseActivity<l0> {
    public static final a M = new a(null);
    private ImageView A;
    private COUIRecyclerView B;
    private COUIToolbar C;
    private View D;
    private int E;
    private MediaPlayer F;
    private androidx.appcompat.app.c G;
    private long H = -1;
    private final n8.j I = n8.k.b(l.INSTANCE);
    private final n8.j J = n8.k.b(new o());
    private final n8.j K = n8.k.b(new m());
    private final n8.j L = n8.k.b(new SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2(this));

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private LinearLayout f6498r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private LinearLayout f6499s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TextView f6500t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private TextView f6501u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private View f6502v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private COUIPercentWidthLinearLayout f6503w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private TextView f6504x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private COUISeekBar f6505y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private TextView f6506z;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.l {
        b() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((SimultaneousHistory) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(SimultaneousHistory simultaneousHistory) {
            if (simultaneousHistory != null) {
                SimultaneousHistoryDetailsActivity simultaneousHistoryDetailsActivity = SimultaneousHistoryDetailsActivity.this;
                if (simultaneousHistory.getAudioFile().length() > 0) {
                    simultaneousHistoryDetailsActivity.v1().s(true);
                    simultaneousHistoryDetailsActivity.M1(simultaneousHistory.getAudioFile());
                } else {
                    simultaneousHistoryDetailsActivity.v1().s(false);
                }
                simultaneousHistoryDetailsActivity.v1().u(simultaneousHistory);
            }
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.l {
        c() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((List<k0>) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(List<k0> it) {
            kotlin.jvm.internal.r.e(it, "it");
            SimultaneousHistoryDetailsActivity.this.v1().submitList(it);
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.l {
        d() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Number) obj).intValue());
            return n8.h0.INSTANCE;
        }

        public final void invoke(int i10) {
            COUIRecyclerView cOUIRecyclerView = SimultaneousHistoryDetailsActivity.this.B;
            if (cOUIRecyclerView == null) {
                kotlin.jvm.internal.r.r("mHistoryRecyclerView");
                cOUIRecyclerView = null;
            }
            cOUIRecyclerView.smoothScrollToPosition(i10);
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.l {
        e() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Boolean) obj).booleanValue());
            return n8.h0.INSTANCE;
        }

        public final void invoke(boolean z10) {
            SimultaneousHistoryDetailsActivity.this.v1().t(z10);
            TextView textView = SimultaneousHistoryDetailsActivity.this.f6500t;
            TextView textView2 = null;
            if (textView == null) {
                kotlin.jvm.internal.r.r("mSwitchShowBoth");
                textView = null;
            }
            textView.setEnabled(z10);
            TextView textView3 = SimultaneousHistoryDetailsActivity.this.f6501u;
            if (textView3 == null) {
                kotlin.jvm.internal.r.r("mSwitchShowTranslation");
            } else {
                textView2 = textView3;
            }
            textView2.setEnabled(!z10);
        }
    }

    static final class f extends kotlin.jvm.internal.s implements w8.l {
        f() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Boolean) obj).booleanValue());
            return n8.h0.INSTANCE;
        }

        public final void invoke(boolean z10) {
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "isDeleteFinish");
            SimultaneousHistory simultaneousHistory = (SimultaneousHistory) SimultaneousHistoryDetailsActivity.m1(SimultaneousHistoryDetailsActivity.this).x().e();
            if (simultaneousHistory != null) {
                SimultaneousHistoryDetailsActivity simultaneousHistoryDetailsActivity = SimultaneousHistoryDetailsActivity.this;
                Intent intent = new Intent();
                intent.putExtra("extra_key_note_id", simultaneousHistory.getNoteId());
                n8.h0 h0Var = n8.h0.INSTANCE;
                simultaneousHistoryDetailsActivity.setResult(-1, intent);
            }
            SimultaneousHistoryDetailsActivity.this.finish();
        }
    }

    static final class g extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ SimultaneousHistory $it;
        final /* synthetic */ SimultaneousHistoryDetailsActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(SimultaneousHistory simultaneousHistory, SimultaneousHistoryDetailsActivity simultaneousHistoryDetailsActivity) {
            super(1);
            this.$it = simultaneousHistory;
            this.this$0 = simultaneousHistoryDetailsActivity;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((String) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(String name) {
            kotlin.jvm.internal.r.e(name, "name");
            if (kotlin.jvm.internal.r.a(name, this.$it.getNoteTitle())) {
                return;
            }
            SimultaneousHistoryDetailsActivity.m1(this.this$0).J(name);
            SimultaneousHistoryDetailsActivity simultaneousHistoryDetailsActivity = this.this$0;
            Intent intent = new Intent();
            intent.putExtra("extra_key_note_id", this.$it.getNoteId());
            n8.h0 h0Var = n8.h0.INSTANCE;
            simultaneousHistoryDetailsActivity.setResult(-1, intent);
        }
    }

    static final class h extends kotlin.jvm.internal.s implements w8.a {
        h() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            SimultaneousHistoryDetailsActivity.this.u1().removeCallbacks(SimultaneousHistoryDetailsActivity.this.x1());
            MediaPlayer mediaPlayer = SimultaneousHistoryDetailsActivity.this.F;
            if (mediaPlayer != null) {
                SimultaneousHistoryDetailsActivity simultaneousHistoryDetailsActivity = SimultaneousHistoryDetailsActivity.this;
                mediaPlayer.release();
                simultaneousHistoryDetailsActivity.F = null;
            }
            SimultaneousHistoryDetailsActivity.m1(SimultaneousHistoryDetailsActivity.this).u();
        }
    }

    public static final class i implements h0.e {
        i() {
        }

        @Override // com.coloros.translate.ui.simultaneous.history.h0.e
        public void a(k0 info) {
            kotlin.jvm.internal.r.e(info, "info");
            SimultaneousHistoryDetailsActivity.this.L1(info.e());
        }
    }

    public static final class j extends com.coloros.translate.ui.simultaneous.history.a {
        j(k kVar) {
            super(kVar);
        }
    }

    public static final class k implements a.b {
        k() {
        }

        @Override // com.coloros.translate.ui.simultaneous.history.a.b
        public void a() {
            SimultaneousHistoryDetailsActivity.m1(SimultaneousHistoryDetailsActivity.this).I();
        }
    }

    static final class l extends kotlin.jvm.internal.s implements w8.a {
        public static final l INSTANCE = new l();

        l() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Handler mo8invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    static final class m extends kotlin.jvm.internal.s implements w8.a {
        m() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final h0 mo8invoke() {
            return new h0(SimultaneousHistoryDetailsActivity.this);
        }
    }

    static final class n extends kotlin.jvm.internal.s implements w8.l {
        n() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((String) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(String shareText) {
            kotlin.jvm.internal.r.e(shareText, "shareText");
            SimultaneousHistoryDetailsActivity simultaneousHistoryDetailsActivity = SimultaneousHistoryDetailsActivity.this;
            simultaneousHistoryDetailsActivity.R1(simultaneousHistoryDetailsActivity, shareText);
        }
    }

    static final class o extends kotlin.jvm.internal.s implements w8.a {
        o() {
            super(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(SimultaneousHistoryDetailsActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.X1();
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Runnable mo8invoke() {
            final SimultaneousHistoryDetailsActivity simultaneousHistoryDetailsActivity = SimultaneousHistoryDetailsActivity.this;
            return new Runnable() { // from class: com.coloros.translate.ui.simultaneous.history.g0
                @Override // java.lang.Runnable
                public final void run() {
                    SimultaneousHistoryDetailsActivity.o.invoke$lambda$0(simultaneousHistoryDetailsActivity);
                }
            };
        }
    }

    private final void A1() {
        s0(((l0) o0()).x(), new b());
        s0(((l0) o0()).w(), new c());
        s0(((l0) o0()).v(), new d());
        s0(((l0) o0()).E(), new e());
        s0(((l0) o0()).D(), new f());
    }

    private final void B1() {
        COUIToolbar cOUIToolbar = this.C;
        if (cOUIToolbar == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar = null;
        }
        cOUIToolbar.setTitle("");
        cOUIToolbar.setSubtitle((CharSequence) null);
        cOUIToolbar.setNavigationIcon(R$drawable.coui_back_arrow);
        cOUIToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SimultaneousHistoryDetailsActivity.E1(this.f6516a, view);
            }
        });
        cOUIToolbar.inflateMenu(R.menu.simultaneous_history_details_menu);
        cOUIToolbar.getMenu().findItem(R.id.share).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.d0
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return SimultaneousHistoryDetailsActivity.F1(this.f6519a, menuItem);
            }
        });
        cOUIToolbar.getMenu().findItem(R.id.rename).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.e0
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return SimultaneousHistoryDetailsActivity.C1(this.f6520a, menuItem);
            }
        });
        cOUIToolbar.getMenu().findItem(R.id.delete).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.f0
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return SimultaneousHistoryDetailsActivity.D1(this.f6523a, menuItem);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean C1(SimultaneousHistoryDetailsActivity this$0, MenuItem it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        com.coloros.translate.utils.n.INSTANCE.x();
        SimultaneousHistory simultaneousHistory = (SimultaneousHistory) ((l0) this$0.o0()).x().e();
        if (simultaneousHistory == null) {
            return true;
        }
        this$0.N0(simultaneousHistory.getNoteTitle(), new g(simultaneousHistory, this$0));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean D1(SimultaneousHistoryDetailsActivity this$0, MenuItem it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        com.coloros.translate.utils.n.INSTANCE.v();
        SimultaneousBaseActivity.K0(this$0, 0, 0, this$0.new h(), 3, null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E1(SimultaneousHistoryDetailsActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean F1(SimultaneousHistoryDetailsActivity this$0, MenuItem it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        this$0.S1();
        return true;
    }

    private final void G1() {
        View viewFindViewById = findViewById(R.id.rootView);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.f6498r = (LinearLayout) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.toolbar);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        this.C = (COUIToolbar) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.divider_line_bottom);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        this.f6502v = viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.ll_recording_play);
        kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
        this.f6503w = (COUIPercentWidthLinearLayout) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.tv_audio_duration);
        kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(...)");
        this.f6506z = (TextView) viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.tv_audio_current_position);
        kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(...)");
        this.f6504x = (TextView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.seekbar);
        kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(...)");
        this.f6505y = (COUISeekBar) viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.iv_audio_control);
        kotlin.jvm.internal.r.d(viewFindViewById8, "findViewById(...)");
        this.A = (ImageView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.navigation_bar);
        kotlin.jvm.internal.r.d(viewFindViewById9, "findViewById(...)");
        this.D = viewFindViewById9;
        View viewFindViewById10 = findViewById(R.id.recycler_history);
        kotlin.jvm.internal.r.d(viewFindViewById10, "findViewById(...)");
        this.B = (COUIRecyclerView) viewFindViewById10;
        View viewFindViewById11 = findViewById(R.id.display_language_switch);
        kotlin.jvm.internal.r.d(viewFindViewById11, "findViewById(...)");
        this.f6499s = (LinearLayout) viewFindViewById11;
        View viewFindViewById12 = findViewById(R.id.tv_show_both_language);
        kotlin.jvm.internal.r.d(viewFindViewById12, "findViewById(...)");
        this.f6500t = (TextView) viewFindViewById12;
        View viewFindViewById13 = findViewById(R.id.tv_show_translation);
        kotlin.jvm.internal.r.d(viewFindViewById13, "findViewById(...)");
        this.f6501u = (TextView) viewFindViewById13;
        LinearLayout linearLayout = this.f6499s;
        LinearLayout linearLayout2 = null;
        if (linearLayout == null) {
            kotlin.jvm.internal.r.r("mSwitchDisplayLanguage");
            linearLayout = null;
        }
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SimultaneousHistoryDetailsActivity.H1(this.f6619a, view);
            }
        });
        COUIRecyclerView cOUIRecyclerView = this.B;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mHistoryRecyclerView");
            cOUIRecyclerView = null;
        }
        cOUIRecyclerView.addItemDecoration(new SimultaneousBaseActivity.b(cOUIRecyclerView.getResources().getDimensionPixelSize(R.dimen.dp_24)));
        cOUIRecyclerView.setLayoutManager(new COUILinearLayoutManager(cOUIRecyclerView.getContext(), 1, false));
        cOUIRecyclerView.setAdapter(v1());
        v1().r(new i());
        cOUIRecyclerView.addOnScrollListener(new j(new k()));
        ImageView imageView = this.A;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mAudioControlButton");
            imageView = null;
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SimultaneousHistoryDetailsActivity.I1(this.f6513a, view);
            }
        });
        LinearLayout linearLayout3 = this.f6498r;
        if (linearLayout3 == null) {
            kotlin.jvm.internal.r.r("mRootView");
        } else {
            linearLayout2 = linearLayout3;
        }
        androidx.core.view.m0.y0(linearLayout2, new androidx.core.view.a0() { // from class: com.coloros.translate.ui.simultaneous.history.b0
            @Override // androidx.core.view.a0
            public final a1 onApplyWindowInsets(View view, a1 a1Var) {
                return SimultaneousHistoryDetailsActivity.J1(this.f6515a, view, a1Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H1(SimultaneousHistoryDetailsActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ((l0) this$0.o0()).M();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I1(SimultaneousHistoryDetailsActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.n.INSTANCE.w();
        if (((l0) this$0.o0()).z()) {
            this$0.L1(0L);
            ((l0) this$0.o0()).K(false);
        } else {
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "start play!!!!!!!!!!");
            this$0.W1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a1 J1(SimultaneousHistoryDetailsActivity this$0, View view, a1 a1Var) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.E = a1Var.f(a1.m.d()).f15810d;
        View view2 = this$0.D;
        View view3 = null;
        if (view2 == null) {
            kotlin.jvm.internal.r.r("mNavigationBarView");
            view2 = null;
        }
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.height = this$0.E;
            View view4 = this$0.D;
            if (view4 == null) {
                kotlin.jvm.internal.r.r("mNavigationBarView");
            } else {
                view3 = view4;
            }
            view3.requestLayout();
        }
        return a1Var;
    }

    private final void K1() {
        Object objM59constructorimpl;
        MediaPlayer mediaPlayer = this.F;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return;
        }
        ImageView imageView = this.A;
        ImageView imageView2 = null;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mAudioControlButton");
            imageView = null;
        }
        imageView.setImageResource(R.drawable.ic_recording_pause);
        ImageView imageView3 = this.A;
        if (imageView3 == null) {
            kotlin.jvm.internal.r.r("mAudioControlButton");
        } else {
            imageView2 = imageView3;
        }
        imageView2.setContentDescription(getString(R.string.simultaneous_audio_play_content_description));
        try {
            r.a aVar = n8.r.Companion;
            MediaPlayer mediaPlayer2 = this.F;
            if (mediaPlayer2 != null) {
                mediaPlayer2.pause();
            }
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "updateRecordingPlayState pause");
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.f("SimultaneousHistoryDetailsActivity", "Error MediaPlayer start:", thM62exceptionOrNullimpl);
        }
        u1().removeCallbacks(x1());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L1(long j10) {
        Object objM59constructorimpl;
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "playSeekTo startTime");
        MediaPlayer mediaPlayer = this.F;
        if (mediaPlayer != null) {
            try {
                r.a aVar = n8.r.Companion;
                mediaPlayer.seekTo((int) j10);
                if (!mediaPlayer.isPlaying()) {
                    W1();
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.f("SimultaneousHistoryDetailsActivity", "Error MediaPlayer seekTo (may not be prepared yet):", thM62exceptionOrNullimpl);
            }
            n8.r.m58boximpl(objM59constructorimpl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M1(String str) {
        Object objM59constructorimpl;
        if (str.length() == 0) {
            com.coloros.translate.utils.c0.f7098a.q("SimultaneousHistoryDetailsActivity", "playAudio -> File path is Empty");
            return;
        }
        if (this.F != null) {
            com.coloros.translate.utils.c0.f7098a.q("SimultaneousHistoryDetailsActivity", "playAudio -> mMediaPlayer is not null");
            return;
        }
        View view = this.f6502v;
        ImageView imageView = null;
        if (view == null) {
            kotlin.jvm.internal.r.r("mDividerLineBottom");
            view = null;
        }
        view.setVisibility(0);
        COUIPercentWidthLinearLayout cOUIPercentWidthLinearLayout = this.f6503w;
        if (cOUIPercentWidthLinearLayout == null) {
            kotlin.jvm.internal.r.r("mAudioPlayView");
            cOUIPercentWidthLinearLayout = null;
        }
        cOUIPercentWidthLinearLayout.setVisibility(0);
        COUISeekBar cOUISeekBar = this.f6505y;
        if (cOUISeekBar == null) {
            kotlin.jvm.internal.r.r("mSeekBar");
            cOUISeekBar = null;
        }
        cOUISeekBar.setOnSeekBarChangeListener(w1());
        ImageView imageView2 = this.A;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("mAudioControlButton");
        } else {
            imageView = imageView2;
        }
        imageView.setContentDescription(getString(R.string.simultaneous_audio_play_content_description));
        final MediaPlayer mediaPlayer = new MediaPlayer();
        try {
            r.a aVar = n8.r.Companion;
            mediaPlayer.setDataSource(getApplicationContext(), Uri.parse(str));
            mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.coloros.translate.ui.simultaneous.history.s
                @Override // android.media.MediaPlayer.OnPreparedListener
                public final void onPrepared(MediaPlayer mediaPlayer2) {
                    SimultaneousHistoryDetailsActivity.N1(this.f6609a, mediaPlayer, mediaPlayer2);
                }
            });
            mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.coloros.translate.ui.simultaneous.history.x
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer2) {
                    SimultaneousHistoryDetailsActivity.O1(this.f6616a, mediaPlayer, mediaPlayer2);
                }
            });
            mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.coloros.translate.ui.simultaneous.history.y
                @Override // android.media.MediaPlayer.OnErrorListener
                public final boolean onError(MediaPlayer mediaPlayer2, int i10, int i11) {
                    return SimultaneousHistoryDetailsActivity.P1(this.f6618a, mediaPlayer2, i10, i11);
                }
            });
            mediaPlayer.prepareAsync();
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousHistoryDetailsActivity", "playAudio -> e:" + thM62exceptionOrNullimpl);
            ((l0) o0()).N(-1L);
        }
        this.F = mediaPlayer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N1(SimultaneousHistoryDetailsActivity this$0, MediaPlayer this_runCatching, MediaPlayer mediaPlayer) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(this_runCatching, "$this_runCatching");
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "playAudio setOnPreparedListener");
        COUISeekBar cOUISeekBar = this$0.f6505y;
        TextView textView = null;
        if (cOUISeekBar == null) {
            kotlin.jvm.internal.r.r("mSeekBar");
            cOUISeekBar = null;
        }
        cOUISeekBar.setMax(this_runCatching.getDuration());
        COUISeekBar cOUISeekBar2 = this$0.f6505y;
        if (cOUISeekBar2 == null) {
            kotlin.jvm.internal.r.r("mSeekBar");
            cOUISeekBar2 = null;
        }
        cOUISeekBar2.setProgress((int) ((l0) this$0.o0()).A());
        TextView textView2 = this$0.f6504x;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("mAudioCurrentPos");
            textView2 = null;
        }
        textView2.setText(com.coloros.translate.ui.simultaneous.utils.d.a(((l0) this$0.o0()).A() / 1000));
        TextView textView3 = this$0.f6506z;
        if (textView3 == null) {
            kotlin.jvm.internal.r.r("mAudioDuration");
        } else {
            textView = textView3;
        }
        textView.setText(com.coloros.translate.ui.simultaneous.utils.d.a(((long) this_runCatching.getDuration()) / 1000));
        this$0.y1();
        this_runCatching.seekTo((int) ((l0) this$0.o0()).A());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O1(SimultaneousHistoryDetailsActivity this$0, MediaPlayer this_runCatching, MediaPlayer mediaPlayer) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(this_runCatching, "$this_runCatching");
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "playAudio setOnCompletionListener");
        ImageView imageView = this$0.A;
        TextView textView = null;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mAudioControlButton");
            imageView = null;
        }
        imageView.setImageResource(R.drawable.ic_recording_pause);
        ImageView imageView2 = this$0.A;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("mAudioControlButton");
            imageView2 = null;
        }
        imageView2.setContentDescription(this$0.getString(R.string.simultaneous_audio_play_content_description));
        COUISeekBar cOUISeekBar = this$0.f6505y;
        if (cOUISeekBar == null) {
            kotlin.jvm.internal.r.r("mSeekBar");
            cOUISeekBar = null;
        }
        cOUISeekBar.setProgress(this_runCatching.getDuration());
        ((l0) this$0.o0()).K(true);
        TextView textView2 = this$0.f6504x;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("mAudioCurrentPos");
        } else {
            textView = textView2;
        }
        textView.setText(com.coloros.translate.ui.simultaneous.utils.d.a(((long) this_runCatching.getDuration()) / 1000));
        this$0.u1().removeCallbacks(this$0.x1());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean P1(SimultaneousHistoryDetailsActivity this$0, MediaPlayer mediaPlayer, int i10, int i11) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.c0.f7098a.e("SimultaneousHistoryDetailsActivity", "playAudio setOnErrorListener  what:" + i10 + "   extra:" + i11);
        ImageView imageView = this$0.A;
        ImageView imageView2 = null;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mAudioControlButton");
            imageView = null;
        }
        imageView.setImageResource(R.drawable.ic_recording_pause);
        ImageView imageView3 = this$0.A;
        if (imageView3 == null) {
            kotlin.jvm.internal.r.r("mAudioControlButton");
        } else {
            imageView2 = imageView3;
        }
        imageView2.setContentDescription(this$0.getString(R.string.simultaneous_audio_play_content_description));
        this$0.u1().removeCallbacks(this$0.x1());
        ((l0) this$0.o0()).N(-1L);
        return false;
    }

    private final void Q1(Context context, String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("audio/*");
        intent.putExtra("android.intent.extra.STREAM", FileProvider.h(context, context.getPackageName() + ".fileprovider", new File(str)));
        intent.addFlags(1);
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            context.startActivity(Intent.createChooser(intent, getString(R.string.share)));
        } else {
            com.coloros.translate.utils.c0.f7098a.q("SimultaneousHistoryDetailsActivity", "shareAudioFile -> No apps available to share files");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R1(Context context, String str) {
        Object objM59constructorimpl;
        if (str == null || str.length() == 0) {
            com.coloros.translate.utils.c0.f7098a.q("SimultaneousHistoryDetailsActivity", "shareText -> text is empty");
            return;
        }
        if (str.length() > 400000) {
            com.coloros.translate.utils.c0.f7098a.q("SimultaneousHistoryDetailsActivity", "shareText -> too length");
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str.subSequence(0, b9.d.e(400000, str.length())));
        if (intent.resolveActivity(context.getPackageManager()) == null) {
            com.coloros.translate.utils.c0.f7098a.q("SimultaneousHistoryDetailsActivity", "shareText -> No app available to share text");
            return;
        }
        try {
            r.a aVar = n8.r.Companion;
            context.startActivity(Intent.createChooser(intent, getString(R.string.share)));
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousHistoryDetailsActivity", "shareText error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    private final void S1() {
        com.coloros.translate.utils.n.X(com.coloros.translate.utils.n.INSTANCE, null, 1, null);
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_simultaneous_history_share, (ViewGroup) null);
        kotlin.jvm.internal.r.d(viewInflate, "inflate(...)");
        List list = (List) ((l0) o0()).w().e();
        if (list != null) {
            kotlin.jvm.internal.r.b(list);
            if (!list.isEmpty()) {
                View viewFindViewById = viewInflate.findViewById(R.id.tv_share_text);
                kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
                TextView textView = (TextView) viewFindViewById;
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.u
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SimultaneousHistoryDetailsActivity.T1(this.f6612a, view);
                    }
                });
                textView.setVisibility(0);
                viewInflate.findViewById(R.id.divider_line_text).setVisibility(0);
            }
        }
        ((TextView) viewInflate.findViewById(R.id.tv_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SimultaneousHistoryDetailsActivity.U1(this.f6613a, view);
            }
        });
        final SimultaneousHistory simultaneousHistory = (SimultaneousHistory) ((l0) o0()).x().e();
        if (simultaneousHistory != null && simultaneousHistory.getAudioFile().length() > 0) {
            View viewFindViewById2 = viewInflate.findViewById(R.id.tv_share_recording);
            kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
            TextView textView2 = (TextView) viewFindViewById2;
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.history.w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SimultaneousHistoryDetailsActivity.V1(this.f6614a, simultaneousHistory, view);
                }
            });
            textView2.setVisibility(0);
            viewInflate.findViewById(R.id.divider_line_bottom).setVisibility(0);
        }
        c.a view = new COUIAlertDialogBuilder(this).setTitle(R.string.share).setView(viewInflate);
        this.G = view != null ? view.show() : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T1(SimultaneousHistoryDetailsActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.n.INSTANCE.W("1");
        ((l0) this$0.o0()).B(this$0.H, this$0.new n());
        androidx.appcompat.app.c cVar = this$0.G;
        if (cVar != null) {
            cVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U1(SimultaneousHistoryDetailsActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.n.INSTANCE.W("3");
        androidx.appcompat.app.c cVar = this$0.G;
        if (cVar != null) {
            cVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V1(SimultaneousHistoryDetailsActivity this$0, SimultaneousHistory info, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(info, "$info");
        com.coloros.translate.utils.n.INSTANCE.W("2");
        this$0.Q1(this$0, info.getAudioFile());
        androidx.appcompat.app.c cVar = this$0.G;
        if (cVar != null) {
            cVar.dismiss();
        }
    }

    private final void W1() {
        Object objM59constructorimpl;
        MediaPlayer mediaPlayer = this.F;
        if (mediaPlayer != null) {
            if (mediaPlayer.isPlaying()) {
                K1();
                return;
            }
            try {
                r.a aVar = n8.r.Companion;
                mediaPlayer.start();
                com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "updateRecordingPlayState start");
                ImageView imageView = this.A;
                ImageView imageView2 = null;
                if (imageView == null) {
                    kotlin.jvm.internal.r.r("mAudioControlButton");
                    imageView = null;
                }
                imageView.setImageResource(R.drawable.ic_recording_playing);
                ImageView imageView3 = this.A;
                if (imageView3 == null) {
                    kotlin.jvm.internal.r.r("mAudioControlButton");
                } else {
                    imageView2 = imageView3;
                }
                imageView2.setContentDescription(getString(R.string.simultaneous_audio_pause_content_description));
                X1();
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.f("SimultaneousHistoryDetailsActivity", "Error MediaPlayer start (may not be prepared yet):", thM62exceptionOrNullimpl);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X1() {
        Object objM59constructorimpl;
        Object objValueOf;
        MediaPlayer mediaPlayer = this.F;
        if (mediaPlayer != null) {
            try {
                r.a aVar = n8.r.Companion;
                int duration = mediaPlayer.getDuration();
                if (duration > 0) {
                    int iE = b9.d.e(mediaPlayer.getCurrentPosition(), duration);
                    COUISeekBar cOUISeekBar = this.f6505y;
                    TextView textView = null;
                    if (cOUISeekBar == null) {
                        kotlin.jvm.internal.r.r("mSeekBar");
                        cOUISeekBar = null;
                    }
                    cOUISeekBar.setProgress(iE);
                    TextView textView2 = this.f6504x;
                    if (textView2 == null) {
                        kotlin.jvm.internal.r.r("mAudioCurrentPos");
                    } else {
                        textView = textView2;
                    }
                    long j10 = iE;
                    String strA = com.coloros.translate.ui.simultaneous.utils.d.a(j10 / 1000);
                    com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "updateSeekBar currentPosition: " + strA);
                    textView.setText(strA);
                    ((l0) o0()).N(j10);
                    u1().removeCallbacks(x1());
                    objValueOf = Boolean.valueOf(u1().postDelayed(x1(), 300L));
                } else {
                    com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "updateSeekBar: MediaPlayer not prepared yet, duration = 0");
                    objValueOf = n8.h0.INSTANCE;
                }
                objM59constructorimpl = n8.r.m59constructorimpl(objValueOf);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.f("SimultaneousHistoryDetailsActivity", "Error updateSeekBar:", thM62exceptionOrNullimpl);
            }
            n8.r.m58boximpl(objM59constructorimpl);
        }
    }

    public static final /* synthetic */ l0 m1(SimultaneousHistoryDetailsActivity simultaneousHistoryDetailsActivity) {
        return (l0) simultaneousHistoryDetailsActivity.o0();
    }

    private final void t1() {
        boolean zE = com.coloros.translate.utils.o0.e();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.grid_list_special_padding);
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "isTablet:" + zE + "    paddingValue:" + dimensionPixelSize);
        COUIPercentWidthLinearLayout cOUIPercentWidthLinearLayout = (COUIPercentWidthLinearLayout) findViewById(R.id.content_layout);
        if (cOUIPercentWidthLinearLayout != null && !zE) {
            cOUIPercentWidthLinearLayout.setPercentIndentEnabled(false);
            cOUIPercentWidthLinearLayout.setPadding(dimensionPixelSize, cOUIPercentWidthLinearLayout.getPaddingTop(), dimensionPixelSize, cOUIPercentWidthLinearLayout.getPaddingBottom());
        }
        COUIPercentWidthLinearLayout cOUIPercentWidthLinearLayout2 = this.f6503w;
        if (cOUIPercentWidthLinearLayout2 == null) {
            kotlin.jvm.internal.r.r("mAudioPlayView");
            cOUIPercentWidthLinearLayout2 = null;
        }
        if (zE) {
            return;
        }
        cOUIPercentWidthLinearLayout2.setPercentIndentEnabled(false);
        cOUIPercentWidthLinearLayout2.setPadding(dimensionPixelSize, cOUIPercentWidthLinearLayout2.getPaddingTop(), dimensionPixelSize, cOUIPercentWidthLinearLayout2.getPaddingBottom());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler u1() {
        return (Handler) this.I.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final h0 v1() {
        return (h0) this.K.getValue();
    }

    private final COUISeekBar.OnSeekBarChangeListener w1() {
        return (COUISeekBar.OnSeekBarChangeListener) this.L.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Runnable x1() {
        return (Runnable) this.J.getValue();
    }

    private final void y1() {
        TextView textView = this.f6506z;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mAudioDuration");
            textView = null;
        }
        textView.post(new Runnable() { // from class: com.coloros.translate.ui.simultaneous.history.t
            @Override // java.lang.Runnable
            public final void run() {
                SimultaneousHistoryDetailsActivity.z1(this.f6611a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z1(SimultaneousHistoryDetailsActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        TextView textView = this$0.f6504x;
        TextView textView2 = null;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mAudioCurrentPos");
            textView = null;
        }
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        if (layoutParams != null) {
            TextView textView3 = this$0.f6506z;
            if (textView3 == null) {
                kotlin.jvm.internal.r.r("mAudioDuration");
                textView3 = null;
            }
            layoutParams.width = textView3.getWidth() + this$0.getResources().getDimensionPixelSize(R.dimen.dp_10);
            TextView textView4 = this$0.f6506z;
            if (textView4 == null) {
                kotlin.jvm.internal.r.r("mAudioDuration");
                textView4 = null;
            }
            layoutParams.height = textView4.getHeight();
            TextView textView5 = this$0.f6504x;
            if (textView5 == null) {
                kotlin.jvm.internal.r.r("mAudioCurrentPos");
            } else {
                textView2 = textView5;
            }
            textView2.setLayoutParams(layoutParams);
        }
    }

    @Override // com.coloros.translate.base.BaseActivity
    public Class k0() {
        return l0.class;
    }

    @Override // com.coloros.translate.base.BaseActivity
    protected int l0() {
        return R.layout.activity_simultaneous_history_details;
    }

    @Override // com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "onCreate");
        G1();
        t1();
        B1();
        A1();
        this.H = getIntent().getLongExtra("extra_key_note_id", -1L);
        ((l0) o0()).F(this.H);
    }

    @Override // com.coloros.translate.ui.simultaneous.history.SimultaneousBaseActivity, com.coloros.translate.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "onDestroy");
        u1().removeCallbacks(x1());
        MediaPlayer mediaPlayer = this.F;
        if (mediaPlayer != null) {
            try {
                r.a aVar = n8.r.Companion;
                mediaPlayer.release();
                n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                n8.r.m59constructorimpl(n8.s.a(th));
            }
            this.F = null;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "onPause");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "onResume");
        if (((l0) o0()).z()) {
            X1();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "onStart");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousHistoryDetailsActivity", "onStop");
        K1();
    }
}
