.class public Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;
.super Lcom/coui/appcompat/preference/COUIJumpPreference;
.source "SourceFile"


# instance fields
.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUIJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 4
    sget p3, Lcom/support/preference/R$attr;->couiJumpPreferenceStyle:I

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic h(Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;->onBindViewHolder$lambda$0(Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pressFeedbackHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "event"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;->rootView:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p3, 0x3

    if-eq p0, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->executeFeedbackAnimator(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->executeFeedbackAnimator(Z)V

    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method protected final getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;->rootView:Landroid/view/View;

    new-instance p1, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    iget-object v0, p0, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;->rootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;->rootView:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/coui/appcompat/card/c;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/card/c;-><init>(Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;->rootView:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected final setRootView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;->rootView:Landroid/view/View;

    return-void
.end method
