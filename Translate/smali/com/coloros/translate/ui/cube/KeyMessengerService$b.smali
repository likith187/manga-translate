.class public final Lcom/coloros/translate/ui/cube/KeyMessengerService$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/cube/KeyMessengerService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/cube/KeyMessengerService;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/cube/KeyMessengerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const-string v0, "text_translate"

    const-string v1, "msg"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "icon_res_id"

    const-string v3, "app_name"

    const-string v4, "KeyMessengerService"

    const/4 v5, 0x1

    if-ne v1, v5, :cond_8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "key"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v4, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    :try_start_0
    sget-object v6, Ln8/r;->Companion:Ln8/r$a;

    const-string v6, "content://uri.gesturemanagerprovider/action_button"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v1, "second_menu_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "scene_name=?"

    const-string v1, "translate"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    move-object v6, v0

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
    sget-object v7, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v7, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage getItem failure, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v4, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage getItem success, item : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    iput v5, v7, Landroid/os/Message;->what:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v0, "screen_translation"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    sget v6, Lcom/coloros/translate/R$string;->screen_translation:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    sget v6, Lcom/coloros/translate/R$string;->text_translate:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_2
    const-string v0, "photo_translation"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    sget v6, Lcom/coloros/translate/R$string;->photo_translation:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_3
    const-string v0, "simultaneous"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    sget v6, Lcom/coloros/translate/R$string;->simultaneous:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_4
    const-string v0, "dialog_translation"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_3
    iget-object v0, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    sget v6, Lcom/coloros/translate/R$string;->app_name_new:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    sget v6, Lcom/coloros/translate/R$string;->dialog_translation:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    sget v8, Lcom/coloros/translate/R$string;->long_press_to_start:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "side_text"

    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    sget v6, Lcom/coloros/translate/R$string;->app_name_new:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "fluid_cloud_text"

    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/coloros/translate/base/R$drawable;->ic_app_launcher:I

    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "MSG_ACTION_BUTTON_CLICK send to gesture"

    invoke-virtual {v1, v4, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_5

    :cond_8
    const/4 v0, 0x2

    if-ne v1, v0, :cond_9

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v6, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    invoke-static {v6}, Lcom/coloros/translate/ui/cube/KeyMessengerService;->a(Lcom/coloros/translate/ui/cube/KeyMessengerService;)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_ACTION_BUTTON_LONG_PRESS canStart : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    invoke-static {v6}, Lcom/coloros/translate/ui/cube/KeyMessengerService;->a(Lcom/coloros/translate/ui/cube/KeyMessengerService;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "startResult"

    const-string v7, "reply"

    invoke-virtual {v0, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/coloros/translate/ui/cube/KeyMessengerService$b;->a:Lcom/coloros/translate/ui/cube/KeyMessengerService;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Lcom/coloros/translate/base/R$drawable;->ic_app_launcher:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "MSG_ACTION_BUTTON_LONG_PRESS send to gesture"

    invoke-virtual {v5, v4, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_9
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

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
