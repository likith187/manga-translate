.class public final synthetic Lcom/coloros/translate/ui/setting/userprotocol/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

.field public final synthetic b:Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/d;->a:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    iput-object p2, p0, Lcom/coloros/translate/ui/setting/userprotocol/d;->b:Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    iput-object p3, p0, Lcom/coloros/translate/ui/setting/userprotocol/d;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/d;->a:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    iget-object v1, p0, Lcom/coloros/translate/ui/setting/userprotocol/d;->b:Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/d;->c:Landroid/net/Uri;

    invoke-static {v0, v1, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->E0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;Landroid/net/Uri;)V

    return-void
.end method
