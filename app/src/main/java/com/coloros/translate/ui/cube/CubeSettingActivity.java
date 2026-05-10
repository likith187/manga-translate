package com.coloros.translate.ui.cube;

import android.app.KeyguardManager;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.Settings;
import android.view.OplusWindowManager;
import android.widget.ListAdapter;
import androidx.activity.ComponentActivity;
import androidx.appcompat.app.c;
import com.coloros.translate.R;
import com.coloros.translate.base.R$string;
import com.coloros.translate.utils.c0;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import com.coui.appcompat.dialog.adapter.ChoiceListAdapter;
import com.coui.appcompat.theme.COUIThemeOverlay;
import com.support.dialog.R$layout;
import com.support.dialog.R$style;
import java.util.HashMap;
import kotlin.collections.j0;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.d0;
import kotlinx.coroutines.f;
import kotlinx.coroutines.g;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y;
import n8.h0;
import n8.r;
import n8.s;
import w8.p;

/* JADX INFO: loaded from: classes.dex */
public final class CubeSettingActivity extends ComponentActivity {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f6141l = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private COUIAlertDialogBuilder f6142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f6143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6144c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6145f = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f6146h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final HashMap f6147i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f6148j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f6149k = "";

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends l implements p {
        int label;

        static final class a extends l implements p {
            int label;
            final /* synthetic */ CubeSettingActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(CubeSettingActivity cubeSettingActivity, d dVar) {
                super(2, dVar);
                this.this$0 = cubeSettingActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final d create(Object obj, d dVar) {
                return new a(this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.b.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                s.b(obj);
                Uri uri = Uri.parse("content://uri.gesturemanagerprovider/action_button");
                ContentValues contentValues = new ContentValues();
                contentValues.put("second_menu_name", this.this$0.f6146h);
                if (r.a(this.this$0.f6145f, this.this$0.getString(R.string.screen_translation))) {
                    contentValues.put("long_press_action_type", "service");
                    Intent intent = new Intent("oplus.intent.action.GLOBAL_TRANSLATION");
                    intent.setPackage(this.this$0.getPackageName());
                    intent.putExtra("extra_from_package", "com.oplus.gesture");
                    contentValues.put("long_press_action_info", intent.toUri(1));
                } else {
                    contentValues.put("long_press_action_type", "activity");
                    contentValues.put("long_press_action_info", "coloros.intent.action.translate.CUBE");
                }
                contentValues.put("update_flag", kotlin.coroutines.jvm.internal.b.c(1));
                this.this$0.getContentResolver().update(uri, contentValues, "scene_name=?", new String[]{"translate"});
                return h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(c0 c0Var, d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
            }
        }

        b(d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final d create(Object obj, d dVar) {
            return CubeSettingActivity.this.new b(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                s.b(obj);
                y yVarB = o0.b();
                a aVar = new a(CubeSettingActivity.this, null);
                this.label = 1;
                if (f.c(yVarB, aVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                s.b(obj);
            }
            return h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(c0 c0Var, d dVar) {
            return ((b) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
        }
    }

    private final void V(boolean z10) {
        int intExtra = getIntent().getIntExtra("action_key_type", 1);
        this.f6148j = intExtra;
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.i("CubeSettingActivity", "dispatch keyType : " + intExtra + " , needNewTask : " + z10);
        String stringExtra = getIntent().getStringExtra("request_package");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.f6149k = stringExtra;
        getWindow().addFlags(67108864);
        if (this.f6148j == 1) {
            Y(this, null, 1, null);
            return;
        }
        Object systemService = getSystemService("keyguard");
        r.c(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        if (((KeyguardManager) systemService).isKeyguardLocked()) {
            aVar.i("CubeSettingActivity", "dispatch requestKeyguard");
            try {
                new OplusWindowManager().requestKeyguard("unlockOrShowSecurity");
            } catch (RemoteException unused) {
                com.coloros.translate.utils.c0.f7098a.e("CubeSettingActivity", "dispatch requestKeyguard err : e.message");
            }
        }
        W(z10);
        finish();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|2|63|3|(8:5|(0)(1:9)|61|15|19|(1:21)|22|(1:24)(6:25|SW:26|50|(1:52)(1:53)|54|69))(1:13)|14|61|15|19|(0)|22|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
    
        r1 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0045, code lost:
    
        r3 = n8.r.Companion;
        r1 = n8.r.m59constructorimpl(n8.s.a(r1));
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void W(boolean r10) {
        /*
            Method dump skipped, instruction units count: 308
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.ui.cube.CubeSettingActivity.W(boolean):void");
    }

    private final void X(String str) {
        boolean z10;
        String string;
        Object objM59constructorimpl;
        String[] strArr;
        Cursor cursorQuery;
        if (com.coloros.translate.ui.a.b()) {
            com.coloros.translate.utils.c0.f7098a.i("CubeSettingActivity", "showDialog has photo translate");
            z10 = true;
        } else {
            z10 = false;
        }
        try {
            r.a aVar = n8.r.Companion;
            cursorQuery = getContentResolver().query(Uri.parse("content://uri.gesturemanagerprovider/action_button"), new String[]{"second_menu_name"}, "scene_name=?", new String[]{"translate"}, null, null);
            if (cursorQuery != null) {
                string = (cursorQuery.getCount() <= 0 || !cursorQuery.moveToFirst()) ? "text_translate" : cursorQuery.getString(0).toString();
            } else {
                string = "text_translate";
                cursorQuery = null;
            }
        } catch (Throwable th) {
            th = th;
            string = "text_translate";
        }
        try {
            objM59constructorimpl = n8.r.m59constructorimpl(cursorQuery);
        } catch (Throwable th2) {
            th = th2;
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("CubeSettingActivity", "showDialog getItem failure, " + thM62exceptionOrNullimpl.getMessage());
        }
        com.coloros.translate.utils.c0.f7098a.d("CubeSettingActivity", "showDialog getItem success, item : " + ((Object) string));
        if (z10) {
            String string2 = getString(R.string.text_translate);
            kotlin.jvm.internal.r.d(string2, "getString(...)");
            String string3 = getString(R.string.photo_translation);
            kotlin.jvm.internal.r.d(string3, "getString(...)");
            String string4 = getString(R.string.dialog_translation);
            kotlin.jvm.internal.r.d(string4, "getString(...)");
            String string5 = getString(R.string.simultaneous);
            kotlin.jvm.internal.r.d(string5, "getString(...)");
            String string6 = getString(R.string.screen_translation);
            kotlin.jvm.internal.r.d(string6, "getString(...)");
            strArr = new String[]{string2, string3, string4, string5, string6};
            HashMap map = this.f6147i;
            String string7 = getString(R.string.text_translate);
            kotlin.jvm.internal.r.d(string7, "getString(...)");
            map.put(string7, "text_translate");
            HashMap map2 = this.f6147i;
            String string8 = getString(R.string.photo_translation);
            kotlin.jvm.internal.r.d(string8, "getString(...)");
            map2.put(string8, "photo_translation");
            HashMap map3 = this.f6147i;
            String string9 = getString(R.string.dialog_translation);
            kotlin.jvm.internal.r.d(string9, "getString(...)");
            map3.put(string9, "dialog_translation");
            HashMap map4 = this.f6147i;
            String string10 = getString(R.string.simultaneous);
            kotlin.jvm.internal.r.d(string10, "getString(...)");
            map4.put(string10, "simultaneous");
            HashMap map5 = this.f6147i;
            String string11 = getString(R.string.screen_translation);
            kotlin.jvm.internal.r.d(string11, "getString(...)");
            map5.put(string11, "screen_translation");
        } else {
            String string12 = getString(R.string.text_translate);
            kotlin.jvm.internal.r.d(string12, "getString(...)");
            String string13 = getString(R.string.dialog_translation);
            kotlin.jvm.internal.r.d(string13, "getString(...)");
            String string14 = getString(R.string.simultaneous);
            kotlin.jvm.internal.r.d(string14, "getString(...)");
            String string15 = getString(R.string.screen_translation);
            kotlin.jvm.internal.r.d(string15, "getString(...)");
            strArr = new String[]{string12, string13, string14, string15};
            HashMap map6 = this.f6147i;
            String string16 = getString(R.string.text_translate);
            kotlin.jvm.internal.r.d(string16, "getString(...)");
            map6.put(string16, "text_translate");
            HashMap map7 = this.f6147i;
            String string17 = getString(R.string.dialog_translation);
            kotlin.jvm.internal.r.d(string17, "getString(...)");
            map7.put(string17, "dialog_translation");
            HashMap map8 = this.f6147i;
            String string18 = getString(R.string.simultaneous);
            kotlin.jvm.internal.r.d(string18, "getString(...)");
            map8.put(string18, "simultaneous");
            HashMap map9 = this.f6147i;
            String string19 = getString(R.string.screen_translation);
            kotlin.jvm.internal.r.d(string19, "getString(...)");
            map9.put(string19, "screen_translation");
        }
        final String[] strArr2 = strArr;
        boolean[] zArr = new boolean[strArr2.length];
        boolean[] zArr2 = new boolean[strArr2.length];
        int length = strArr2.length;
        for (int i10 = 0; i10 < length; i10++) {
            zArr[i10] = false;
            zArr2[i10] = false;
            if (kotlin.jvm.internal.r.a(string, this.f6147i.get(strArr2[i10]))) {
                this.f6144c = i10;
            }
        }
        zArr[this.f6144c] = true;
        ChoiceListAdapter choiceListAdapter = new ChoiceListAdapter(this, R$layout.coui_select_dialog_singlechoice, strArr2, null, zArr, zArr2, false);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.cube.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                CubeSettingActivity.Z(this.f6154a, strArr2, dialogInterface, i11);
            }
        };
        COUIAlertDialogBuilder cOUIAlertDialogBuilder = new COUIAlertDialogBuilder(this, R$style.COUIAlertDialog_BottomAssignment);
        cOUIAlertDialogBuilder.setTitle((CharSequence) getString(R.string.app_name_new));
        if (str != null) {
            cOUIAlertDialogBuilder.setMessage((CharSequence) str);
        }
        cOUIAlertDialogBuilder.setAdapter((ListAdapter) choiceListAdapter, onClickListener);
        cOUIAlertDialogBuilder.setNegativeButton(R$string.action_cancel, (DialogInterface.OnClickListener) null, false);
        cOUIAlertDialogBuilder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.coloros.translate.ui.cube.b
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                CubeSettingActivity.a0(this.f6156a, dialogInterface);
            }
        });
        this.f6142a = cOUIAlertDialogBuilder;
        kotlin.jvm.internal.r.b(cOUIAlertDialogBuilder);
        this.f6143b = cOUIAlertDialogBuilder.show();
    }

    static /* synthetic */ void Y(CubeSettingActivity cubeSettingActivity, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        cubeSettingActivity.X(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(CubeSettingActivity this$0, String[] itemArray, DialogInterface dialogInterface, int i10) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(itemArray, "$itemArray");
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("CubeSettingActivity", "showDialog click which = " + i10);
        this$0.f6144c = i10;
        String str = itemArray[i10];
        this$0.f6145f = str;
        aVar.i("CubeSettingActivity", "showDialog selectItem = " + str);
        this$0.f6146h = (String) j0.i(this$0.f6147i, itemArray[this$0.f6144c]);
        try {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(g.b(d0.a(o0.c()), null, null, this$0.new b(null), 3, null));
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("CubeSettingActivity", "showDialog update data failure, " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(CubeSettingActivity this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putString("action_button_mainmenu", this$0.f6146h);
        intent.putExtras(bundle);
        this$0.setResult(-1, intent);
        this$0.finish();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.i("CubeSettingActivity", "onCreate");
        COUIThemeOverlay.getInstance().applyThemeOverlays(this);
        if (Settings.Secure.getInt(getContentResolver(), "user_setup_complete", -1) == 0) {
            aVar.i("CubeSettingActivity", "onCreate in user setup");
            getWindow().getDecorView().setSystemUiVisibility(4866);
        }
        V(false);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        kotlin.jvm.internal.r.e(intent, "intent");
        super.onNewIntent(intent);
        com.coloros.translate.utils.c0.f7098a.i("CubeSettingActivity", "onNewIntent");
        setIntent(intent);
        V(true);
    }
}
