.class public Ln1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/i$a;
    }
.end annotation


# instance fields
.field private final a:Ln1/i$a;

.field private final b:Lm1/h;

.field private final c:Lm1/d;

.field private final d:Z


# direct methods
.method public constructor <init>(Ln1/i$a;Lm1/h;Lm1/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/i;->a:Ln1/i$a;

    iput-object p2, p0, Ln1/i;->b:Lm1/h;

    iput-object p3, p0, Ln1/i;->c:Lm1/d;

    iput-boolean p4, p0, Ln1/i;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ln1/i$a;
    .locals 0

    iget-object p0, p0, Ln1/i;->a:Ln1/i$a;

    return-object p0
.end method

.method public b()Lm1/h;
    .locals 0

    iget-object p0, p0, Ln1/i;->b:Lm1/h;

    return-object p0
.end method

.method public c()Lm1/d;
    .locals 0

    iget-object p0, p0, Ln1/i;->c:Lm1/d;

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Ln1/i;->d:Z

    return p0
.end method
