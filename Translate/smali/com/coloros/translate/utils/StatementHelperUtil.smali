.class public final Lcom/coloros/translate/utils/StatementHelperUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/utils/StatementHelperUtil$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/StatementHelperUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/utils/StatementHelperUtil;

    invoke-direct {v0}, Lcom/coloros/translate/utils/StatementHelperUtil;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/StatementHelperUtil;->INSTANCE:Lcom/coloros/translate/utils/StatementHelperUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/text/SpannableStringBuilder;
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/o;->q()V

    :cond_0
    check-cast v2, Ljava/lang/String;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, v2

    invoke-static/range {v4 .. v9}, Lkotlin/text/r;->W(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSpannableString startIndex is -1,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist in fullText"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "StatementHelperUtil"

    invoke-virtual {v1, v4, v2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/coloros/translate/utils/StatementHelperUtil$createSpannableString$1$1$1;

    invoke-direct {v2, p0, p3, v1}, Lcom/coloros/translate/utils/StatementHelperUtil$createSpannableString$1$1$1;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    const/16 v1, 0x21

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method
