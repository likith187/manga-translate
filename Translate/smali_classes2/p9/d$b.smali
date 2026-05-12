.class public final Lp9/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/conscrypt/ConscryptHostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final INSTANCE:Lp9/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp9/d$b;

    invoke-direct {v0}, Lp9/d$b;-><init>()V

    sput-object v0, Lp9/d$b;->INSTANCE:Lp9/d$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
