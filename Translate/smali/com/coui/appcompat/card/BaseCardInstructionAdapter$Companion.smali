.class public final Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/card/BaseCardInstructionAdapter;
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
    invoke-direct {p0}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateContentAndVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2, p1}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$Companion;->updateContentAndVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void
.end method

.method public final updateContentAndVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    .line 3
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 5
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
