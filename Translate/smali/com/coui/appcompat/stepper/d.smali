.class public final synthetic Lcom/coui/appcompat/stepper/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/stepper/LongPressProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/stepper/LongPressProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/d;->a:Lcom/coui/appcompat/stepper/LongPressProxy;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/stepper/d;->a:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/stepper/LongPressProxy;->a(Lcom/coui/appcompat/stepper/LongPressProxy;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
