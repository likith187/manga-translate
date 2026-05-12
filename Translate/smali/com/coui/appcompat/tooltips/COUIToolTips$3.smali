.class Lcom/coui/appcompat/tooltips/COUIToolTips$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tooltips/COUIToolTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$3;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/tooltips/COUIToolTips$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips$3;->lambda$onLayoutChange$0()V

    return-void
.end method

.method private synthetic lambda$onLayoutChange$0()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$3;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->refreshWhileLayoutChange()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$3;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$3;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$400(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p2, Lcom/coui/appcompat/tooltips/a;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/tooltips/a;-><init>(Lcom/coui/appcompat/tooltips/COUIToolTips$3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "refreshWhileLayoutChange fail,e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIToolTips"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
