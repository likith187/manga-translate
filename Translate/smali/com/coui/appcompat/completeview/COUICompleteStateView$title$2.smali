.class final Lcom/coui/appcompat/completeview/COUICompleteStateView$title$2;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/completeview/COUICompleteStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/s;",
        "Lw8/a;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/completeview/COUICompleteStateView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/completeview/COUICompleteStateView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView$title$2;->this$0:Lcom/coui/appcompat/completeview/COUICompleteStateView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView$title$2;->this$0:Lcom/coui/appcompat/completeview/COUICompleteStateView;

    sget v0, Lcom/support/component/R$id;->complete_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView$title$2;->invoke()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method
