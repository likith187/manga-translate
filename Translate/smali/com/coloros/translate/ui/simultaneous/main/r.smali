.class public final synthetic Lcom/coloros/translate/ui/simultaneous/main/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/r;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/r;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->j(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
