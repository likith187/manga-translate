.class public final Lcom/coloros/translate/utils/StatementHelperUtil$createSpannableString$1$1$1;
.super Lcom/coui/appcompat/statement/COUIStatementClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/utils/StatementHelperUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    iput-object p2, p0, Lcom/coloros/translate/utils/StatementHelperUtil$createSpannableString$1$1$1;->a:Ljava/util/List;

    iput p3, p0, Lcom/coloros/translate/utils/StatementHelperUtil$createSpannableString$1$1$1;->b:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/statement/COUIStatementClickableSpan;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/statement/COUIStatementClickableSpan;->onClick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coloros/translate/utils/StatementHelperUtil$createSpannableString$1$1$1;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/coloros/translate/utils/StatementHelperUtil$createSpannableString$1$1$1;->b:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/utils/StatementHelperUtil$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coloros/translate/utils/StatementHelperUtil$a;->a()V

    :cond_0
    return-void
.end method
