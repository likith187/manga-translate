.class final synthetic Lo4/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu4/a;


# static fields
.field private static final a:Lo4/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo4/x;

    invoke-direct {v0}, Lo4/x;-><init>()V

    sput-object v0, Lo4/x;->a:Lo4/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lu4/a;
    .locals 1

    sget-object v0, Lo4/x;->a:Lo4/x;

    return-object v0
.end method


# virtual methods
.method public a(Lu4/b;)V
    .locals 0

    invoke-static {p1}, Lo4/z;->b(Lu4/b;)V

    return-void
.end method
