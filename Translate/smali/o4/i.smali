.class final synthetic Lo4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu4/b;


# instance fields
.field private final a:Lo4/m;

.field private final b:Lo4/c;


# direct methods
.method private constructor <init>(Lo4/m;Lo4/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/i;->a:Lo4/m;

    iput-object p2, p0, Lo4/i;->b:Lo4/c;

    return-void
.end method

.method public static a(Lo4/m;Lo4/c;)Lu4/b;
    .locals 1

    new-instance v0, Lo4/i;

    invoke-direct {v0, p0, p1}, Lo4/i;-><init>(Lo4/m;Lo4/c;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo4/i;->a:Lo4/m;

    iget-object p0, p0, Lo4/i;->b:Lo4/c;

    invoke-static {v0, p0}, Lo4/m;->j(Lo4/m;Lo4/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
