.class Le7/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le7/a$c;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Le7/a$c;


# direct methods
.method constructor <init>(Le7/a$c;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Le7/a$c$a;->b:Le7/a$c;

    iput-object p2, p0, Le7/a$c$a;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    sget-boolean v0, Lf7/a;->a:Z

    const-string v1, "DownloadManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange run, start! mPackageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le7/a$c$a;->b:Le7/a$c;

    iget-object v2, v2, Le7/a$c;->a:Le7/a;

    invoke-static {v2}, Le7/a;->d(Le7/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/uri = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le7/a$c$a;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lf7/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Le7/a$c$a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_d

    iget-object v0, p0, Le7/a$c$a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "insert"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "delete"

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v4

    goto :goto_0

    :cond_3
    const-string v2, "timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_0
    iget-object v0, p0, Le7/a$c$a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lf7/a;->a:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChange run, changeType = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lf7/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_b

    array-length v3, v0

    if-gtz v3, :cond_5

    goto/16 :goto_4

    :cond_5
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_6

    aget-object v5, v0, v3

    const/16 v6, 0x7c

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    new-instance v7, Lt1/a;

    invoke-direct {v7}, Lt1/a;-><init>()V

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lt1/a;->a:J

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lt1/a;->s:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Le7/a$c$a;->b:Le7/a$c;

    iget-object v0, v0, Le7/a$c;->a:Le7/a;

    invoke-static {v0}, Le7/a;->c(Le7/a;)Le7/b;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Le7/a$c$a;->b:Le7/a$c;

    iget-object p0, p0, Le7/a$c;->a:Le7/a;

    invoke-static {p0}, Le7/a;->c(Le7/a;)Le7/b;

    move-result-object p0

    invoke-interface {p0, v2}, Le7/b;->b(Ljava/util/List;)V

    goto/16 :goto_5

    :cond_7
    const-string p0, "onChange return mDownloadStatesCallback  is null"

    invoke-static {v1, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    array-length v3, v0

    new-array v3, v3, [J

    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_a

    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-wide v5, v3, v4

    sget-boolean v5, Lf7/a;->a:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onChange run, split i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/ id ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lf7/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    iget-object v0, p0, Le7/a$c$a;->b:Le7/a$c;

    iget-object v0, v0, Le7/a$c;->a:Le7/a;

    invoke-virtual {v0, v3}, Le7/a;->j([J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    iget-object p0, p0, Le7/a$c$a;->b:Le7/a$c;

    invoke-static {p0, v0, v2}, Le7/a$c;->a(Le7/a$c;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    :goto_4
    const-string p0, "onChange error no valid id"

    invoke-static {v1, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange type error uriString = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    const-string p0, "onChange run, pathSegments.size <= 2, uri has\'t downloadid"

    invoke-static {v1, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_5
    return-void
.end method
