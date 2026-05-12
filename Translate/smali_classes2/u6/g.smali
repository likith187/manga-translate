.class Lu6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/epona/f$a;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:I

.field private final c:Lcom/oplus/epona/Request;

.field private final d:Lcom/oplus/epona/Call$Callback;

.field private final e:Z


# direct methods
.method constructor <init>(Ljava/util/List;ILcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/g;->a:Ljava/util/List;

    iput p2, p0, Lu6/g;->b:I

    iput-object p3, p0, Lu6/g;->c:Lcom/oplus/epona/Request;

    iput-object p4, p0, Lu6/g;->d:Lcom/oplus/epona/Call$Callback;

    iput-boolean p5, p0, Lu6/g;->e:Z

    return-void
.end method

.method private d(I)Lu6/g;
    .locals 7

    new-instance v6, Lu6/g;

    iget-object v1, p0, Lu6/g;->a:Ljava/util/List;

    iget-object v3, p0, Lu6/g;->c:Lcom/oplus/epona/Request;

    iget-object v4, p0, Lu6/g;->d:Lcom/oplus/epona/Call$Callback;

    iget-boolean v5, p0, Lu6/g;->e:Z

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lu6/g;-><init>(Ljava/util/List;ILcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;Z)V

    return-object v6
.end method


# virtual methods
.method public a()Lcom/oplus/epona/Request;
    .locals 0

    iget-object p0, p0, Lu6/g;->c:Lcom/oplus/epona/Request;

    return-object p0
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lu6/g;->b:I

    iget-object v1, p0, Lu6/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lu6/g;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lu6/g;->d(I)Lu6/g;

    move-result-object v0

    iget-object v1, p0, Lu6/g;->a:Ljava/util/List;

    iget p0, p0, Lu6/g;->b:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/epona/f;

    invoke-interface {p0, v0}, Lcom/oplus/epona/f;->a(Lcom/oplus/epona/f$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lu6/g;->c:Lcom/oplus/epona/Request;

    invoke-virtual {v1}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu6/g;->c:Lcom/oplus/epona/Request;

    invoke-virtual {v1}, Lcom/oplus/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be proceeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lu6/g;->d:Lcom/oplus/epona/Call$Callback;

    invoke-static {v0}, Lcom/oplus/epona/Response;->c(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lu6/g;->e:Z

    return p0
.end method

.method public callback()Lcom/oplus/epona/Call$Callback;
    .locals 0

    iget-object p0, p0, Lu6/g;->d:Lcom/oplus/epona/Call$Callback;

    return-object p0
.end method
