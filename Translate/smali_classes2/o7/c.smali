.class public Lo7/c;
.super Lo7/f;
.source "SourceFile"


# instance fields
.field protected g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo7/f;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lo7/c;->g:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lo7/c;->h:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lo7/c;->i:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lo7/c;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lo7/f;-><init>(Landroid/content/Context;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lo7/c;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lo7/c;->j:I

    .line 9
    iput-object p3, p0, Lo7/c;->h:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lo7/c;->i:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p2}, Lo7/f;->k(Ljava/lang/String;)V

    .line 12
    const-string p1, "logTag"

    iget-object p2, p0, Lo7/c;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lo7/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string p1, "eventID"

    iget-object p2, p0, Lo7/c;->i:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lo7/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public g()I
    .locals 0

    const/16 p0, 0x3ee

    return p0
.end method

.method public l()I
    .locals 0

    iget p0, p0, Lo7/c;->j:I

    return p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo7/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo7/c;->g:Ljava/lang/String;

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo7/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lo7/c;->i:Ljava/lang/String;

    const-string v0, "eventID"

    invoke-virtual {p0, v0, p1}, Lo7/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q(Ljava/util/Map;)V
    .locals 1

    invoke-static {p1}, Ls7/e;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo7/c;->g:Ljava/lang/String;

    const-string v0, "logMap"

    invoke-virtual {p0, v0, p1}, Lo7/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lo7/c;->h:Ljava/lang/String;

    const-string v0, "logTag"

    invoke-virtual {p0, v0, p1}, Lo7/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " type is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo7/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo7/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventID is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo7/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " map is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo7/c;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
