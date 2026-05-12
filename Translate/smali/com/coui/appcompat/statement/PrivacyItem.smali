.class public final Lcom/coui/appcompat/statement/PrivacyItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final summaryText:Ljava/lang/String;

.field private final titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(titleId)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "context.getString(summaryId)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/coui/appcompat/statement/PrivacyItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "titleText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summaryText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/statement/PrivacyItem;->titleText:Ljava/lang/String;

    iput-object p2, p0, Lcom/coui/appcompat/statement/PrivacyItem;->summaryText:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/coui/appcompat/statement/PrivacyItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/coui/appcompat/statement/PrivacyItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/statement/PrivacyItem;->titleText:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/statement/PrivacyItem;->summaryText:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/statement/PrivacyItem;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/coui/appcompat/statement/PrivacyItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/PrivacyItem;->titleText:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/PrivacyItem;->summaryText:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/coui/appcompat/statement/PrivacyItem;
    .locals 0

    const-string p0, "titleText"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "summaryText"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coui/appcompat/statement/PrivacyItem;

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/statement/PrivacyItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/coui/appcompat/statement/PrivacyItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/coui/appcompat/statement/PrivacyItem;

    iget-object v1, p0, Lcom/coui/appcompat/statement/PrivacyItem;->titleText:Ljava/lang/String;

    iget-object v3, p1, Lcom/coui/appcompat/statement/PrivacyItem;->titleText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/statement/PrivacyItem;->summaryText:Ljava/lang/String;

    iget-object p1, p1, Lcom/coui/appcompat/statement/PrivacyItem;->summaryText:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getSummaryText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/PrivacyItem;->summaryText:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitleText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/PrivacyItem;->titleText:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/statement/PrivacyItem;->titleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/coui/appcompat/statement/PrivacyItem;->summaryText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacyItem(titleText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/statement/PrivacyItem;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", summaryText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/statement/PrivacyItem;->summaryText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
