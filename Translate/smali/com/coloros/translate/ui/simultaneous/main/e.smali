.class public final synthetic Lcom/coloros/translate/ui/simultaneous/main/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/e;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/e;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/i;->b(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
