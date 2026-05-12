.class public final Lcom/coloros/translate/ui/cube/CubeSettingActivity;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/cube/CubeSettingActivity$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/coloros/translate/ui/cube/CubeSettingActivity$a;


# instance fields
.field private a:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

.field private b:Landroidx/appcompat/app/c;

.field private c:I

.field private f:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Ljava/util/HashMap;

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/cube/CubeSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/cube/CubeSettingActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->l:Lcom/coloros/translate/ui/cube/CubeSettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->i:Ljava/util/HashMap;

    const/4 v1, 0x1

    iput v1, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->j:I

    iput-object v0, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->k:Ljava/lang/String;

    return-void
.end method

.method public static synthetic R(Lcom/coloros/translate/ui/cube/CubeSettingActivity;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->Z(Lcom/coloros/translate/ui/cube/CubeSettingActivity;[Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic S(Lcom/coloros/translate/ui/cube/CubeSettingActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->a0(Lcom/coloros/translate/ui/cube/CubeSettingActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final synthetic T(Lcom/coloros/translate/ui/cube/CubeSettingActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic U(Lcom/coloros/translate/ui/cube/CubeSettingActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->h:Ljava/lang/String;

    return-object p0
.end method

.method private final V(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "action_key_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->j:I

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatch keyType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , needNewTask : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CubeSettingActivity"

    invoke-virtual {v1, v3, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "request_package"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    iget v0, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->j:I

    if-ne v0, v2, :cond_1

    const/4 p1, 0x0

    invoke-static {p0, p1, v2, p1}, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->Y(Lcom/coloros/translate/ui/cube/CubeSettingActivity;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "dispatch requestKeyguard"

    invoke-virtual {v1, v3, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/view/OplusWindowManager;

    invoke-direct {v0}, Landroid/view/OplusWindowManager;-><init>()V

    const-string v1, "unlockOrShowSecurity"

    invoke-virtual {v0, v1}, Landroid/view/OplusWindowManager;->requestKeyguard(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "dispatch requestKeyguard err : e.message"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->W(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method private final W(Z)V
    .locals 9

    const-string v0, "text_translate"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    const-string v1, "content://uri.gesturemanagerprovider/action_button"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "second_menu_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "scene_name=?"

    const-string v1, "translate"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    move-object v2, v0

    :goto_0
    :try_start_1
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_1
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v3, "CubeSettingActivity"

    if-eqz v1, :cond_2

    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchPageForCube getItem failure, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchPageForCube getItem success, item : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v3, "com.oplus.gesture"

    const/high16 v4, 0x4000000

    const/high16 v5, 0x10000000

    const-string v6, "extra_from"

    const-string v7, "from_cube"

    sparse-switch v1, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v0, "screen_translation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {p0, v3}, Lcom/coloros/translate/ui/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n1:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a;

    invoke-virtual {v0, p0, p1, v7}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a;->a(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_7

    :sswitch_2
    const-string v0, "photo_translation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p0, v3}, Lcom/coloros/translate/ui/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    :sswitch_3
    const-string v0, "simultaneous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_8

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    :sswitch_4
    const-string v0, "dialog_translation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/translate/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_9

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_b

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_6

    :cond_b
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d695dc6 -> :sswitch_4
        -0x3bc3f185 -> :sswitch_3
        0x143bd424 -> :sswitch_2
        0x6b195cbc -> :sswitch_1
        0x6bc2cf5e -> :sswitch_0
    .end sparse-switch
.end method

.method private final X(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-string v1, "text_translate"

    invoke-static {}, Lcom/coloros/translate/ui/a;->b()Z

    move-result v0

    const-string v2, "CubeSettingActivity"

    const/4 v3, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v4, "showDialog has photo translate"

    invoke-virtual {v0, v2, v4}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v11

    :goto_0
    const/4 v12, 0x0

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    const-string v0, "content://uri.gesturemanagerprovider/action_button"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v0, "second_menu_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v15

    const-string v16, "scene_name=?"

    const-string v0, "translate"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v1

    goto :goto_2

    :cond_1
    move-object v5, v1

    goto :goto_1

    :cond_2
    move-object v5, v1

    move-object v0, v12

    :goto_1
    :try_start_1
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    sget-object v6, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v6, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showDialog getItem failure, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showDialog getItem success, item : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "screen_translation"

    const-string v2, "simultaneous"

    const-string v6, "dialog_translation"

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v13, 0x2

    const-string v14, "getString(...)"

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    sget v15, Lcom/coloros/translate/R$string;->text_translate:I

    invoke-virtual {v9, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v15, v4, v11

    sget v15, Lcom/coloros/translate/R$string;->photo_translation:I

    invoke-virtual {v9, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v15, v4, v3

    sget v15, Lcom/coloros/translate/R$string;->dialog_translation:I

    invoke-virtual {v9, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v15, v4, v13

    sget v13, Lcom/coloros/translate/R$string;->simultaneous:I

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v13, v4, v8

    sget v8, Lcom/coloros/translate/R$string;->screen_translation:I

    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v4, v7

    iget-object v7, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->i:Ljava/util/HashMap;

    sget v8, Lcom/coloros/translate/R$string;->text_translate:I

    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->i:Ljava/util/HashMap;

    sget v7, Lcom/coloros/translate/R$string;->photo_translation:I

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "photo_translation"

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->i:Ljava/util/HashMap;

    sget v7, Lcom/coloros/translate/R$string;->dialog_translation:I

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->i:Ljava/util/HashMap;

    sget v6, Lcom/coloros/translate/R$string;->simultaneous:I

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->i:Ljava/util/HashMap;

    sget v2, Lcom/coloros/translate/R$string;->screen_translation:I

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object v0, v4

    goto :goto_5

    :cond_4
    new-array v4, v7, [Ljava/lang/String;

    sget v7, Lcom/coloros/translate/R$string;->text_translate:I

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v11

    sget v7, Lcom/coloros/translate/R$string;->dialog_translation:I

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v3

    sget v7, Lcom/coloros/translate/R$string;->simultaneous:I

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v13

    sget v7, Lcom/coloros/translate/R$string;->screen_translation:I

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v8

    iget-object v7, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->i:Ljava/util/HashMap;

    sget v8, Lcom/coloros/translate/R$string;->text_translate:I

    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->i:Ljava/util/HashMap;

    sget v7, Lcom/coloros/translate/R$string;->dialog_translation:I

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->i:Ljava/util/HashMap;

    sget v6, Lcom/coloros/translate/R$string;->simultaneous:I

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->i:Ljava/util/HashMap;

    sget v2, Lcom/coloros/translate/R$string;->screen_translation:I

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :goto_5
    array-length v1, v0

    new-array v6, v1, [Z

    array-length v1, v0

    new-array v7, v1, [Z

    array-length v1, v0

    move v2, v11

    :goto_6
    if-ge v2, v1, :cond_6

    aput-boolean v11, v6, v2

    aput-boolean v11, v7, v2

    iget-object v4, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->i:Ljava/util/HashMap;

    aget-object v8, v0, v2

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v2, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->c:I

    :cond_5
    add-int/2addr v2, v3

    goto :goto_6

    :cond_6
    iget v1, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->c:I

    aput-boolean v3, v6, v1

    new-instance v13, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    sget v3, Lcom/support/dialog/R$layout;->coui_select_dialog_singlechoice:I

    move-object v4, v0

    check-cast v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Z[ZZ)V

    new-instance v1, Lcom/coloros/translate/ui/cube/a;

    invoke-direct {v1, v9, v0}, Lcom/coloros/translate/ui/cube/a;-><init>(Lcom/coloros/translate/ui/cube/CubeSettingActivity;[Ljava/lang/String;)V

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v2, Lcom/support/dialog/R$style;->COUIAlertDialog_BottomAssignment:I

    invoke-direct {v0, v9, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/coloros/translate/R$string;->app_name_new:I

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    if-eqz v10, :cond_7

    invoke-virtual {v0, v10}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    :cond_7
    invoke-virtual {v0, v13, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/coloros/translate/base/R$string;->action_cancel:I

    invoke-virtual {v0, v1, v12, v11}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    new-instance v1, Lcom/coloros/translate/ui/cube/b;

    invoke-direct {v1, v9}, Lcom/coloros/translate/ui/cube/b;-><init>(Lcom/coloros/translate/ui/cube/CubeSettingActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/c$a;

    iput-object v0, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->a:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, v9, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->b:Landroidx/appcompat/app/c;

    return-void
.end method

.method static synthetic Y(Lcom/coloros/translate/ui/cube/CubeSettingActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->X(Ljava/lang/String;)V

    return-void
.end method

.method private static final Z(Lcom/coloros/translate/ui/cube/CubeSettingActivity;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 8

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$itemArray"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDialog click which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CubeSettingActivity"

    invoke-virtual {p2, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p3, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->c:I

    aget-object p3, p1, p3

    iput-object p3, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog selectItem = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->i:Ljava/util/HashMap;

    iget p3, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->c:I

    aget-object p1, p1, p3

    invoke-static {p2, p1}, Lkotlin/collections/j0;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->h:Ljava/lang/String;

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object v2

    new-instance v5, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b;

    const/4 p1, 0x0

    invoke-direct {v5, p0, p1}, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b;-><init>(Lcom/coloros/translate/ui/cube/CubeSettingActivity;Lkotlin/coroutines/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showDialog update data failure, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final a0(Lcom/coloros/translate/ui/cube/CubeSettingActivity;Landroid/content/DialogInterface;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->h:Ljava/lang/String;

    const-string v2, "action_button_mainmenu"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "onCreate"

    const-string v1, "CubeSettingActivity"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getInstance()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->applyThemeOverlays(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "user_setup_complete"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onCreate in user setup"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1302

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->V(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "CubeSettingActivity"

    const-string v2, "onNewIntent"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->V(Z)V

    return-void
.end method
