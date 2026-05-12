.class public final Lcom/coloros/translate/ui/texttranslation/a;
.super Landroid/view/ActionMode$Callback2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/texttranslation/a$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/coloros/translate/ui/texttranslation/a$a;


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/texttranslation/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/texttranslation/a;->b:Lcom/coloros/translate/ui/texttranslation/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "targetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/a;->a:Landroid/widget/TextView;

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/a;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/a;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const v0, 0x1020021

    if-ne p2, v0, :cond_5

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/a;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/coloros/translate/widget/k;->c:Lcom/coloros/translate/widget/k$b;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/k$b;->a()Lcom/coloros/translate/widget/k;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/a;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/coloros/translate/R$string;->text_has_been_copied:I

    invoke-virtual {v0, p0, p2, v1}, Lcom/coloros/translate/widget/k;->d(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    if-eqz p2, :cond_0

    const p0, 0x1020021

    invoke-interface {p2, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result p1

    sget v1, Lcom/coloros/translate/R$string;->copy_talk:I

    invoke-interface {p2, v0, p0, p1, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
