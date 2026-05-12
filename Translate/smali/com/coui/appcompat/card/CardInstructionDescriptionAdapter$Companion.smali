.class public final Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAnimViewLayoutParam(Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;Landroid/view/ViewGroup$LayoutParams;II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;->getAnimViewLayoutParam(Landroid/view/ViewGroup$LayoutParams;II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private final getAnimViewLayoutParam(Landroid/view/ViewGroup$LayoutParams;II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    if-eqz p1, :cond_1

    instance-of p0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p0, -0x2

    invoke-direct {p1, p0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_1
    const/4 p0, 0x1

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_2
    return-object p1
.end method

.method static synthetic getAnimViewLayoutParam$default(Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;Landroid/view/ViewGroup$LayoutParams;IIILjava/lang/Object;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapter$Companion;->getAnimViewLayoutParam(Landroid/view/ViewGroup$LayoutParams;II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method
