.class public Lh6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/c;


# instance fields
.field private final a:Lh6/g;

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Lg6/c;

.field private final d:Lg6/d;

.field private final e:Lg6/f;

.field private final f:Lg6/f;

.field private final g:Ljava/lang/String;

.field private final h:Lg6/b;

.field private final i:Lg6/b;

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lh6/g;Landroid/graphics/Path$FillType;Lg6/c;Lg6/d;Lg6/f;Lg6/f;Lg6/b;Lg6/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh6/e;->a:Lh6/g;

    iput-object p3, p0, Lh6/e;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lh6/e;->c:Lg6/c;

    iput-object p5, p0, Lh6/e;->d:Lg6/d;

    iput-object p6, p0, Lh6/e;->e:Lg6/f;

    iput-object p7, p0, Lh6/e;->f:Lg6/f;

    iput-object p1, p0, Lh6/e;->g:Ljava/lang/String;

    iput-object p8, p0, Lh6/e;->h:Lg6/b;

    iput-object p9, p0, Lh6/e;->i:Lg6/b;

    iput-boolean p10, p0, Lh6/e;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;)Lc6/c;
    .locals 1

    new-instance v0, Lc6/h;

    invoke-direct {v0, p1, p2, p3, p0}, Lc6/h;-><init>(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;Lh6/e;)V

    return-object v0
.end method

.method public b()Lg6/f;
    .locals 0

    iget-object p0, p0, Lh6/e;->f:Lg6/f;

    return-object p0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Lh6/e;->b:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public d()Lg6/c;
    .locals 0

    iget-object p0, p0, Lh6/e;->c:Lg6/c;

    return-object p0
.end method

.method public e()Lh6/g;
    .locals 0

    iget-object p0, p0, Lh6/e;->a:Lh6/g;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh6/e;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lg6/d;
    .locals 0

    iget-object p0, p0, Lh6/e;->d:Lg6/d;

    return-object p0
.end method

.method public h()Lg6/f;
    .locals 0

    iget-object p0, p0, Lh6/e;->e:Lg6/f;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lh6/e;->j:Z

    return p0
.end method
