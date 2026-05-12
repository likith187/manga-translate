.class final Lz8/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz8/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lz8/c$a$a;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz8/c$a$a;

    invoke-direct {v0}, Lz8/c$a$a;-><init>()V

    sput-object v0, Lz8/c$a$a;->INSTANCE:Lz8/c$a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lz8/c;->Default:Lz8/c$a;

    return-object p0
.end method
