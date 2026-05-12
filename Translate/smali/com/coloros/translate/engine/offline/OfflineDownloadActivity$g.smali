.class public Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/OfflineDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private a:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->a:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static bridge synthetic a(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->a:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static c(Landroid/content/DialogInterface$OnClickListener;)Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;
    .locals 1

    new-instance v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public b(Landroid/app/Dialog;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g$a;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g$a;-><init>(Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/OfflineDownloadActivity$g;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
