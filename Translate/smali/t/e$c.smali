.class public final Lt/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:[Lt/e$d;


# direct methods
.method public constructor <init>([Lt/e$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/e$c;->a:[Lt/e$d;

    return-void
.end method


# virtual methods
.method public a()[Lt/e$d;
    .locals 0

    iget-object p0, p0, Lt/e$c;->a:[Lt/e$d;

    return-object p0
.end method
