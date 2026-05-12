.class public final Lm2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lm2/a;

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm2/a;

    invoke-direct {v0}, Lm2/a;-><init>()V

    sput-object v0, Lm2/a;->INSTANCE:Lm2/a;

    const-string v0, "result"

    sput-object v0, Lm2/a;->a:Ljava/lang/String;

    const-string v0, "resultCode"

    sput-object v0, Lm2/a;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    sget-object p0, Lm2/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    sget-object p0, Lm2/a;->b:Ljava/lang/String;

    return-object p0
.end method
