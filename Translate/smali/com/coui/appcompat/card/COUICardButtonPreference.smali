.class public final Lcom/coui/appcompat/card/COUICardButtonPreference;
.super Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/card/COUICardButtonPreference$Companion;
    }
.end annotation


# static fields
.field public static final CARD_BUTTON_TEXT_SIZE_NORMAL:F = 12.0f

.field public static final CARD_BUTTON_TEXT_SIZE_SMALL:F = 10.0f

.field public static final Companion:Lcom/coui/appcompat/card/COUICardButtonPreference$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/card/COUICardButtonPreference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/card/COUICardButtonPreference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/card/COUICardButtonPreference;->Companion:Lcom/coui/appcompat/card/COUICardButtonPreference$Companion;

    return-void
.end method

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

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/card/COUICardButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/card/COUICardButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/card/COUICardButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 7
    sget p1, Lcom/support/card/R$layout;->coui_component_card_button_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/card/COUICardButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final getAvailableWidth(Landroid/widget/TextView;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic i(Lcom/coui/appcompat/card/COUICardButtonPreference;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/card/COUICardButtonPreference;->onBindViewHolder$lambda$0(Lcom/coui/appcompat/card/COUICardButtonPreference;Landroid/widget/TextView;)V

    return-void
.end method

.method private final isOverFlowed(Landroid/widget/TextView;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "paint"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/COUICardButtonPreference;->getAvailableWidth(Landroid/widget/TextView;)I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/coui/appcompat/card/COUICardButtonPreference;Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/card/COUICardButtonPreference;->isOverFlowed(Landroid/widget/TextView;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x41200000    # 10.0f

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_0
    const/high16 p0, 0x41400000    # 12.0f

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/card/COUIPressFeedbackJumpPreference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/coui/appcompat/card/b;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/card/b;-><init>(Lcom/coui/appcompat/card/COUICardButtonPreference;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
