.class public Le5/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Lu4/b;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lu4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/c$a;->a:Ljava/lang/Class;

    iput-object p2, p0, Le5/c$a;->b:Lu4/b;

    return-void
.end method


# virtual methods
.method final a()Lu4/b;
    .locals 0

    iget-object p0, p0, Le5/c$a;->b:Lu4/b;

    return-object p0
.end method

.method final b()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Le5/c$a;->a:Ljava/lang/Class;

    return-object p0
.end method
