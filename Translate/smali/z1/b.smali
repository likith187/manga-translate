.class public final Lz1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lz1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/b;

    invoke-direct {v0}, Lz1/b;-><init>()V

    sput-object v0, Lz1/b;->INSTANCE:Lz1/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;ILjava/util/ArrayList;)Lz1/c;
    .locals 0

    invoke-static {}, Lx1/h0;->x()Lx1/h0;

    move-result-object p0

    return-object p0
.end method
