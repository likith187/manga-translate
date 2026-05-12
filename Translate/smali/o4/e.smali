.class final synthetic Lo4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu4/b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lu4/b;
    .locals 1

    new-instance v0, Lo4/e;

    invoke-direct {v0, p0}, Lo4/e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo4/e;->a:Ljava/lang/String;

    invoke-static {p0}, Lo4/f;->d(Ljava/lang/String;)Lo4/h;

    move-result-object p0

    return-object p0
.end method
