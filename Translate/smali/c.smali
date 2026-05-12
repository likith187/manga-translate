.class public final Lc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lc;->c:Z

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lc;->a:F

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lc;->b:F

    return p0
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lc;->c:Z

    return-void
.end method

.method public final e(F)V
    .locals 0

    iput p1, p0, Lc;->a:F

    return-void
.end method

.method public final f(F)V
    .locals 0

    iput p1, p0, Lc;->b:F

    return-void
.end method
