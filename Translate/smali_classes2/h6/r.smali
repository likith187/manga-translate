.class public Lh6/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh6/r$c;,
        Lh6/r$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lg6/b;

.field private final c:Ljava/util/List;

.field private final d:Lg6/a;

.field private final e:Lg6/d;

.field private final f:Lg6/b;

.field private final g:Lh6/r$b;

.field private final h:Lh6/r$c;

.field private final i:F

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg6/b;Ljava/util/List;Lg6/a;Lg6/d;Lg6/b;Lh6/r$b;Lh6/r$c;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/r;->a:Ljava/lang/String;

    iput-object p2, p0, Lh6/r;->b:Lg6/b;

    iput-object p3, p0, Lh6/r;->c:Ljava/util/List;

    iput-object p4, p0, Lh6/r;->d:Lg6/a;

    iput-object p5, p0, Lh6/r;->e:Lg6/d;

    iput-object p6, p0, Lh6/r;->f:Lg6/b;

    iput-object p7, p0, Lh6/r;->g:Lh6/r$b;

    iput-object p8, p0, Lh6/r;->h:Lh6/r$c;

    iput p9, p0, Lh6/r;->i:F

    iput-boolean p10, p0, Lh6/r;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;)Lc6/c;
    .locals 0

    new-instance p2, Lc6/t;

    invoke-direct {p2, p1, p3, p0}, Lc6/t;-><init>(Lcom/oplus/anim/o;Li6/b;Lh6/r;)V

    return-object p2
.end method

.method public b()Lh6/r$b;
    .locals 0

    iget-object p0, p0, Lh6/r;->g:Lh6/r$b;

    return-object p0
.end method

.method public c()Lg6/a;
    .locals 0

    iget-object p0, p0, Lh6/r;->d:Lg6/a;

    return-object p0
.end method

.method public d()Lg6/b;
    .locals 0

    iget-object p0, p0, Lh6/r;->b:Lg6/b;

    return-object p0
.end method

.method public e()Lh6/r$c;
    .locals 0

    iget-object p0, p0, Lh6/r;->h:Lh6/r$c;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lh6/r;->c:Ljava/util/List;

    return-object p0
.end method

.method public g()F
    .locals 0

    iget p0, p0, Lh6/r;->i:F

    return p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh6/r;->a:Ljava/lang/String;

    return-object p0
.end method

.method public i()Lg6/d;
    .locals 0

    iget-object p0, p0, Lh6/r;->e:Lg6/d;

    return-object p0
.end method

.method public j()Lg6/b;
    .locals 0

    iget-object p0, p0, Lh6/r;->f:Lg6/b;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lh6/r;->j:Z

    return p0
.end method
