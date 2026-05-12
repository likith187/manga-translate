.class public final Lg9/c;
.super Lg9/f;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lg9/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg9/c;

    invoke-direct {v0}, Lg9/c;-><init>()V

    sput-object v0, Lg9/c;->INSTANCE:Lg9/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    sget v1, Lg9/l;->c:I

    sget v2, Lg9/l;->d:I

    sget-wide v3, Lg9/l;->e:J

    sget-object v5, Lg9/l;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lg9/f;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
