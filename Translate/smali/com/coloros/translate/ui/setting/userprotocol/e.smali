.class public final synthetic Lcom/coloros/translate/ui/setting/userprotocol/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/net/Uri;

.field public final synthetic b:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/e;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/coloros/translate/ui/setting/userprotocol/e;->b:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/e;->a:Landroid/net/Uri;

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/e;->b:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->G0(Landroid/net/Uri;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Landroid/view/View;)V

    return-void
.end method
