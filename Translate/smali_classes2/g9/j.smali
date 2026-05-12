.class final Lg9/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg9/i;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg9/j;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lg9/j;->a:I

    return p0
.end method
