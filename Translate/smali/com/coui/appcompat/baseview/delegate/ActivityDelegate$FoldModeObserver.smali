.class final Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$FoldModeObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$FoldSettingsObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FoldModeObserver"
.end annotation


# instance fields
.field private final reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/baseview/base/COUIBaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/baseview/base/COUIBaseActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$FoldModeObserver;->reference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public observe(I)V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$FoldModeObserver;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->getOrientation(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->onFoldModeChange(I)V

    :cond_0
    return-void
.end method
