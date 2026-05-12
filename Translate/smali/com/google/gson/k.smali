.class public final Lcom/google/gson/k;
.super Lcom/google/gson/i;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/gson/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/k;

    invoke-direct {v0}, Lcom/google/gson/k;-><init>()V

    sput-object v0, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/i;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/gson/k;

    return p0
.end method

.method public hashCode()I
    .locals 0

    const-class p0, Lcom/google/gson/k;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
