.class public Lh6/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh6/h$a;
    }
.end annotation


# instance fields
.field private final a:Lh6/h$a;

.field private final b:Lg6/h;

.field private final c:Lg6/d;

.field private final d:Z


# direct methods
.method public constructor <init>(Lh6/h$a;Lg6/h;Lg6/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/h;->a:Lh6/h$a;

    iput-object p2, p0, Lh6/h;->b:Lg6/h;

    iput-object p3, p0, Lh6/h;->c:Lg6/d;

    iput-boolean p4, p0, Lh6/h;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lh6/h$a;
    .locals 0

    iget-object p0, p0, Lh6/h;->a:Lh6/h$a;

    return-object p0
.end method

.method public b()Lg6/h;
    .locals 0

    iget-object p0, p0, Lh6/h;->b:Lg6/h;

    return-object p0
.end method

.method public c()Lg6/d;
    .locals 0

    iget-object p0, p0, Lh6/h;->c:Lg6/d;

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lh6/h;->d:Z

    return p0
.end method
