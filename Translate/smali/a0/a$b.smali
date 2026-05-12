.class La0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La0/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La0/g$c;

.field final synthetic b:I

.field final synthetic c:La0/a;


# direct methods
.method constructor <init>(La0/a;La0/g$c;I)V
    .locals 0

    iput-object p1, p0, La0/a$b;->c:La0/a;

    iput-object p2, p0, La0/a$b;->a:La0/g$c;

    iput p3, p0, La0/a$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, La0/a$b;->a:La0/g$c;

    iget p0, p0, La0/a$b;->b:I

    invoke-virtual {v0, p0}, La0/g$c;->a(I)V

    return-void
.end method
