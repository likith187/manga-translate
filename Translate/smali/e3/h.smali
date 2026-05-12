.class final synthetic Le3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/b$a;


# instance fields
.field private final a:Lf3/c;


# direct methods
.method private constructor <init>(Lf3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/h;->a:Lf3/c;

    return-void
.end method

.method public static a(Lf3/c;)Lg3/b$a;
    .locals 1

    new-instance v0, Le3/h;

    invoke-direct {v0, p0}, Le3/h;-><init>(Lf3/c;)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le3/h;->a:Lf3/c;

    invoke-interface {p0}, Lf3/c;->n()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
