.class public Le3/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lh3/a;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le3/d$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lw2/d;Le3/d$b;)Le3/d$a;
    .locals 1

    iget-object v0, p0, Le3/d$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b()Le3/d;
    .locals 2

    iget-object v0, p0, Le3/d$a;->a:Lh3/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le3/d$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {}, Lw2/d;->values()[Lw2/d;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Le3/d$a;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Le3/d$a;->b:Ljava/util/Map;

    iget-object p0, p0, Le3/d$a;->a:Lh3/a;

    invoke-static {p0, v0}, Le3/d;->d(Lh3/a;Ljava/util/Map;)Le3/d;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not all priorities have been configured"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "missing required property: clock"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Lh3/a;)Le3/d$a;
    .locals 0

    iput-object p1, p0, Le3/d$a;->a:Lh3/a;

    return-object p0
.end method
