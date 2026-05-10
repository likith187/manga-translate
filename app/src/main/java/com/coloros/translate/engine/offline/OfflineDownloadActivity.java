package com.coloros.translate.engine.offline;

import android.R;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.COUILinearLayoutManager;
import androidx.recyclerview.widget.COUIRecyclerView;
import androidx.recyclerview.widget.RecyclerView;
import com.coloros.translate.engine.offline.OfflineDownloadActivity;
import com.coloros.translate.engine.offline.f0;
import com.coloros.translate.engine.offline.x;
import com.coloros.translate.utils.h1;
import com.coloros.translate.utils.u0;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.panel.COUIBottomSheetDialog;
import com.coui.appcompat.poplist.COUIPopupListWindow;
import com.coui.appcompat.poplist.PopupListItem;
import com.coui.appcompat.progressbar.COUIInstallLoadProgress;
import com.coui.appcompat.theme.COUIThemeOverlay;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.coui.appcompat.unitconversionutil.COUIUnitConversionUtils;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class OfflineDownloadActivity extends AppCompatActivity implements x.e, x.b, i0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f4960h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f4961i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f4962j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f4963k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private x f4964l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private y f4965m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private COUIUnitConversionUtils f4966n;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Context f4973u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private COUIRecyclerView f4974v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private h f4975w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f4956a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f4957b = new n(this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f4958c = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f4959f = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private COUIBottomSheetDialog f4967o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private androidx.appcompat.app.c f4968p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private androidx.appcompat.app.c f4969q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private androidx.appcompat.app.c f4970r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f4971s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private NetworkReceiver f4972t = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private COUIPopupListWindow f4976x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f4977y = false;

    public class NetworkReceiver extends BroadcastReceiver {
        public NetworkReceiver() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(Context context) {
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "NetworkReceiver onReceive requestOfflineTranslateInfo");
            if (com.coloros.translate.utils.i.a(context)) {
                b0.INSTANCE.b();
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "NetworkReceiver onReceive");
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                if (OfflineDownloadActivity.this.f4971s) {
                    u0.e("request_download_offline_info", new Runnable() { // from class: com.coloros.translate.engine.offline.t
                        @Override // java.lang.Runnable
                        public final void run() {
                            OfflineDownloadActivity.NetworkReceiver.b(context);
                        }
                    }, 1000L);
                    return;
                } else {
                    com.coloros.translate.utils.c0.o("OfflineDownloadActivity", "NetworkReceiver mIsListenNetWork");
                    return;
                }
            }
            com.coloros.translate.utils.c0.o("OfflineDownloadActivity", "NetworkReceiver onReceive action : " + intent.getAction());
        }
    }

    class a implements e2.b {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e() {
            com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "showPrivacyPolicyDialog releaseAssets");
            OfflineDownloadActivity.this.a1();
        }

        @Override // e2.b
        public void a() {
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "showPrivacyPolicyDialog: doAfterRejected");
            OfflineDownloadActivity.this.finish();
        }

        @Override // e2.b
        public void b() {
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "showPrivacyPolicyDialog doAfterGranted");
            e0.INSTANCE.q(OfflineDownloadActivity.this);
            a0.INSTANCE.f();
            OfflineDownloadActivity.this.Z0();
            u0.d("request_download_offline_info", new Runnable() { // from class: com.coloros.translate.engine.offline.p
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5081a.e();
                }
            });
        }

        @Override // e2.b
        public void c() {
        }
    }

    class b implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f0 f4980a;

        b(f0 f0Var) {
            this.f4980a = f0Var;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            this.f4980a.c(com.coloros.translate.utils.m.f7131a, false);
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "showDeleteDialog onClick to delete");
            this.f4980a.f5032a = f0.a.NOEXIST;
            OfflineDownloadActivity.this.f4958c.remove(this.f4980a);
            OfflineDownloadActivity.this.f4959f.add(this.f4980a);
            if (OfflineDownloadActivity.this.f4975w != null) {
                OfflineDownloadActivity.this.f4975w.notifyDataSetChanged();
            }
            dialogInterface.dismiss();
        }
    }

    class c implements DialogInterface.OnClickListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            dialogInterface.dismiss();
        }
    }

    class d implements DialogInterface.OnClickListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            dialogInterface.dismiss();
        }
    }

    class e implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f4984a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f0 f4985b;

        e(boolean z10, f0 f0Var) {
            this.f4984a = z10;
            this.f4985b = f0Var;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            if (this.f4984a) {
                OfflineDownloadActivity.this.f4964l.M(this.f4985b, true);
            } else {
                OfflineDownloadActivity.this.f4964l.L(this.f4985b.f5036e);
            }
        }
    }

    class f implements DialogInterface.OnClickListener {
        f() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
        }
    }

    public static class g implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private DialogInterface.OnClickListener f4988a;

        class a implements ViewTreeObserver.OnWindowAttachListener {
            a() {
            }

            @Override // android.view.ViewTreeObserver.OnWindowAttachListener
            public void onWindowAttached() {
                com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onWindowAttached");
            }

            @Override // android.view.ViewTreeObserver.OnWindowAttachListener
            public void onWindowDetached() {
                g.this.f4988a = null;
                com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onWindowDetached");
            }
        }

        private g(DialogInterface.OnClickListener onClickListener) {
            this.f4988a = onClickListener;
        }

        public static g c(DialogInterface.OnClickListener onClickListener) {
            return new g(onClickListener);
        }

        public void b(Dialog dialog) {
            dialog.getWindow().getDecorView().getViewTreeObserver().addOnWindowAttachListener(new a());
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            DialogInterface.OnClickListener onClickListener = this.f4988a;
            if (onClickListener != null) {
                onClickListener.onClick(dialogInterface, i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class h extends RecyclerView.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final LayoutInflater f4990a;

        h(Context context) {
            this.f4990a = LayoutInflater.from(context);
        }

        private void j(final j jVar, int i10) {
            String unitValue;
            final f0 f0Var = (f0) OfflineDownloadActivity.this.f4958c.get(i10 - 1);
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onBindViewHolder packageData : " + f0Var);
            jVar.f4995a.setText(OfflineDownloadActivity.this.getString(f0Var.f5037f));
            if (com.coloros.translate.engine.offline.f.INSTANCE.a(OfflineDownloadActivity.this.f4973u.getResources().getConfiguration())) {
                jVar.f4995a.setLineSpacing(4.0f, 1.2f);
            }
            try {
                unitValue = OfflineDownloadActivity.this.f4966n.getUnitValue(f0Var.f5043l);
            } catch (Exception unused) {
                com.coloros.translate.utils.c0.j("OfflineDownloadActivity", "onBindViewHolder packageData.mTotalBytes : " + f0Var.f5043l);
                unitValue = "30 MB";
            }
            jVar.f4996b.setText(unitValue);
            jVar.f4997c.setVisibility(0);
            if (i10 == OfflineDownloadActivity.this.f4958c.size()) {
                jVar.f4997c.setVisibility(8);
            }
            if (OfflineDownloadActivity.this.f4958c.size() == 1) {
                jVar.itemView.setBackgroundResource(R$drawable.selector_item_all);
                jVar.itemView.setPadding(OfflineDownloadActivity.this.P0(16.0f), OfflineDownloadActivity.this.P0(0.0f), OfflineDownloadActivity.this.P0(16.0f), 0);
            } else if (i10 == 1) {
                jVar.itemView.setBackgroundResource(R$drawable.selector_item_up);
                jVar.itemView.setPadding(OfflineDownloadActivity.this.P0(16.0f), OfflineDownloadActivity.this.P0(2.0f), OfflineDownloadActivity.this.P0(16.0f), 0);
            } else if (i10 == OfflineDownloadActivity.this.f4958c.size()) {
                jVar.itemView.setBackgroundResource(R$drawable.selector_item_down);
                jVar.itemView.setPadding(OfflineDownloadActivity.this.P0(16.0f), 0, OfflineDownloadActivity.this.P0(16.0f), OfflineDownloadActivity.this.P0(2.0f));
            } else {
                jVar.itemView.setBackgroundResource(R$drawable.selector_item);
                jVar.itemView.setPadding(OfflineDownloadActivity.this.P0(16.0f), OfflineDownloadActivity.this.P0(0.0f), OfflineDownloadActivity.this.P0(16.0f), 0);
            }
            final int i11 = 3;
            jVar.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.coloros.translate.engine.offline.q
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f5087a.s(f0Var, jVar, i11, view);
                }
            });
        }

        private void k(k kVar, int i10) {
            String unitValue;
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "configureViewHolder position : " + i10);
            f0 f0Var = (f0) OfflineDownloadActivity.this.f4959f.get(i10);
            OfflineDownloadActivity.this.f4956a.put(f0Var.f5038g, kVar);
            kVar.f4998a.setText(OfflineDownloadActivity.this.getString(f0Var.f5037f));
            if (com.coloros.translate.engine.offline.f.INSTANCE.a(OfflineDownloadActivity.this.f4973u.getResources().getConfiguration())) {
                kVar.f4998a.setLineSpacing(4.0f, 1.2f);
            }
            kVar.itemView.setVisibility(0);
            try {
                unitValue = OfflineDownloadActivity.this.f4966n.getUnitValue(f0Var.f5043l);
            } catch (Exception e10) {
                com.coloros.translate.utils.c0.j("OfflineDownloadActivity", "configureViewHolder packageData.mTotalBytes = " + f0Var.f5043l + ", e = " + e10);
                unitValue = "30 MB";
            }
            v(kVar, f0Var, unitValue);
            kVar.f5000c.setOnClickListener(OfflineDownloadActivity.this.new i(i10));
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "configureViewHolder packageData:" + f0Var);
            f0.a aVar = f0Var.f5032a;
            if (aVar == f0.a.NOEXIST) {
                kVar.f5000c.setText(OfflineDownloadActivity.this.f4960h);
                kVar.f5000c.setProgress(0);
                kVar.f5000c.setState(0);
                if (f0Var.f5033b) {
                    kVar.f4999b.setText(R$string.eto_resource_built_in);
                } else {
                    kVar.f4999b.setText(unitValue);
                }
            } else if (aVar == f0.a.PENDING) {
                kVar.f5000c.setText(OfflineDownloadActivity.this.f4962j);
                if (f0Var.e() > 0) {
                    kVar.f5000c.setState(1);
                    kVar.f5000c.setProgress(f0Var.e());
                }
                kVar.f5000c.setVisibility(0);
            } else if (aVar == f0.a.DOWNLOADING) {
                kVar.f5000c.setVisibility(0);
                kVar.f5000c.setState(1);
                kVar.f5000c.setProgress(f0Var.e());
                kVar.f5000c.setText(f0Var.e() + "%");
            } else if (aVar == f0.a.DOWNLOADFIALED || aVar == f0.a.PAUSE) {
                kVar.f5000c.setVisibility(0);
                kVar.f5000c.setState(1);
                kVar.f5000c.setProgress(f0Var.e());
                kVar.f5000c.setText(OfflineDownloadActivity.this.f4961i);
            } else if (aVar == f0.a.COMPRESSING) {
                kVar.f5000c.setText("100%");
            } else if (aVar == f0.a.COMPRESSED) {
                kVar.f5000c.setVisibility(4);
                kVar.f4999b.setText(R$string.download_Complete);
            } else if (aVar == f0.a.NEEDUPDATE) {
                if (OfflineDownloadActivity.this.f4965m.b(f0Var.f5038g)) {
                    kVar.f5000c.setVisibility(4);
                    kVar.f4999b.setText(R$string.download_Complete);
                } else {
                    kVar.f5000c.setText(OfflineDownloadActivity.this.f4963k);
                }
            }
            p(kVar, i10);
        }

        private void p(k kVar, int i10) {
            if (i10 == OfflineDownloadActivity.this.f4959f.size() - 1) {
                kVar.f5001f.setVisibility(8);
            }
            if (OfflineDownloadActivity.this.f4959f.size() == 1) {
                kVar.itemView.setBackground(OfflineDownloadActivity.this.getDrawable(R$drawable.bg_item_all_round));
                kVar.itemView.setPadding(0, OfflineDownloadActivity.this.P0(0.0f), 0, 0);
            } else if (i10 == 0) {
                kVar.itemView.setBackground(OfflineDownloadActivity.this.getDrawable(R$drawable.bg_item_up));
                kVar.itemView.setPadding(0, OfflineDownloadActivity.this.P0(2.0f), 0, 0);
            } else if (i10 == OfflineDownloadActivity.this.f4959f.size() - 1) {
                kVar.itemView.setBackground(OfflineDownloadActivity.this.getDrawable(R$drawable.bg_item_down));
                kVar.itemView.setPadding(0, 0, 0, OfflineDownloadActivity.this.P0(2.0f));
            } else {
                kVar.itemView.setBackground(OfflineDownloadActivity.this.getDrawable(R$drawable.bg_item_normal));
                kVar.itemView.setPadding(0, 0, 0, 0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void q(View view) {
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "configureDownloadHolder popupListWindow setOnDismissListener");
            view.setEnabled(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(View view, f0 f0Var, AdapterView adapterView, View view2, int i10, long j10) {
            OfflineDownloadActivity.this.f4976x.dismiss();
            view.setEnabled(true);
            OfflineDownloadActivity.this.c1(f0Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean s(final f0 f0Var, j jVar, int i10, final View view) {
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "configureDownloadHolder setOnLongClickListener");
            view.setEnabled(false);
            if (OfflineDownloadActivity.this.f4976x == null) {
                OfflineDownloadActivity.this.f4976x = new COUIPopupListWindow(OfflineDownloadActivity.this.f4973u);
            }
            OfflineDownloadActivity.this.f4976x.setItemList(OfflineDownloadActivity.this.M0());
            OfflineDownloadActivity.this.f4976x.setDismissTouchOutside(true);
            OfflineDownloadActivity.this.f4976x.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.coloros.translate.engine.offline.r
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    OfflineDownloadActivity.h.q(view);
                }
            });
            OfflineDownloadActivity.this.f4976x.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.coloros.translate.engine.offline.s
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view2, int i11, long j10) {
                    this.f5093a.r(view, f0Var, adapterView, view2, i11, j10);
                }
            });
            OfflineDownloadActivity.this.f4976x.setAnchorView(view);
            OfflineDownloadActivity.this.f4976x.setGlobalOffset(jVar.f4995a.getWidth() >> 1, -((view.getHeight() << 1) / i10));
            OfflineDownloadActivity.this.f4976x.show();
            return true;
        }

        private void v(k kVar, f0 f0Var, String str) {
            if (f0Var.f5033b) {
                kVar.f4999b.setText(R$string.eto_resource_built_in);
                kVar.f5000c.setVisibility(4);
            } else {
                kVar.f5000c.setVisibility(0);
                kVar.f4999b.setText(str);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public int getItemCount() {
            com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "downloadedPackageList.size : " + OfflineDownloadActivity.this.f4958c.size());
            int size = !OfflineDownloadActivity.this.f4958c.isEmpty() ? 1 + OfflineDownloadActivity.this.f4958c.size() : 0;
            if (!OfflineDownloadActivity.this.f4959f.isEmpty()) {
                if (!OfflineDownloadActivity.this.f4958c.isEmpty()) {
                    size++;
                }
                size += OfflineDownloadActivity.this.f4959f.size();
            }
            com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "getItemCount cnt : " + size);
            return size;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public int getItemViewType(int i10) {
            if (OfflineDownloadActivity.this.f4958c.isEmpty()) {
                return 0;
            }
            if (i10 == 0) {
                return 3;
            }
            if (i10 <= OfflineDownloadActivity.this.f4958c.size()) {
                return 1;
            }
            return i10 == OfflineDownloadActivity.this.f4958c.size() + 1 ? 2 : 0;
        }

        public void i(f0 f0Var) {
            k kVar = (k) OfflineDownloadActivity.this.f4956a.get(f0Var.f5038g);
            if (kVar != null) {
                kVar.f5000c.setVisibility(0);
                kVar.f5000c.setText(OfflineDownloadActivity.this.f4962j);
                return;
            }
            com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "[beginDownload] find " + f0Var.f5038g + " error");
        }

        public void l(f0 f0Var) {
            k kVar = (k) OfflineDownloadActivity.this.f4956a.get(f0Var.f5038g);
            if (kVar != null) {
                kVar.f5000c.setText(OfflineDownloadActivity.this.f4960h);
                kVar.f5000c.setProgress(0);
                kVar.f5000c.setState(0);
            } else {
                com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "[decompressFailed] find " + f0Var.f5038g + " error");
            }
            Toast.makeText(OfflineDownloadActivity.this, R$string.download_error, 0).show();
        }

        public void m(f0 f0Var) {
            k kVar = (k) OfflineDownloadActivity.this.f4956a.get(f0Var.f5038g);
            com.coloros.translate.utils.l0.f7130a.j(OfflineDownloadActivity.this, f0Var.f5038g, f0Var.f5045n);
            if (kVar != null) {
                kVar.f5000c.setVisibility(4);
            } else {
                com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "[decompressFinished] find " + f0Var.f5038g + " error");
            }
            if (OfflineDownloadActivity.this.f4958c.contains(f0Var)) {
                return;
            }
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "decompressFinished add packageData and notifyDataSetChanged");
            OfflineDownloadActivity.this.f4958c.add(f0Var);
            OfflineDownloadActivity.this.f4959f.remove(f0Var);
            if (OfflineDownloadActivity.this.f4975w != null) {
                OfflineDownloadActivity.this.f4975w.notifyDataSetChanged();
            }
        }

        public void n(f0 f0Var) {
            k kVar = (k) OfflineDownloadActivity.this.f4956a.get(f0Var.f5038g);
            if (kVar != null) {
                kVar.f5000c.setText(OfflineDownloadActivity.this.f4961i);
            } else {
                com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "[downloadFailed] find " + f0Var.f5038g + " error");
            }
            Toast.makeText(OfflineDownloadActivity.this, R$string.download_error, 0).show();
        }

        public void o(f0 f0Var) {
            k kVar = (k) OfflineDownloadActivity.this.f4956a.get(f0Var.f5038g);
            if (kVar != null) {
                kVar.f5000c.setProgress(100);
                kVar.f5000c.setText("100%");
                return;
            }
            com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "[downloadFinished] find " + f0Var.f5038g + " error");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public void onBindViewHolder(RecyclerView.d0 d0Var, int i10) {
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onBindViewHolder position : " + i10);
            if (d0Var instanceof j) {
                j((j) d0Var, i10);
                return;
            }
            if (d0Var instanceof k) {
                k kVar = (k) d0Var;
                kVar.f5001f.setVisibility(0);
                k(kVar, i10 - (OfflineDownloadActivity.this.f4958c.isEmpty() ? 0 : OfflineDownloadActivity.this.f4958c.size() + 2));
            } else if (d0Var instanceof m) {
                m mVar = (m) d0Var;
                boolean z10 = !OfflineDownloadActivity.this.f4958c.isEmpty() && i10 > 0;
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                if (z10) {
                    layoutParams.setMargins(0, (int) mVar.itemView.getContext().getResources().getDimension(R$dimen.dp_24), 0, 0);
                } else {
                    layoutParams.setMargins(0, 0, 0, 0);
                }
                mVar.f5006a.setLayoutParams(layoutParams);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public RecyclerView.d0 onCreateViewHolder(ViewGroup viewGroup, int i10) {
            boolean z10 = false;
            if (i10 == 0) {
                return new k(this.f4990a.inflate(R$layout.offline_download_item, viewGroup, false));
            }
            if (i10 != 2 && i10 != 3) {
                return new j(this.f4990a.inflate(R$layout.item_downloaded, viewGroup, false));
            }
            View viewInflate = this.f4990a.inflate(R$layout.item_title, viewGroup, false);
            if (!OfflineDownloadActivity.this.f4958c.isEmpty() && i10 == 2) {
                z10 = true;
            }
            return new m(viewInflate, i10 == 3 ? OfflineDownloadActivity.this.getString(R$string.download_Complete) : OfflineDownloadActivity.this.getString(R$string.not_downloaded), Boolean.valueOf(z10));
        }

        public void t(f0 f0Var) {
            k kVar = (k) OfflineDownloadActivity.this.f4956a.get(f0Var.f5038g);
            if (kVar != null) {
                kVar.f5000c.setVisibility(0);
                kVar.f5000c.setText(OfflineDownloadActivity.this.f4961i);
                return;
            }
            com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "[pauseDownload] find " + f0Var.f5038g + " error");
        }

        public void u(f0 f0Var) {
            k kVar = (k) OfflineDownloadActivity.this.f4956a.get(f0Var.f5038g);
            if (kVar == null) {
                com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "[updateDownload] find " + f0Var.f5038g + " error");
                return;
            }
            kVar.f5000c.setVisibility(0);
            kVar.f5000c.setState(1);
            kVar.f5000c.setProgress(f0Var.e());
            kVar.f5000c.setText(f0Var.e() + "%");
        }
    }

    private class i implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f4992a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f4993b;

        i(int i10) {
            this.f4992a = i10;
        }

        private void a(f0 f0Var) {
            f0.a aVar = f0Var.f5032a;
            if (aVar == f0.a.NOEXIST) {
                if (TextUtils.isEmpty(f0Var.f5040i) || !com.coloros.translate.utils.i.a(OfflineDownloadActivity.this)) {
                    Toast.makeText(OfflineDownloadActivity.this, R$string.eto_no_network, 0).show();
                    OfflineDownloadActivity.this.f4975w.notifyDataSetChanged();
                } else if (com.coloros.translate.utils.i.b(OfflineDownloadActivity.this)) {
                    OfflineDownloadActivity.this.b1(f0Var, true);
                    OfflineDownloadActivity.this.f4975w.notifyDataSetChanged();
                } else {
                    OfflineDownloadActivity.this.f4965m.c(f0Var.f5038g);
                    OfflineDownloadActivity.this.f4964l.M(f0Var, false);
                }
                OfflineDownloadActivity offlineDownloadActivity = OfflineDownloadActivity.this;
                offlineDownloadActivity.K0(offlineDownloadActivity, f0Var.f5038g);
                return;
            }
            if (aVar == f0.a.PENDING || aVar == f0.a.DOWNLOADING) {
                OfflineDownloadActivity.this.d1(this.f4992a);
                return;
            }
            if (aVar != f0.a.PAUSE) {
                if (aVar == f0.a.DOWNLOADFIALED) {
                    OfflineDownloadActivity.this.f4964l.l(f0Var.f5036e);
                }
            } else if (f0Var.f5035d == 3 && com.coloros.translate.utils.i.b(OfflineDownloadActivity.this)) {
                OfflineDownloadActivity.this.b1(f0Var, false);
            } else if (com.coloros.translate.utils.i.a(OfflineDownloadActivity.this)) {
                OfflineDownloadActivity.this.f4964l.K(f0Var.f5036e);
            } else {
                Toast.makeText(OfflineDownloadActivity.this, R$string.eto_no_network, 0).show();
                OfflineDownloadActivity.this.f4975w.notifyDataSetChanged();
            }
        }

        private void b(f0 f0Var) {
            if (OfflineDownloadActivity.this.f4965m.b(f0Var.f5038g)) {
                OfflineDownloadActivity.this.c1(f0Var);
                return;
            }
            f0Var.c(OfflineDownloadActivity.this, false);
            f0Var.f5032a = f0.a.NOEXIST;
            if (TextUtils.isEmpty(f0Var.f5040i) || !com.coloros.translate.utils.i.a(OfflineDownloadActivity.this)) {
                Toast.makeText(OfflineDownloadActivity.this, R$string.eto_no_network, 0).show();
                OfflineDownloadActivity.this.f4975w.notifyDataSetChanged();
            } else if (com.coloros.translate.utils.i.b(OfflineDownloadActivity.this)) {
                OfflineDownloadActivity.this.b1(f0Var, true);
            } else {
                OfflineDownloadActivity.this.f4965m.c(f0Var.f5038g);
                OfflineDownloadActivity.this.f4964l.M(f0Var, false);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (Math.abs(jCurrentTimeMillis - this.f4993b) < 1200 || OfflineDownloadActivity.this.f4975w == null) {
                return;
            }
            this.f4993b = jCurrentTimeMillis;
            f0 f0Var = (f0) OfflineDownloadActivity.this.f4959f.get(this.f4992a);
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onClick packageData state:" + f0Var.f5032a);
            f0.a aVar = f0Var.f5032a;
            if (aVar == f0.a.COMPRESSED) {
                OfflineDownloadActivity.this.c1(f0Var);
            } else if (aVar == f0.a.NEEDUPDATE) {
                b(f0Var);
            } else {
                a(f0Var);
            }
        }
    }

    static class j extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f4995a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f4996b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        View f4997c;

        public j(View view) {
            super(view);
            this.f4995a = (TextView) view.findViewById(R$id.package_item_name);
            this.f4996b = (TextView) view.findViewById(R$id.package_item_size);
            this.f4997c = view.findViewById(R$id.divider_line);
        }
    }

    static class k extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f4998a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f4999b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        COUIInstallLoadProgress f5000c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        View f5001f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        RelativeLayout f5002h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        RelativeLayout f5003i;

        public k(View view) {
            super(view);
            this.f4998a = (TextView) view.findViewById(R$id.package_item_name);
            this.f4999b = (TextView) view.findViewById(R$id.package_item_size);
            this.f5000c = (COUIInstallLoadProgress) view.findViewById(R$id.btn_download);
            this.f5001f = view.findViewById(R$id.divider_line);
            this.f5002h = (RelativeLayout) view.findViewById(R$id.download_item);
            this.f5003i = (RelativeLayout) view.findViewById(R$id.rl_item_rootView);
        }
    }

    static class l implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference f5004a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f5005b;

        public l(OfflineDownloadActivity offlineDownloadActivity, int i10) {
            this.f5004a = new WeakReference(offlineDownloadActivity);
            this.f5005b = i10;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            OfflineDownloadActivity offlineDownloadActivity = (OfflineDownloadActivity) this.f5004a.get();
            StringBuilder sb = new StringBuilder();
            sb.append("showPauseDownloadDialog whichButton:");
            sb.append(i10);
            sb.append("  offlineDownloadActivity == null:");
            sb.append(offlineDownloadActivity == null);
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", sb.toString());
            if (offlineDownloadActivity == null) {
                return;
            }
            if (i10 == 0) {
                offlineDownloadActivity.Y0(this.f5005b);
            } else {
                if (i10 != 1) {
                    return;
                }
                offlineDownloadActivity.L0(this.f5005b);
            }
        }
    }

    static class m extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f5006a;

        public m(View view, String str, Boolean bool) {
            super(view);
            TextView textView = (TextView) view.findViewById(R$id.title);
            this.f5006a = textView;
            textView.setText(str);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            if (bool.booleanValue()) {
                layoutParams.setMargins(0, (int) view.getContext().getResources().getDimension(R$dimen.dp_24), 0, 0);
            } else {
                layoutParams.setMargins(0, 0, 0, 0);
            }
            this.f5006a.setLayoutParams(layoutParams);
        }
    }

    private static class n extends h1 {
        n(OfflineDownloadActivity offlineDownloadActivity) {
            super(offlineDownloadActivity);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.coloros.translate.utils.h1
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Message message, OfflineDownloadActivity offlineDownloadActivity) {
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "handleMessage msg id:" + message.what);
            if (offlineDownloadActivity == null || offlineDownloadActivity.f4975w == null) {
                com.coloros.translate.utils.c0.o("OfflineDownloadActivity", "handleMessage activity or adapter is null");
                return;
            }
            if (message.what == 105) {
                offlineDownloadActivity.f4975w.notifyDataSetChanged();
            }
            f0 f0VarP = offlineDownloadActivity.f4964l.p(((t1.a) message.obj).f15673r);
            if (f0VarP == null) {
                return;
            }
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "handleMessage msg packageData:" + com.coloros.translate.utils.c0.l(f0VarP.toString()));
            switch (message.what) {
                case 101:
                    offlineDownloadActivity.f4975w.i(f0VarP);
                    break;
                case 102:
                    offlineDownloadActivity.f4975w.u(f0VarP);
                    break;
                case 103:
                    offlineDownloadActivity.f4975w.t(f0VarP);
                    break;
                case 104:
                    offlineDownloadActivity.f4975w.n(f0VarP);
                    break;
                case 106:
                    offlineDownloadActivity.f4975w.o(f0VarP);
                    break;
                case 107:
                    offlineDownloadActivity.f4975w.m(f0VarP);
                    break;
                case 108:
                    offlineDownloadActivity.f4975w.l(f0VarP);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0(Context context, String str) {
        String strA = m0.a(str);
        if (!TextUtils.isEmpty(strA)) {
            HashMap map = new HashMap();
            map.put(RealTimeAsrInputSlot.KEY_LANGUAGE, strA);
            com.coloros.translate.utils.q0.a(context, "event_download_start", map);
        } else {
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "addStartDownloadStatis languageCode:" + str + " is invalid!");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L0(int i10) {
        List list = this.f4959f;
        if (list == null || list.isEmpty()) {
            com.coloros.translate.utils.c0.o("OfflineDownloadActivity", "cancelDownload list is null or empty");
            return;
        }
        if (i10 < 0 || i10 >= this.f4959f.size()) {
            com.coloros.translate.utils.c0.o("OfflineDownloadActivity", "cancelDownload invalid index: " + i10 + ", size=" + this.f4959f.size());
            return;
        }
        f0 f0Var = (f0) this.f4959f.get(i10);
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "cancelDownload downloadStatus:" + f0Var.f5034c);
        long j10 = f0Var.f5036e;
        if (j10 < 0) {
            return;
        }
        int i11 = f0Var.f5034c;
        if (i11 == 1 || i11 == 2) {
            this.f4964l.D(j10);
            this.f4964l.l(f0Var.f5036e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List M0() {
        PopupListItem.Builder builder = new PopupListItem.Builder();
        ArrayList arrayList = new ArrayList();
        arrayList.add(builder.reset().setTitle(getResources().getString(R$string.eto_action_delete)).setIsChecked(false).build());
        return arrayList;
    }

    private void N0() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        if (this.f4967o == null) {
            this.f4967o = new COUIBottomSheetDialog(this, com.support.panel.R$style.DefaultBottomSheetDialog);
            View viewInflate = getLayoutInflater().inflate(R$layout.offline_download_activity, (ViewGroup) null);
            this.f4967o.setContentView(viewInflate);
            this.f4967o.getBehavior().setDraggable(false);
            this.f4967o.getDragableLinearLayout().getDragView().setVisibility(8);
            if (COUIResponsiveUtils.isMediumScreen(this, com.coloros.translate.utils.o0.c(this))) {
                this.f4967o.setHeight(getResources().getDimensionPixelOffset(R$dimen.peek_height_485));
            } else {
                this.f4967o.setHeight(getResources().getDimensionPixelOffset(R$dimen.peek_height));
            }
            this.f4974v = (COUIRecyclerView) viewInflate.findViewById(R$id.content_view);
            this.f4967o.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.coloros.translate.engine.offline.l
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f5071a.S0(dialogInterface);
                }
            });
            R0(viewInflate);
        }
        if (this.f4967o.isShowing()) {
            return;
        }
        this.f4967o.setIsShowInMaxHeight(true);
        this.f4967o.show();
        if (this.f4967o.getWindow() == null || this.f4967o.getWindow().findViewById(com.support.appcompat.R$id.design_bottom_sheet) == null) {
            return;
        }
        this.f4967o.getWindow().findViewById(com.support.appcompat.R$id.design_bottom_sheet).setBackgroundColor(getColor(com.support.appcompat.R$color.coui_color_background_elevatedWithCard));
    }

    private void O0() {
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f4967o;
        if (cOUIBottomSheetDialog != null && cOUIBottomSheetDialog.isShowing()) {
            this.f4967o.dismiss();
        }
        androidx.appcompat.app.c cVar = this.f4968p;
        if (cVar != null && cVar.isShowing()) {
            this.f4968p.dismiss();
        }
        androidx.appcompat.app.c cVar2 = this.f4969q;
        if (cVar2 != null && cVar2.isShowing()) {
            this.f4969q.dismiss();
        }
        androidx.appcompat.app.c cVar3 = this.f4970r;
        if (cVar3 != null && cVar3.isShowing()) {
            this.f4970r.dismiss();
        }
        COUIPopupListWindow cOUIPopupListWindow = this.f4976x;
        if (cOUIPopupListWindow == null || !cOUIPopupListWindow.isShowing()) {
            return;
        }
        this.f4976x.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int P0(float f10) {
        return (int) ((f10 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0() {
        List listJ = com.coloros.translate.engine.offline.d.f(getApplicationContext()).j(Boolean.FALSE);
        this.f4958c.clear();
        this.f4959f.clear();
        if (listJ != null && !listJ.isEmpty()) {
            for (int i10 = 0; i10 < listJ.size(); i10++) {
                f0 f0Var = (f0) listJ.get(i10);
                if (f0Var.f5032a == f0.a.COMPRESSED) {
                    this.f4958c.add(f0Var);
                } else {
                    this.f4959f.add(f0Var);
                }
            }
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onInit packageList: " + listJ.size());
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onInit downloadedPackageList: " + this.f4958c.size());
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onInit otherPackageList: " + this.f4959f.size());
        }
        N0();
        this.f4975w = new h(this);
        COUIRecyclerView cOUIRecyclerView = this.f4974v;
        if (cOUIRecyclerView != null) {
            cOUIRecyclerView.setLayoutManager(new COUILinearLayoutManager(this, 1, false));
            this.f4974v.setScrollBarStyle(33554432);
            this.f4974v.setAdapter(this.f4975w);
            if (listJ != null) {
                this.f4974v.setItemViewCacheSize(listJ.size());
            }
            this.f4975w.notifyDataSetChanged();
        }
        if (com.coloros.translate.utils.i.a(this)) {
            return;
        }
        this.f4971s = true;
    }

    private void R0(View view) {
        COUIToolbar cOUIToolbar = (COUIToolbar) view.findViewById(R$id.toolbar);
        cOUIToolbar.setIsTitleCenterStyle(true);
        cOUIToolbar.inflateMenu(R$menu.list_selected_mode_menu);
        cOUIToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.engine.offline.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f5073a.T0(view2);
            }
        });
        if (cOUIToolbar.getMenu() == null) {
            com.coloros.translate.utils.c0.j("OfflineDownloadActivity", "menu is null");
            return;
        }
        MenuItem menuItemFindItem = cOUIToolbar.getMenu().findItem(R$id.action_select_cancel);
        if (menuItemFindItem != null) {
            menuItemFindItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.engine.offline.o
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem) {
                    return this.f5079a.U0(menuItem);
                }
            });
        } else {
            com.coloros.translate.utils.c0.j("OfflineDownloadActivity", "menu item is null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S0(DialogInterface dialogInterface) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T0(View view) {
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f4967o;
        if (cOUIBottomSheetDialog != null) {
            cOUIBottomSheetDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean U0(MenuItem menuItem) {
        com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "click cancel to finish page");
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f4967o;
        if (cOUIBottomSheetDialog == null) {
            return true;
        }
        cOUIBottomSheetDialog.onBackPressed();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V0() {
        a1();
        com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "onCreate requestOfflineTranslateInfo");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void W0() {
        com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "onResume requestOfflineTranslateInfo");
        b0.INSTANCE.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X0() {
        h hVar = this.f4975w;
        if (hVar != null) {
            hVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y0(int i10) {
        List list = this.f4959f;
        if (list == null || list.isEmpty()) {
            com.coloros.translate.utils.c0.o("OfflineDownloadActivity", "pauseDownload list is null or empty");
            return;
        }
        if (i10 < 0 || i10 >= this.f4959f.size()) {
            com.coloros.translate.utils.c0.o("OfflineDownloadActivity", "pauseDownload invalid index: " + i10 + ", size=" + this.f4959f.size());
            return;
        }
        f0 f0Var = (f0) this.f4959f.get(i10);
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "cancelDownload downloadStatus:" + f0Var.f5034c);
        int i11 = f0Var.f5034c;
        if (i11 == 1 || i11 == 2) {
            this.f4964l.D(f0Var.f5036e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z0() {
        IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        NetworkReceiver networkReceiver = new NetworkReceiver();
        this.f4972t = networkReceiver;
        registerReceiver(networkReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a1() {
        if (!new File(h0.a()).exists()) {
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "releaseAssets begin copy asserts files");
            com.coloros.translate.utils.d.b(this, "text", h0.d(this));
        }
        com.coloros.translate.utils.l0.f7130a.k("nmt_common_exist", Boolean.TRUE, false, "translatePreferences");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b1(f0 f0Var, boolean z10) {
        if (com.coloros.translate.utils.j.c(500L)) {
            return;
        }
        g gVarC = g.c(new e(z10, f0Var));
        g gVarC2 = g.c(new f());
        androidx.appcompat.app.c cVarCreate = new COUIAlertDialogBuilder(this, com.support.dialog.R$style.COUIAlertDialog_Bottom).setTitle(R$string.eto_resume_download_message).setPositiveButton(R$string.eto_resume_download, (DialogInterface.OnClickListener) gVarC).setNegativeButton(R$string.eto_cancel, (DialogInterface.OnClickListener) gVarC2).create();
        this.f4970r = cVarCreate;
        if (!isFinishing() && !isDestroyed() && !cVarCreate.isShowing()) {
            cVarCreate.show();
        }
        gVarC.b(cVarCreate);
        gVarC2.b(cVarCreate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c1(f0 f0Var) {
        if (com.coloros.translate.utils.j.c(500L)) {
            return;
        }
        if (!this.f4958c.contains(f0Var)) {
            com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "downloadedPackageList do not have package, then showDeleteDialog return");
            return;
        }
        g gVarC = g.c(new b(f0Var));
        g gVarC2 = g.c(new c());
        COUIAlertDialogBuilder cOUIAlertDialogBuilder = new COUIAlertDialogBuilder(this, com.support.dialog.R$style.COUIAlertDialog_Bottom);
        cOUIAlertDialogBuilder.setNeutralButton((CharSequence) getString(R$string.eto_action_delete), (DialogInterface.OnClickListener) gVarC);
        cOUIAlertDialogBuilder.setNegativeButton((CharSequence) getString(R.string.cancel), (DialogInterface.OnClickListener) gVarC2);
        cOUIAlertDialogBuilder.setTitle(R$string.download_dialog_title);
        cOUIAlertDialogBuilder.setMessage(R$string.download_dialog_content);
        androidx.appcompat.app.c cVarCreate = cOUIAlertDialogBuilder.create();
        this.f4968p = cVarCreate;
        if (!isFinishing() && !isDestroyed() && !cVarCreate.isShowing()) {
            cVarCreate.show();
        }
        gVarC.b(cVarCreate);
        gVarC2.b(cVarCreate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d1(int i10) {
        if (com.coloros.translate.utils.j.c(500L)) {
            return;
        }
        g gVarC = g.c(new l(this, i10));
        g gVarC2 = g.c(new d());
        androidx.appcompat.app.c cVarCreate = new COUIAlertDialogBuilder(this, com.support.dialog.R$style.COUIAlertDialog_Bottom).setItems((CharSequence[]) new String[]{getString(R$string.eto_pause_download), getString(R$string.eto_cancel_download)}, (DialogInterface.OnClickListener) gVarC).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) gVarC2).create();
        this.f4969q = cVarCreate;
        if (!isFinishing() && !isDestroyed() && !cVarCreate.isShowing()) {
            cVarCreate.show();
        }
        gVarC.b(cVarCreate);
        gVarC2.b(cVarCreate);
    }

    private void f1() {
        try {
            unregisterReceiver(this.f4972t);
        } catch (Exception e10) {
            com.coloros.translate.utils.c0.j("OfflineDownloadActivity", "unRegisterNetWorkReceiver error:" + e10.getMessage());
        }
    }

    @Override // com.coloros.translate.engine.offline.i0
    public void a() {
        x.o(this).m();
        x.o(this).N();
    }

    @Override // com.coloros.translate.engine.offline.x.e
    public void b(t1.a aVar) {
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onDownloadSuccessed info:" + aVar);
    }

    @Override // com.coloros.translate.engine.offline.x.e
    public void c(t1.a aVar) {
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onDownloadPaused info:" + aVar);
        Handler handler = this.f4957b;
        handler.sendMessage(handler.obtainMessage(103, aVar));
    }

    @Override // com.coloros.translate.engine.offline.x.b
    public void e(t1.a aVar) {
        Handler handler = this.f4957b;
        handler.sendMessage(handler.obtainMessage(106, aVar));
    }

    public void e1() {
        com.coloros.translate.base.a.INSTANCE.a(this, 2, new a());
    }

    @Override // com.coloros.translate.engine.offline.x.e
    public void f() {
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onGetDownloadList download");
        this.f4957b.post(new Runnable() { // from class: com.coloros.translate.engine.offline.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f5066a.Q0();
            }
        });
    }

    @Override // android.app.Activity
    public void finish() {
        if (!this.f4977y) {
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "finish");
            super.finish();
        } else {
            com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "isFromScanner");
            com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "newer than LOLLIPOP");
            finishAndRemoveTask();
        }
    }

    @Override // com.coloros.translate.engine.offline.x.e
    public void g(t1.a aVar) {
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onDownloadProgress info:" + aVar);
        Handler handler = this.f4957b;
        handler.sendMessage(handler.obtainMessage(102, aVar));
    }

    @Override // com.coloros.translate.engine.offline.i0
    public void j() {
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "requestFinished");
        this.f4971s = true;
        this.f4957b.postDelayed(new Runnable() { // from class: com.coloros.translate.engine.offline.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f5072a.X0();
            }
        }, 300L);
    }

    @Override // com.coloros.translate.engine.offline.x.e
    public void o(t1.a aVar) {
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onDownloadPending info:" + aVar);
        Handler handler = this.f4957b;
        handler.sendMessage(handler.obtainMessage(101, aVar));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        COUIThemeOverlay.getInstance().applyThemeOverlays(this);
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onCreate");
        this.f4973u = this;
        this.f4960h = getString(R$string.eto_action_download);
        this.f4961i = getString(R$string.eto_action_continue);
        this.f4962j = getString(R$string.download_wait);
        this.f4963k = getString(R$string.update);
        this.f4966n = new COUIUnitConversionUtils(this);
        this.f4964l = x.o(this);
        this.f4965m = new y();
        this.f4964l.k(this);
        this.f4964l.j(this);
        this.f4964l.F();
        String stringExtra = getIntent().getStringExtra("extra_from_package");
        boolean zB = com.coloros.translate.base.a.INSTANCE.b();
        boolean zEquals = "com.coloros.ocrscanner".equals(stringExtra);
        this.f4977y = zEquals;
        if (zEquals && zB) {
            e1();
            return;
        }
        e0.INSTANCE.q(this);
        a0.INSTANCE.f();
        Z0();
        u0.d("request_download_offline_info", new Runnable() { // from class: com.coloros.translate.engine.offline.j
            @Override // java.lang.Runnable
            public final void run() {
                this.f5061a.V0();
            }
        });
        Settings.Global.putInt(this.f4973u.getContentResolver(), "is_first_use", 0);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.f4975w = null;
        super.onDestroy();
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onDestroy");
        f1();
        this.f4964l.I(this);
        this.f4964l.H(this);
        this.f4964l.J();
        this.f4957b.removeCallbacksAndMessages(null);
        COUIBottomSheetDialog cOUIBottomSheetDialog = this.f4967o;
        if (cOUIBottomSheetDialog != null) {
            cOUIBottomSheetDialog.setOnDismissListener(null);
        }
        O0();
        this.f4967o = null;
        this.f4976x = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f4977y = "com.coloros.ocrscanner".equals(intent.getStringExtra("extra_from_package"));
        com.coloros.translate.utils.c0.m("OfflineDownloadActivity", "onNewIntent isFromScanner : " + this.f4977y);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (com.coloros.translate.base.a.INSTANCE.b()) {
            return;
        }
        u0.d("request_download_offline_info", new Runnable() { // from class: com.coloros.translate.engine.offline.i
            @Override // java.lang.Runnable
            public final void run() {
                OfflineDownloadActivity.W0();
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onStart");
    }

    @Override // com.coloros.translate.engine.offline.x.e
    public void p(t1.a aVar) {
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onDownloadFailed info:" + aVar);
        Handler handler = this.f4957b;
        handler.sendMessage(handler.obtainMessage(104, aVar));
    }

    @Override // com.coloros.translate.engine.offline.x.b
    public void q(t1.a aVar) {
        Handler handler = this.f4957b;
        handler.sendMessage(handler.obtainMessage(107, aVar));
    }

    @Override // com.coloros.translate.engine.offline.x.e
    public void t(long j10) {
        com.coloros.translate.utils.c0.i("OfflineDownloadActivity", "onDownloadDeleted downloadId:" + j10);
        Handler handler = this.f4957b;
        handler.sendMessage(handler.obtainMessage(105));
    }

    @Override // com.coloros.translate.engine.offline.x.b
    public void v(t1.a aVar) {
        Handler handler = this.f4957b;
        handler.sendMessage(handler.obtainMessage(108, aVar));
    }
}
