.class final synthetic Lo4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu4/b;


# static fields
.field private static final a:Lo4/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo4/l;

    invoke-direct {v0}, Lo4/l;-><init>()V

    sput-object v0, Lo4/l;->a:Lo4/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lu4/b;
    .locals 1

    sget-object v0, Lo4/l;->a:Lo4/l;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
