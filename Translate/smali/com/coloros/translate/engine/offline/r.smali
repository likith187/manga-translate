.class public final synthetic Lcom/coloros/translate/engine/offline/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/r;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/r;->a:Landroid/view/View;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$h;->h(Landroid/view/View;)V

    return-void
.end method
