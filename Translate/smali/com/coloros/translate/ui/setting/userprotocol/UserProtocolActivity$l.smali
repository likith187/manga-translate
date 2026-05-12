.class final Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Ljava/lang/StringBuffer;

.field final synthetic $uri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/net/Uri;Ljava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    iput-object p2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;->$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;->$it:Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;->invoke$lambda$0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/net/Uri;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->R0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/x;->INSTANCE:Lcom/coloros/translate/utils/x;

    iget-object v1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    iget-object v2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;->$uri:Landroid/net/Uri;

    const-string v3, "$uri"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;->$it:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/translate/utils/x;->d(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;->$uri:Landroid/net/Uri;

    new-instance v1, Lcom/coloros/translate/ui/setting/userprotocol/f;

    invoke-direct {v1, v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/f;-><init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/net/Uri;)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v1, p0, v0}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method
