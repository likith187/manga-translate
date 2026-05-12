.class public Ll/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/i$a;
    }
.end annotation


# static fields
.field private static u:I = 0x1


# instance fields
.field public a:Z

.field private b:Ljava/lang/String;

.field public c:I

.field f:I

.field public h:I

.field public i:F

.field public j:Z

.field k:[F

.field l:[F

.field m:Ll/i$a;

.field n:[Ll/b;

.field o:I

.field public p:I

.field q:Z

.field r:I

.field s:F

.field t:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ll/i$a;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Ll/i;->c:I

    iput p2, p0, Ll/i;->f:I

    const/4 v0, 0x0

    iput v0, p0, Ll/i;->h:I

    iput-boolean v0, p0, Ll/i;->j:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    iput-object v2, p0, Ll/i;->k:[F

    new-array v1, v1, [F

    iput-object v1, p0, Ll/i;->l:[F

    const/16 v1, 0x10

    new-array v1, v1, [Ll/b;

    iput-object v1, p0, Ll/i;->n:[Ll/b;

    iput v0, p0, Ll/i;->o:I

    iput v0, p0, Ll/i;->p:I

    iput-boolean v0, p0, Ll/i;->q:Z

    iput p2, p0, Ll/i;->r:I

    const/4 p2, 0x0

    iput p2, p0, Ll/i;->s:F

    const/4 p2, 0x0

    iput-object p2, p0, Ll/i;->t:Ljava/util/HashSet;

    iput-object p1, p0, Ll/i;->m:Ll/i$a;

    return-void
.end method

.method static c()V
    .locals 1

    sget v0, Ll/i;->u:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ll/i;->u:I

    return-void
.end method


# virtual methods
.method public final a(Ll/b;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ll/i;->o:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ll/i;->n:[Ll/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ll/i;->n:[Ll/b;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/b;

    iput-object v0, p0, Ll/i;->n:[Ll/b;

    :cond_2
    iget-object v0, p0, Ll/i;->n:[Ll/b;

    iget v1, p0, Ll/i;->o:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ll/i;->o:I

    return-void
.end method

.method public b(Ll/i;)I
    .locals 0

    iget p0, p0, Ll/i;->c:I

    iget p1, p1, Ll/i;->c:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ll/i;

    invoke-virtual {p0, p1}, Ll/i;->b(Ll/i;)I

    move-result p0

    return p0
.end method

.method public final d(Ll/b;)V
    .locals 4

    iget v0, p0, Ll/i;->o:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Ll/i;->n:[Ll/b;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Ll/i;->n:[Ll/b;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_1

    :cond_0
    iget p1, p0, Ll/i;->o:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ll/i;->o:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Ll/i;->b:Ljava/lang/String;

    sget-object v1, Ll/i$a;->UNKNOWN:Ll/i$a;

    iput-object v1, p0, Ll/i;->m:Ll/i$a;

    const/4 v1, 0x0

    iput v1, p0, Ll/i;->h:I

    const/4 v2, -0x1

    iput v2, p0, Ll/i;->c:I

    iput v2, p0, Ll/i;->f:I

    const/4 v3, 0x0

    iput v3, p0, Ll/i;->i:F

    iput-boolean v1, p0, Ll/i;->j:Z

    iput-boolean v1, p0, Ll/i;->q:Z

    iput v2, p0, Ll/i;->r:I

    iput v3, p0, Ll/i;->s:F

    iget v2, p0, Ll/i;->o:I

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Ll/i;->n:[Ll/b;

    aput-object v0, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Ll/i;->o:I

    iput v1, p0, Ll/i;->p:I

    iput-boolean v1, p0, Ll/i;->a:Z

    iget-object p0, p0, Ll/i;->l:[F

    invoke-static {p0, v3}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public f(Ll/d;F)V
    .locals 3

    iput p2, p0, Ll/i;->i:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Ll/i;->j:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Ll/i;->q:Z

    const/4 v0, -0x1

    iput v0, p0, Ll/i;->r:I

    const/4 v1, 0x0

    iput v1, p0, Ll/i;->s:F

    iget v1, p0, Ll/i;->o:I

    iput v0, p0, Ll/i;->f:I

    move v0, p2

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Ll/i;->n:[Ll/b;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p0, p2}, Ll/b;->A(Ll/d;Ll/i;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, Ll/i;->o:I

    return-void
.end method

.method public g(Ll/i$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll/i;->m:Ll/i$a;

    return-void
.end method

.method public final h(Ll/d;Ll/b;)V
    .locals 4

    iget v0, p0, Ll/i;->o:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Ll/i;->n:[Ll/b;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Ll/b;->B(Ll/d;Ll/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Ll/i;->o:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ll/i;->b:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll/i;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ll/i;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
