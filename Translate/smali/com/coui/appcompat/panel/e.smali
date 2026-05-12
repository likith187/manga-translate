.class public final synthetic Lcom/coui/appcompat/panel/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/e;->a:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iput-object p2, p0, Lcom/coui/appcompat/panel/e;->b:Landroid/view/View;

    iput-boolean p3, p0, Lcom/coui/appcompat/panel/e;->c:Z

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/e;->a:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-object v1, p0, Lcom/coui/appcompat/panel/e;->b:Landroid/view/View;

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/e;->c:Z

    invoke-static {v0, v1, p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->a(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Landroid/view/View;ZLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
