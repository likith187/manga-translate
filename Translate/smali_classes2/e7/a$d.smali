.class public Le7/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:[J

.field private b:[Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:[Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le7/a$d;->a:[J

    iput-object v0, p0, Le7/a$d;->b:[Ljava/lang/String;

    iput-object v0, p0, Le7/a$d;->c:Ljava/lang/Integer;

    iput-object v0, p0, Le7/a$d;->d:Ljava/lang/String;

    const-string v1, "lastmod"

    iput-object v1, p0, Le7/a$d;->e:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Le7/a$d;->f:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Le7/a$d;->g:Z

    iput-boolean v1, p0, Le7/a$d;->h:Z

    iput-object v0, p0, Le7/a$d;->i:[Ljava/lang/String;

    iput-object v0, p0, Le7/a$d;->j:Ljava/lang/String;

    iput-object v0, p0, Le7/a$d;->k:[Ljava/lang/String;

    return-void
.end method

.method private f()Z
    .locals 0

    invoke-static {}, Le7/a;->a()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private g(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private p(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "status"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private q()V
    .locals 5

    iget-object v0, p0, Le7/a$d;->i:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Le7/a$d;->i:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Le7/a$d;->i:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le7/a$d;->i:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Le7/a$d;->i:[Ljava/lang/String;

    aget-object v3, v2, v0

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Le7/a$d;->i:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le7/a$d;->i:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Le7/a$d;->i:[Ljava/lang/String;

    aget-object v4, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;[[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    array-length p0, p1

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    array-length v3, v3

    add-int/2addr p0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length p1, p1

    array-length v0, p2

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    array-length v4, v3

    invoke-static {v3, v1, p0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr p1, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le7/a$d;->i:[Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Le7/a$d;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Le7/a;->h:[Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Le7/a;->i:[Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Le7/a$d;->a:[J

    if-eqz v1, :cond_0

    invoke-static {v1}, Le7/a;->p([J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Le7/a$d;->k:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Le7/a;->r([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v1, Lf7/a;->a:Z

    const-string v2, "DownloadManager"

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelection , mPackageNames = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le7/a$d;->b:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", this = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lf7/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Le7/a$d;->b:[Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {v1}, Le7/a;->q([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Le7/a$d;->c:Ljava/lang/Integer;

    const-string v3, " AND "

    if-eqz v1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Le7/a$d;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const-string v5, "="

    if-eqz v4, :cond_4

    const/16 v4, 0xbe

    invoke-direct {p0, v5, v4}, Le7/a$d;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v4, p0, Le7/a$d;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    const/16 v4, 0xc0

    invoke-direct {p0, v5, v4}, Le7/a$d;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v4, p0, Le7/a$d;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    const/16 v4, 0xc1

    invoke-direct {p0, v5, v4}, Le7/a$d;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xc2

    invoke-direct {p0, v5, v4}, Le7/a$d;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xc3

    invoke-direct {p0, v5, v4}, Le7/a$d;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xc4

    invoke-direct {p0, v5, v4}, Le7/a$d;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xc6

    invoke-direct {p0, v5, v4}, Le7/a$d;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v4, p0, Le7/a$d;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_7

    const/16 v4, 0xc8

    invoke-direct {p0, v5, v4}, Le7/a$d;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v4, p0, Le7/a$d;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    const-string v6, ")"

    const-string v7, "("

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ">="

    const/16 v9, 0x190

    invoke-direct {p0, v8, v9}, Le7/a$d;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "<"

    const/16 v9, 0x258

    invoke-direct {p0, v8, v9}, Le7/a$d;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xc7

    invoke-direct {p0, v5, v4}, Le7/a$d;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " OR "

    invoke-direct {p0, v5, v1}, Le7/a$d;->g(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-boolean v1, p0, Le7/a$d;->h:Z

    if-eqz v1, :cond_a

    const-string v1, "is_visible_in_downloads_ui != \'0\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    iget-boolean v1, p0, Le7/a$d;->g:Z

    if-eqz v1, :cond_b

    const-string v1, "is_visible_in_downloads_ui = \'1\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_0
    const-string v1, "deleted != \'1\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Le7/a$d;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le7/a$d;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-direct {p0, v3, v0}, Le7/a$d;->g(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lf7/a;->a:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSelection. selection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lf7/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-object p0
.end method

.method public d()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Le7/a$d;->a:[J

    if-eqz v3, :cond_0

    invoke-static {v3}, Le7/a;->n([J)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Le7/a$d;->k:[Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v2, v3

    :cond_1
    iget-object v3, p0, Le7/a$d;->b:[Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v0, v3

    :cond_2
    filled-new-array {v2, v0}, [[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Le7/a$d;->a([Ljava/lang/String;[[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le7/a;->f([Ljava/lang/String;)V

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget v0, p0, Le7/a$d;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ASC"

    goto :goto_0

    :cond_0
    const-string v0, "DESC"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Le7/a$d;->e:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/lang/String;I)Le7/a$d;
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid direction: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "lastmod"

    if-eqz v0, :cond_2

    iput-object v1, p0, Le7/a$d;->e:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, p0, Le7/a$d;->e:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "total_bytes"

    iput-object p1, p0, Le7/a$d;->e:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v0, p0, Le7/a$d;->e:Ljava/lang/String;

    :goto_1
    iput p2, p0, Le7/a$d;->f:I

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot order by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method i(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Le7/a$d;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Le7/a$d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Le7/a$d;->d()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Le7/a$d;->e()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "runQuery, occur exception. e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadManager"

    invoke-static {p1, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public varargs j([J)Le7/a$d;
    .locals 0

    iput-object p1, p0, Le7/a$d;->a:[J

    return-object p0
.end method

.method public varargs k([Ljava/lang/String;)Le7/a$d;
    .locals 0

    iput-object p1, p0, Le7/a$d;->b:[Ljava/lang/String;

    invoke-static {p1}, Le7/a;->f([Ljava/lang/String;)V

    return-object p0
.end method

.method public l(I)Le7/a$d;
    .locals 1

    and-int/lit8 v0, p1, 0x1f

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Le7/a$d;->c:Ljava/lang/Integer;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invaild status."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(Ljava/lang/String;)Le7/a$d;
    .locals 0

    iput-object p1, p0, Le7/a$d;->j:Ljava/lang/String;

    return-object p0
.end method

.method public n(Z)Le7/a$d;
    .locals 0

    iput-boolean p1, p0, Le7/a$d;->g:Z

    return-object p0
.end method

.method public varargs o([Ljava/lang/String;)Le7/a$d;
    .locals 0

    iput-object p1, p0, Le7/a$d;->i:[Ljava/lang/String;

    invoke-direct {p0}, Le7/a$d;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Le7/a$d;->q()V

    :cond_0
    return-object p0
.end method
