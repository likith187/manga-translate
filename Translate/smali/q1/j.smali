.class public Lq1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm1/a;

.field private final b:Lm1/b;

.field private final c:Lm1/b;

.field private final d:Lm1/b;

.field private final e:Lm1/b;


# direct methods
.method constructor <init>(Lm1/a;Lm1/b;Lm1/b;Lm1/b;Lm1/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/j;->a:Lm1/a;

    iput-object p2, p0, Lq1/j;->b:Lm1/b;

    iput-object p3, p0, Lq1/j;->c:Lm1/b;

    iput-object p4, p0, Lq1/j;->d:Lm1/b;

    iput-object p5, p0, Lq1/j;->e:Lm1/b;

    return-void
.end method


# virtual methods
.method public a()Lm1/a;
    .locals 0

    iget-object p0, p0, Lq1/j;->a:Lm1/a;

    return-object p0
.end method

.method public b()Lm1/b;
    .locals 0

    iget-object p0, p0, Lq1/j;->c:Lm1/b;

    return-object p0
.end method

.method public c()Lm1/b;
    .locals 0

    iget-object p0, p0, Lq1/j;->d:Lm1/b;

    return-object p0
.end method

.method public d()Lm1/b;
    .locals 0

    iget-object p0, p0, Lq1/j;->b:Lm1/b;

    return-object p0
.end method

.method public e()Lm1/b;
    .locals 0

    iget-object p0, p0, Lq1/j;->e:Lm1/b;

    return-object p0
.end method
