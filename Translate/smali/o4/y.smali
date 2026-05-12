.class final synthetic Lo4/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu4/b;


# static fields
.field private static final a:Lo4/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo4/y;

    invoke-direct {v0}, Lo4/y;-><init>()V

    sput-object v0, Lo4/y;->a:Lo4/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lu4/b;
    .locals 1

    sget-object v0, Lo4/y;->a:Lo4/y;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lo4/z;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
