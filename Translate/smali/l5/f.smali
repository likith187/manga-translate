.class Ll5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/epona/d$a;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:I

.field private final c:Lcom/heytap/epona/Request;

.field private final d:Lcom/heytap/epona/a;

.field private final e:Z


# direct methods
.method constructor <init>(Ljava/util/List;ILcom/heytap/epona/Request;Lcom/heytap/epona/a;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll5/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p2, p0, Ll5/f;->b:I

    iput-object p3, p0, Ll5/f;->c:Lcom/heytap/epona/Request;

    iput-object p4, p0, Ll5/f;->d:Lcom/heytap/epona/a;

    iput-boolean p5, p0, Ll5/f;->e:Z

    return-void
.end method

.method private d(I)Ll5/f;
    .locals 7

    new-instance v6, Ll5/f;

    iget-object v1, p0, Ll5/f;->a:Ljava/util/List;

    iget-object v3, p0, Ll5/f;->c:Lcom/heytap/epona/Request;

    iget-object v4, p0, Ll5/f;->d:Lcom/heytap/epona/a;

    iget-boolean v5, p0, Ll5/f;->e:Z

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Ll5/f;-><init>(Ljava/util/List;ILcom/heytap/epona/Request;Lcom/heytap/epona/a;Z)V

    return-object v6
.end method


# virtual methods
.method public a()Lcom/heytap/epona/Request;
    .locals 0

    iget-object p0, p0, Ll5/f;->c:Lcom/heytap/epona/Request;

    return-object p0
.end method

.method public b()V
    .locals 2

    iget v0, p0, Ll5/f;->b:I

    iget-object v1, p0, Ll5/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Ll5/f;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ll5/f;->d(I)Ll5/f;

    move-result-object v0

    iget-object v1, p0, Ll5/f;->a:Ljava/util/List;

    iget p0, p0, Ll5/f;->b:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heytap/epona/d;

    invoke-interface {p0, v0}, Lcom/heytap/epona/d;->a(Lcom/heytap/epona/d$a;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ll5/f;->d:Lcom/heytap/epona/a;

    invoke-static {}, Lcom/heytap/epona/Response;->b()Lcom/heytap/epona/Response;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/heytap/epona/a;->onReceive(Lcom/heytap/epona/Response;)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Ll5/f;->e:Z

    return p0
.end method

.method public callback()Lcom/heytap/epona/a;
    .locals 0

    iget-object p0, p0, Ll5/f;->d:Lcom/heytap/epona/a;

    return-object p0
.end method
