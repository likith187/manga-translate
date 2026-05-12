.class public final synthetic Lcom/coui/appcompat/card/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;

.field public final synthetic b:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/card/c;->a:Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;

    iput-object p2, p0, Lcom/coui/appcompat/card/c;->b:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/card/c;->a:Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;

    iget-object p0, p0, Lcom/coui/appcompat/card/c;->b:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-static {v0, p0, p1, p2}, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;->h(Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
