.class public Ld7/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field c:Ljava/lang/Object;

.field public final d:La7/e;

.field public final e:La7/e;

.field public final f:La7/e;

.field public final g:La7/e;

.field final h:Ld7/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ld7/n;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ld7/n;->a:F

    .line 4
    iput v0, p0, Ld7/n;->b:F

    .line 5
    new-instance v0, La7/e;

    invoke-direct {v0}, La7/e;-><init>()V

    iput-object v0, p0, Ld7/n;->d:La7/e;

    .line 6
    new-instance v0, La7/e;

    invoke-direct {v0}, La7/e;-><init>()V

    iput-object v0, p0, Ld7/n;->e:La7/e;

    .line 7
    new-instance v0, La7/e;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, La7/e;-><init>(FF)V

    iput-object v0, p0, Ld7/n;->f:La7/e;

    .line 8
    new-instance v0, La7/e;

    invoke-direct {v0}, La7/e;-><init>()V

    iput-object v0, p0, Ld7/n;->g:La7/e;

    .line 9
    new-instance v0, Ld7/m;

    invoke-direct {v0}, Ld7/m;-><init>()V

    iput-object v0, p0, Ld7/n;->h:Ld7/m;

    .line 10
    iput-object p1, p0, Ld7/n;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ld7/m;
    .locals 0

    iget-object p0, p0, Ld7/n;->h:Ld7/m;

    return-object p0
.end method

.method public b(FF)Ld7/n;
    .locals 0

    iput p1, p0, Ld7/n;->a:F

    iput p2, p0, Ld7/n;->b:F

    return-object p0
.end method

.method public c(FF)Ld7/n;
    .locals 1

    iget-object v0, p0, Ld7/n;->e:La7/e;

    invoke-virtual {v0, p1, p2}, La7/e;->d(FF)La7/e;

    return-object p0
.end method

.method public d(FF)Ld7/n;
    .locals 1

    iget-object v0, p0, Ld7/n;->f:La7/e;

    invoke-virtual {v0, p1, p2}, La7/e;->d(FF)La7/e;

    return-object p0
.end method

.method public e(FF)V
    .locals 0

    iget-object p0, p0, Ld7/n;->g:La7/e;

    invoke-virtual {p0, p1, p2}, La7/e;->d(FF)La7/e;

    return-void
.end method

.method public f(FF)V
    .locals 0

    iget-object p0, p0, Ld7/n;->h:Ld7/m;

    iput p1, p0, Ld7/m;->a:F

    iput p2, p0, Ld7/m;->b:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIItem{mTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld7/n;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size=( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld7/n;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld7/n;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "), startPos =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld7/n;->e:La7/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startVel =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld7/n;->g:La7/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
