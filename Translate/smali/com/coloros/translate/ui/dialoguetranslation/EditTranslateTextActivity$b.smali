.class public final Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity$b;->a:Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity$b;->a:Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->i0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)Landroid/view/MenuItem;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity$b;->a:Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->i0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity$b;->a:Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->h0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "EditTranslateTextActivity"

    const-string p2, "addTextChangedListener beforeTextChanged"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "EditTranslateTextActivity"

    const-string p2, "addTextChangedListener onTextChanged"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
