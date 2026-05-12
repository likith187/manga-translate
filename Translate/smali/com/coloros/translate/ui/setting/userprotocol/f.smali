.class public final synthetic Lcom/coloros/translate/ui/setting/userprotocol/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

.field public final synthetic b:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/f;->a:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    iput-object p2, p0, Lcom/coloros/translate/ui/setting/userprotocol/f;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/f;->a:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/f;->b:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$l;->a(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/net/Uri;)V

    return-void
.end method
