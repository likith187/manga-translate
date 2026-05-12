.class public final Lb0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Lb0/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lb0/a;->e(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Lb0/a$a;->c(Z)V

    return-void
.end method

.method private static b(Z)Lb0/a;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lb0/a;->h:Lb0/a;

    goto :goto_0

    :cond_0
    sget-object p0, Lb0/a;->g:Lb0/a;

    :goto_0
    return-object p0
.end method

.method private c(Z)V
    .locals 0

    iput-boolean p1, p0, Lb0/a$a;->a:Z

    sget-object p1, Lb0/a;->d:Lb0/c;

    iput-object p1, p0, Lb0/a$a;->c:Lb0/c;

    const/4 p1, 0x2

    iput p1, p0, Lb0/a$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Lb0/a;
    .locals 3

    iget v0, p0, Lb0/a$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb0/a$a;->c:Lb0/c;

    sget-object v1, Lb0/a;->d:Lb0/c;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lb0/a$a;->a:Z

    invoke-static {p0}, Lb0/a$a;->b(Z)Lb0/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lb0/a;

    iget-boolean v1, p0, Lb0/a$a;->a:Z

    iget v2, p0, Lb0/a$a;->b:I

    iget-object p0, p0, Lb0/a$a;->c:Lb0/c;

    invoke-direct {v0, v1, v2, p0}, Lb0/a;-><init>(ZILb0/c;)V

    return-object v0
.end method
