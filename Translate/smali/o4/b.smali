.class final synthetic Lo4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/g;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lo4/g;
    .locals 1

    new-instance v0, Lo4/b;

    invoke-direct {v0, p0}, Lo4/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Lo4/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo4/b;->a:Ljava/lang/Object;

    invoke-static {p0, p1}, Lo4/c;->k(Ljava/lang/Object;Lo4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
