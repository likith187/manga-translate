.class public final synthetic Lcom/coloros/translate/engine/offline/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/l;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/l;->a:Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;

    invoke-static {p0, p1}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;->k0(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
