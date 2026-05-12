.class public abstract Landroidx/dynamicanimation/animation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/c$r;,
        Landroidx/dynamicanimation/animation/c$q;,
        Landroidx/dynamicanimation/animation/c$p;,
        Landroidx/dynamicanimation/animation/c$s;
    }
.end annotation


# static fields
.field public static final m:Landroidx/dynamicanimation/animation/c$s;

.field public static final n:Landroidx/dynamicanimation/animation/c$s;

.field public static final o:Landroidx/dynamicanimation/animation/c$s;

.field public static final p:Landroidx/dynamicanimation/animation/c$s;

.field public static final q:Landroidx/dynamicanimation/animation/c$s;

.field public static final r:Landroidx/dynamicanimation/animation/c$s;

.field public static final s:Landroidx/dynamicanimation/animation/c$s;

.field public static final t:Landroidx/dynamicanimation/animation/c$s;

.field public static final u:Landroidx/dynamicanimation/animation/c$s;

.field public static final v:Landroidx/dynamicanimation/animation/c$s;

.field public static final w:Landroidx/dynamicanimation/animation/c$s;

.field public static final x:Landroidx/dynamicanimation/animation/c$s;

.field public static final y:Landroidx/dynamicanimation/animation/c$s;

.field public static final z:Landroidx/dynamicanimation/animation/c$s;


# instance fields
.field a:F

.field b:F

.field c:Z

.field final d:Ljava/lang/Object;

.field final e:Landroidx/dynamicanimation/animation/d;

.field f:Z

.field g:F

.field h:F

.field private i:J

.field private j:F

.field private final k:Ljava/util/ArrayList;

.field private final l:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/dynamicanimation/animation/c$g;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$g;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->m:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$h;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$h;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->n:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$i;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$i;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->o:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$j;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$j;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->p:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$k;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$k;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->q:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$l;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$l;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->r:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$m;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$m;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->s:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$n;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$n;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->t:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$o;

    const-string v1, "x"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->u:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$a;

    const-string v1, "y"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->v:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$b;

    const-string v1, "z"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->w:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$c;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->x:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$d;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->y:Landroidx/dynamicanimation/animation/c$s;

    new-instance v0, Landroidx/dynamicanimation/animation/c$e;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/c$e;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/c;->z:Landroidx/dynamicanimation/animation/c$s;

    return-void
.end method

.method constructor <init>(Landroidx/dynamicanimation/animation/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/dynamicanimation/animation/c;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput v0, p0, Landroidx/dynamicanimation/animation/c;->b:F

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/c;->c:Z

    .line 5
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/c;->f:Z

    .line 6
    iput v0, p0, Landroidx/dynamicanimation/animation/c;->g:F

    neg-float v0, v0

    .line 7
    iput v0, p0, Landroidx/dynamicanimation/animation/c;->h:F

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/c;->i:J

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/c;->k:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/c;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/dynamicanimation/animation/c;->d:Ljava/lang/Object;

    .line 12
    new-instance v0, Landroidx/dynamicanimation/animation/c$f;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Landroidx/dynamicanimation/animation/c$f;-><init>(Landroidx/dynamicanimation/animation/c;Ljava/lang/String;Landroidx/dynamicanimation/animation/e;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/c;->e:Landroidx/dynamicanimation/animation/d;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    iput p1, p0, Landroidx/dynamicanimation/animation/c;->j:F

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroidx/dynamicanimation/animation/c;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 16
    iput v0, p0, Landroidx/dynamicanimation/animation/c;->b:F

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/c;->c:Z

    .line 18
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/c;->f:Z

    .line 19
    iput v0, p0, Landroidx/dynamicanimation/animation/c;->g:F

    neg-float v0, v0

    .line 20
    iput v0, p0, Landroidx/dynamicanimation/animation/c;->h:F

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/c;->i:J

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/c;->k:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/c;->l:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Landroidx/dynamicanimation/animation/c;->d:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Landroidx/dynamicanimation/animation/c;->e:Landroidx/dynamicanimation/animation/d;

    .line 26
    sget-object p1, Landroidx/dynamicanimation/animation/c;->r:Landroidx/dynamicanimation/animation/c$s;

    if-eq p2, p1, :cond_4

    sget-object p1, Landroidx/dynamicanimation/animation/c;->s:Landroidx/dynamicanimation/animation/c$s;

    if-eq p2, p1, :cond_4

    sget-object p1, Landroidx/dynamicanimation/animation/c;->t:Landroidx/dynamicanimation/animation/c$s;

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    sget-object p1, Landroidx/dynamicanimation/animation/c;->x:Landroidx/dynamicanimation/animation/c$s;

    const/high16 v0, 0x3b800000    # 0.00390625f

    if-ne p2, p1, :cond_1

    .line 28
    iput v0, p0, Landroidx/dynamicanimation/animation/c;->j:F

    goto :goto_2

    .line 29
    :cond_1
    sget-object p1, Landroidx/dynamicanimation/animation/c;->p:Landroidx/dynamicanimation/animation/c$s;

    if-eq p2, p1, :cond_3

    sget-object p1, Landroidx/dynamicanimation/animation/c;->q:Landroidx/dynamicanimation/animation/c$s;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    iput p1, p0, Landroidx/dynamicanimation/animation/c;->j:F

    goto :goto_2

    .line 31
    :cond_3
    :goto_0
    iput v0, p0, Landroidx/dynamicanimation/animation/c;->j:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 32
    iput p1, p0, Landroidx/dynamicanimation/animation/c;->j:F

    :goto_2
    return-void
.end method

.method private d(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/c;->f:Z

    invoke-static {}, Landroidx/dynamicanimation/animation/a;->d()Landroidx/dynamicanimation/animation/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/a;->g(Landroidx/dynamicanimation/animation/a$b;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/dynamicanimation/animation/c;->i:J

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/c;->c:Z

    :goto_0
    iget-object v1, p0, Landroidx/dynamicanimation/animation/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/dynamicanimation/animation/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/dynamicanimation/animation/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/c$q;

    iget v2, p0, Landroidx/dynamicanimation/animation/c;->b:F

    iget v3, p0, Landroidx/dynamicanimation/animation/c;->a:F

    invoke-interface {v1, p0, p1, v2, v3}, Landroidx/dynamicanimation/animation/c$q;->onAnimationEnd(Landroidx/dynamicanimation/animation/c;ZFF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/dynamicanimation/animation/c;->k:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/dynamicanimation/animation/c;->h(Ljava/util/ArrayList;)V

    return-void
.end method

.method private e()F
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/c;->e:Landroidx/dynamicanimation/animation/d;

    iget-object p0, p0, Landroidx/dynamicanimation/animation/c;->d:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/d;->getValue(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method private static h(Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private q()V
    .locals 3

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/c;->f:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/c;->f:Z

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/c;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/c;->e()F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/animation/c;->b:F

    :cond_0
    iget v0, p0, Landroidx/dynamicanimation/animation/c;->b:F

    iget v1, p0, Landroidx/dynamicanimation/animation/c;->g:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Landroidx/dynamicanimation/animation/c;->h:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-static {}, Landroidx/dynamicanimation/animation/a;->d()Landroidx/dynamicanimation/animation/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/a;->a(Landroidx/dynamicanimation/animation/a$b;J)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/dynamicanimation/animation/c$q;)Landroidx/dynamicanimation/animation/c;
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public b(Landroidx/dynamicanimation/animation/c$r;)Landroidx/dynamicanimation/animation/c;
    .locals 1

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/c;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/c;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/c;->d(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be canceled on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doAnimationFrame(J)Z
    .locals 4

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/c;->i:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/c;->i:J

    iget p1, p0, Landroidx/dynamicanimation/animation/c;->b:F

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/c;->l(F)V

    return v3

    :cond_0
    sub-long v0, p1, v0

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/c;->i:J

    invoke-virtual {p0, v0, v1}, Landroidx/dynamicanimation/animation/c;->r(J)Z

    move-result p1

    iget p2, p0, Landroidx/dynamicanimation/animation/c;->b:F

    iget v0, p0, Landroidx/dynamicanimation/animation/c;->g:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Landroidx/dynamicanimation/animation/c;->b:F

    iget v0, p0, Landroidx/dynamicanimation/animation/c;->h:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroidx/dynamicanimation/animation/c;->b:F

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/c;->l(F)V

    if-eqz p1, :cond_1

    invoke-direct {p0, v3}, Landroidx/dynamicanimation/animation/c;->d(Z)V

    :cond_1
    return p1
.end method

.method f()F
    .locals 1

    iget p0, p0, Landroidx/dynamicanimation/animation/c;->j:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p0, v0

    return p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/dynamicanimation/animation/c;->f:Z

    return p0
.end method

.method public i(F)Landroidx/dynamicanimation/animation/c;
    .locals 0

    iput p1, p0, Landroidx/dynamicanimation/animation/c;->g:F

    return-object p0
.end method

.method public j(F)Landroidx/dynamicanimation/animation/c;
    .locals 0

    iput p1, p0, Landroidx/dynamicanimation/animation/c;->h:F

    return-object p0
.end method

.method public k(F)Landroidx/dynamicanimation/animation/c;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Landroidx/dynamicanimation/animation/c;->j:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/c;->o(F)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method l(F)V
    .locals 3

    iget-object v0, p0, Landroidx/dynamicanimation/animation/c;->e:Landroidx/dynamicanimation/animation/d;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/c;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/dynamicanimation/animation/d;->setValue(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/c$r;

    iget v1, p0, Landroidx/dynamicanimation/animation/c;->b:F

    iget v2, p0, Landroidx/dynamicanimation/animation/c;->a:F

    invoke-interface {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/c$r;->onAnimationUpdate(Landroidx/dynamicanimation/animation/c;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/dynamicanimation/animation/c;->l:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/dynamicanimation/animation/c;->h(Ljava/util/ArrayList;)V

    return-void
.end method

.method public m(F)Landroidx/dynamicanimation/animation/c;
    .locals 0

    iput p1, p0, Landroidx/dynamicanimation/animation/c;->b:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/c;->c:Z

    return-object p0
.end method

.method public n(F)Landroidx/dynamicanimation/animation/c;
    .locals 0

    iput p1, p0, Landroidx/dynamicanimation/animation/c;->a:F

    return-object p0
.end method

.method abstract o(F)V
.end method

.method public p()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/c;->f:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/c;->q()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method abstract r(J)Z
.end method
